using System.Collections.Generic;
using RimWorld;
using UnityEngine;
using VEF;
using Verse;

namespace AnimalApparelCollarsAndKit
{
    // The assembly itself is in the VEF-gated LoadFolders directory.
    public sealed class ApparelSettingsMod : Mod
    {
        public const string RelicsModName = "Vanilla Ideology Expanded - Relics and Artifacts";
        public static ApparelSettingsMod Instance { get; private set; }
        private Vector2 scroll;

        public ApparelSettingsMod(ModContentPack content) : base(content) { Instance = this; }
        public override string SettingsCategory() => Content.Name;

        public static ToggleSettings Settings
        {
            get
            {
                // VEF initializes these before XML patches; use its original storage and writer.
                if (VFEGlobal.settings.toggablePatch == null)
                    VFEGlobal.settings.toggablePatch = new Dictionary<string, bool>();
                return new ToggleSettings(VFEGlobal.settings.toggablePatch, VFEGlobal.settings.Write);
            }
        }

        public override void WriteSettings() => VFEGlobal.settings.Write();

        public override void DoSettingsWindowContents(Rect inRect)
        {
            var settings = Settings;
            bool relicsActive = ModLister.HasActiveModWithName(RelicsModName);
            float width = inRect.width - 20f;
            // Text-height-aware rows and scrolling also accommodate French and narrow windows.
            string[] keys = { "AA_CK_SettingsScope", "AA_CK_UniversalHelp", "AA_CK_RelicsHelp", "AA_CK_RelicsUnavailable" };
            float height = 260f;
            foreach (string key in keys) height += Text.CalcHeight(key.Translate(), width);
            var view = new Rect(0, 0, width, height);
            Widgets.BeginScrollView(inRect, ref scroll, view);
            var listing = new Listing_Standard();
            listing.Begin(view);
            listing.Label("AA_CK_SettingsScope".Translate());
            listing.GapLine();
            DrawOption(listing, settings, ApparelOption.DisableUniversalApparel,
                "AA_CK_Universal", "AA_CK_UniversalHelp", true);
            listing.GapLine();
            DrawOption(listing, settings, ApparelOption.ExcludeRelics,
                "AA_CK_Relics", "AA_CK_RelicsHelp", relicsActive);
            if (!relicsActive) listing.Label("AA_CK_RelicsUnavailable".Translate());
            listing.GapLine();
            if (listing.ButtonText("AA_CK_Reset".Translate())) settings.Reset();
            listing.End();
            Widgets.EndScrollView();
        }

        private static void DrawOption(Listing_Standard listing, ToggleSettings settings,
            ApparelOption option, string labelKey, string helpKey, bool enabled)
        {
            bool value = settings.Get(option);
            bool before = value;
            bool previousEnabled = GUI.enabled;
            GUI.enabled = previousEnabled && enabled;
            string label = labelKey.Translate();
            Rect row = listing.GetRect(System.Math.Max(30f, Text.CalcHeight(label, listing.ColumnWidth - 36f)));
            Widgets.CheckboxLabeled(row, label, ref value, disabled: !enabled || !previousEnabled);
            GUI.enabled = previousEnabled;
            if (enabled && before != value) settings.Set(option, value);
            listing.Label(helpKey.Translate());
        }
    }

    public sealed class MainButtonWorker_ApparelSettings : MainButtonWorker
    {
        // Inherit Visible: tools can change def.buttonVisible without fighting this worker.
        public override void Activate() => Find.WindowStack.Add(new Dialog_ModSettings(ApparelSettingsMod.Instance));
    }
}
