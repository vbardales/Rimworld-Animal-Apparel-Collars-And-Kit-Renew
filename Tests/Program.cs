using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Xml;
using AnimalApparelCollarsAndKit;
using RimWorld;
using VEF;
using Verse;

internal static class Program
{
    private static int checks;
    private static int Main(string[] args)
    {
        string managed = args.Length > 0 ? args[0] : @"C:\Program Files (x86)\Steam\steamapps\common\RimWorld\RimWorldWin64_Data\Managed";
        string vef = args.Length > 1 ? args[1] : @"C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\2023507013\1.6\Assemblies";
        AppDomain.CurrentDomain.AssemblyResolve += (_, e) =>
        {
            foreach (string dir in new[] { managed, vef })
            {
                string path = Path.Combine(dir, new AssemblyName(e.Name).Name + ".dll");
                if (File.Exists(path)) return Assembly.LoadFrom(path);
            }
            return null;
        };
        try { Run(); Console.WriteLine($"PASS: {checks} settings assertions (real RimWorld/VEF assemblies; no game UI)."); return 0; }
        catch (Exception e) { Console.Error.WriteLine(e); return 1; }
    }

    private static void Check(bool condition, string name)
    {
        if (!condition) throw new Exception("FAIL: " + name);
        checks++;
    }

    [MethodImpl(MethodImplOptions.NoInlining)]
    private static void Run()
    {
        // The profiler reads game preferences, which do not exist in this console process.
        DeepProfiler.enabled = false;
        var values = new Dictionary<string, bool>();
        int writes = 0;
        var first = new ToggleSettings(values, () => writes++);
        Check(!first.Get(ApparelOption.DisableUniversalApparel), "new universal default");
        Check(first.Get(ApparelOption.ExcludeRelics), "new relic default");
        Check(values.Count == 0 && writes == 0, "reading defaults does not rewrite storage");
        Check(ToggleSettings.UniversalKey == "Disable universal animal apparel (placeholder art):".Replace(" ", ""), "legacy universal identity");
        Check(ToggleSettings.RelicsKey == "Animal apparel cannot be a relic:".Replace(" ", ""), "legacy relic identity");
        foreach (bool universal in new[] { false, true })
        foreach (bool relics in new[] { false, true })
        {
            values[ToggleSettings.UniversalKey] = universal;
            values[ToggleSettings.RelicsKey] = relics;
            var reopened = new ToggleSettings(values, () => writes++);
            Check(reopened.Get(ApparelOption.DisableUniversalApparel) == universal, "existing universal value");
            Check(reopened.Get(ApparelOption.ExcludeRelics) == relics, "existing relic value");
            first.Set(ApparelOption.DisableUniversalApparel, !universal);
            Check(reopened.Get(ApparelOption.DisableUniversalApparel) == !universal, "both routes share updated value");
        }
        values["unrelated-mod"] = true;
        first.Reset();
        Check(!first.Get(ApparelOption.DisableUniversalApparel) && first.Get(ApparelOption.ExcludeRelics), "reset both defaults");
        Check(values["unrelated-mod"] && writes == 5, "only owned keys changed, each operation saved once");
        values.Remove(ToggleSettings.UniversalKey);
        values[ToggleSettings.RelicsKey] = false;
        Check(!first.Get(ApparelOption.DisableUniversalApparel) && !first.Get(ApparelOption.ExcludeRelics), "partially populated legacy storage");

        // The adapter binds the actual installed VEF dictionary rather than copying it.
        VFEGlobal.settings = new VFEGlobalSettings { toggablePatch = values };
        Check(!ApparelSettingsMod.Settings.Get(ApparelOption.ExcludeRelics), "adapter reads VEF's existing false");
        Check(!typeof(VEF.PatchOperationToggableSequence).IsAssignableFrom(typeof(PatchOperation_ApparelSetting)), "VEF cannot add duplicate controls");
        Check(typeof(MainButtonWorker_ApparelSettings).GetProperty("Visible").DeclaringType == typeof(MainButtonWorker), "native revealable visibility inherited");
        // Executing Visible/ModLister requires Unity's ModsConfig initialization.
        // XML checks verify the native flag; actual reveal/hide remains a game scenario.

        // Execute the shipped custom dispatcher and real RimWorld patch operations.
        var xml = new XmlDocument();
        xml.LoadXml("<Defs><ThingDef><defName>keep</defName></ThingDef><ThingDef><defName>remove</defName></ThingDef></Defs>");
        var remove = new PatchOperationRemove();
        typeof(PatchOperationPathed).GetField("xpath", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic)
            .SetValue(remove, "/Defs/ThingDef[defName='remove']");
        var patch = new PatchOperation_ApparelSetting { option = ApparelOption.DisableUniversalApparel };
        patch.operations.Add(remove);
        Check(patch.Apply(xml) && xml.SelectNodes("/Defs/ThingDef").Count == 2, "disabled dispatcher preserves defs");
        values[ToggleSettings.UniversalKey] = true;
        Check(patch.Apply(xml) && xml.SelectNodes("/Defs/ThingDef").Count == 1, "enabled dispatcher removes selected def");
        Check(xml.SelectSingleNode("/Defs/ThingDef/defName").InnerText == "keep", "unrelated def preserved");
        Check(!patch.Apply(xml), "failed underlying patch is propagated");

        // Round-trip the real VEF serializer with RimWorld Scribe, in a disposable test file.
        // Never call ModSettings.Write here: it targets the user's actual Config directory.
        string temp = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "settings-roundtrip.xml");
        try
        {
            Scribe.saver.InitSaving(temp, "Settings");
            VFEGlobal.settings.ExposeData();
            Scribe.saver.FinalizeSaving();
            var restored = new VFEGlobalSettings();
            Scribe.loader.InitLoading(temp);
            restored.ExposeData();
            Scribe.loader.FinalizeLoading();
            Check(restored.toggablePatch[ToggleSettings.UniversalKey], "Scribe restart preserves universal");
            Check(!restored.toggablePatch[ToggleSettings.RelicsKey], "Scribe restart preserves relic false");
            Check(restored.toggablePatch["unrelated-mod"], "Scribe preserves other mods");
        }
        finally { if (File.Exists(temp)) File.Delete(temp); }
    }
}
