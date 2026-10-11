@requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, a setting survives a restart and takes effect

  # MOD_SETTINGS.md section 4, actual effect and persistence. Pass avec-vef, one request with -NoBatch:
  #   -Filter '15-settings-restart::is written' -Then '15-settings-restart::is read after the restart','15-settings-restart::are reset'
  # Launch 1 turns "disable the universal placeholder apparel" on (VEF's own settings file, as the Mod options page does).
  # Launch 2 (a new game process) reads it back and checks the five universal defs are gone (they are removed at load time).
  # Launch 3 resets both options to their defaults, so the shared WSL configuration is left clean even when launch 2 fails.

  Scenario: Animal Apparel Collars: the option disabling the universal apparel is written
    Given the save "test-colony" is loaded
    When Animal Apparel Collars: the option "DisableUniversalApparel" is set to true
    Then Animal Apparel Collars: the option "DisableUniversalApparel" reads true

  Scenario: Animal Apparel Collars: the option disabling the universal apparel is read after the restart and removes its defs
    Given the save "test-colony" is loaded
    Then Animal Apparel Collars: the option "DisableUniversalApparel" reads true
    And no def "Apparel_AnimalClothes" exists
    And no def "Apparel_AnimalScarf" exists
    And no def "Apparel_AnimalReins" exists
    And no def "Apparel_AnimalPowerArmor" exists
    And no def "Apparel_AnimalPowerArmorHelmet" exists

  Scenario: Animal Apparel Collars: the options are reset to their defaults
    Given the save "test-colony" is loaded
    When Animal Apparel Collars: the options are reset to their defaults
    Then Animal Apparel Collars: the option "DisableUniversalApparel" reads false
    And Animal Apparel Collars: the option "ExcludeRelics" reads true
