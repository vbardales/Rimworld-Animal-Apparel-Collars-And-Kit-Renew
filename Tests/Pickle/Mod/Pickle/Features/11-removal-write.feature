@requires:nelim.animalapparelcollarsandkit.pickleremoval
Feature: Animal Apparel Collars and Kit Renew, save with the mod for removal

  # Launch 1 of the removal chain (pass wsl-deps.removal.map): dress several animals across several def files,
  # save, hand the saved game to the removal companion. Launch 2 is ../../../Removal/Mod/.../removal-check.feature.

  Scenario: save with worn gear, check, hand over
    Given the save "test-colony" is loaded
    And game speed is paused
    And Animal Apparel Collars: a tame "Fox_Arctic" named "RemFox" exists near the colony
    And Animal Apparel Collars: a tame "Cow" named "RemCow" exists near the colony
    And Animal Apparel Collars: a tame "Horse" named "RemHorse" exists near the colony
    When Animal Apparel Collars: "RemFox" is dressed in "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "RemFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet"
    And Animal Apparel Collars: "RemCow" is dressed in "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: "RemHorse" is dressed in "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: "RemHorse" is dressed in "Apparel_MedievalHorseSaddle"
    Then Animal Apparel Collars: "RemHorse" is wearing "Apparel_MedievalHorseSaddle"
    When Animal Apparel Collars: the game is saved as "aack-removal-with-mod"
    And Animal Apparel Collars: the saved game "aack-removal-with-mod" is handed to the mod "nelim.animalapparelcollarsandkit.pickleremoval"
    Then no errors were logged
