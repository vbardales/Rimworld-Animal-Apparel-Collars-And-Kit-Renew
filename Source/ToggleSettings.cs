using System;
using System.Collections.Generic;

namespace AnimalApparelCollarsAndKit
{
    public enum ApparelOption { DisableUniversalApparel, ExcludeRelics }

    // These are VEF's existing serialized identities, never displayed or translated.
    public sealed class ToggleSettings
    {
        public const string UniversalKey = "Disableuniversalanimalapparel(placeholderart):";
        public const string RelicsKey = "Animalapparelcannotbearelic:";
        private readonly IDictionary<string, bool> values;
        private readonly Action save;

        public ToggleSettings(IDictionary<string, bool> values, Action save)
        {
            this.values = values ?? throw new ArgumentNullException(nameof(values));
            this.save = save ?? throw new ArgumentNullException(nameof(save));
        }

        public static string Key(ApparelOption option)
        {
            switch (option)
            {
                case ApparelOption.DisableUniversalApparel: return UniversalKey;
                case ApparelOption.ExcludeRelics: return RelicsKey;
                default: throw new ArgumentOutOfRangeException(nameof(option));
            }
        }

        public bool Get(ApparelOption option) => values.TryGetValue(Key(option), out bool value)
            ? value : option == ApparelOption.ExcludeRelics;

        public void Set(ApparelOption option, bool value)
        {
            values[Key(option)] = value;
            save();
        }

        public void Reset()
        {
            values[UniversalKey] = false;
            values[RelicsKey] = true;
            save();
        }
    }
}
