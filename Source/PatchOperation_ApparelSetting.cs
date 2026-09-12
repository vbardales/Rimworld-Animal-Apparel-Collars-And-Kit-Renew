using System.Collections.Generic;
using System.Xml;
using Verse;

namespace AnimalApparelCollarsAndKit
{
    // Deliberately not a VEF togglable operation: VEF must not create duplicate English controls.
    public sealed class PatchOperation_ApparelSetting : PatchOperation
    {
        public ApparelOption option;
        public List<string> mods = new List<string>();
        public List<PatchOperation> operations = new List<PatchOperation>();

        protected override bool ApplyWorker(XmlDocument xml)
        {
            foreach (string mod in mods)
                if (!ModLister.HasActiveModWithName(mod)) return true;
            if (!ApparelSettingsMod.Settings.Get(option)) return true;
            foreach (PatchOperation operation in operations)
                if (!operation.Apply(xml)) return false;
            return true;
        }
    }
}
