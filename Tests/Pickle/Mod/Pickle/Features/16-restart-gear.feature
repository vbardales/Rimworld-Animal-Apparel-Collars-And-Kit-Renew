@requires:OskarPotocki.VanillaFactionsExpanded.Core
@requires:nelim.animalapparelcollarsandkit.pickleremoval
Feature: Animal Apparel Collars and Kit Renew, gear worn survives a real restart of the game

  # Scenario G, restart half (feature 10 is the in-process half). Pass restart, ONE request:
  #   -DepMap wsl-deps.restart.map -Filter '16-restart-gear::are worn and saved' -Then '16-restart-gear::are still worn'
  # Launch 1 dresses animals across several def files with a chosen material and quality, saves, and hands the save
  # to the companion's Pickle/Fixtures. Launch 2 is a new game process (def database rebuilt, render tree fresh):
  # it loads that save and checks identity, the turret pack's verb, the collar's render node and the log.
  # Not asserted: the draw order of the collar above the body piece (the render node exists with a resolved graphic).

  Scenario: Animal Apparel Collars: pieces are worn and saved for the restart
    Given the save "test-colony" is loaded
    And game speed is paused
    And Animal Apparel Collars: a tame "Fox_Arctic" named "RestFox" exists near the colony
    And Animal Apparel Collars: a tame "Cow" named "RestCow" exists near the colony
    And Animal Apparel Collars: a tame "Horse" named "RestHorse" exists near the colony
    And Animal Apparel Collars: a tame "Muffalo" named "RestMuffalo" exists near the colony
    When Animal Apparel Collars: "RestFox" is dressed in "Apparel_leatherdogcollar" made of "Leather_Plain" at quality Good
    And Animal Apparel Collars: "RestCow" is dressed in "Apparel_LargeAnimalScarf" made of "Cloth" at quality Normal
    And Animal Apparel Collars: "RestHorse" is dressed in "Apparel_MedievalHorsePlate" made of "Steel" at quality Excellent
    And Animal Apparel Collars: "RestHorse" is dressed in "Apparel_MedievalHorseSaddle" made of "Leather_Plain" at quality Poor
    And Animal Apparel Collars: "RestMuffalo" is dressed in "ATP_Apparel_LargeTurret"
    Then Animal Apparel Collars: "RestFox" is wearing "Apparel_leatherdogcollar" made of "Leather_Plain" at quality Good
    And Animal Apparel Collars: "RestHorse" is wearing "Apparel_MedievalHorseSaddle" made of "Leather_Plain" at quality Poor
    When Animal Apparel Collars: the game is saved as "aack-restart-gear"
    And Animal Apparel Collars: the saved game "aack-restart-gear" is handed to the mod "nelim.animalapparelcollarsandkit.pickleremoval"
    Then no errors were logged

  Scenario: Animal Apparel Collars: pieces are still worn after the restart
    Given the save "aack-restart-gear" is loaded
    And game speed is paused
    Then Animal Apparel Collars: "RestFox" is wearing "Apparel_leatherdogcollar" made of "Leather_Plain" at quality Good
    And Animal Apparel Collars: "RestCow" is wearing "Apparel_LargeAnimalScarf" made of "Cloth" at quality Normal
    And Animal Apparel Collars: "RestHorse" is wearing "Apparel_MedievalHorsePlate" made of "Steel" at quality Excellent
    And Animal Apparel Collars: "RestHorse" is wearing "Apparel_MedievalHorseSaddle" made of "Leather_Plain" at quality Poor
    And Animal Apparel Collars: "RestMuffalo" is wearing "ATP_Apparel_LargeTurret"
    And Animal Apparel Collars: the render tree of "RestFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "RestHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "RestHorse" draws "Apparel_MedievalHorseSaddle"
    Given Animal Apparel Collars: a hostile "Thrumbo" named "RestTarget" exists near the colony
    When Animal Apparel Collars: "RestMuffalo" fires its turret pack at "RestTarget"
    And Animal Apparel Collars: I let 300 ticks pass
    Then Animal Apparel Collars: "RestTarget" health is below 100 percent
    And no errors were logged
