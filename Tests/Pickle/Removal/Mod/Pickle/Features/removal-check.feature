Feature: A game saved with Animal Apparel Collars and Kit Renew, loaded without it

  # Scenario H of TESTING.md. About.xml promises: "Removing it mid-game deletes anything crafted from it,
  # like any content mod". What matters is what comes after RimWorld's missing-def handling: the colony
  # runs, the animals are fine, and the log does not fill with errors about the vanished items.
  # Launch 2 of a chain (see ../../README.md): the mod and its test companion are taken out of the list.

  Scenario: the save loads and runs without the mod
    Given mod "nelim.animalapparelcollarsandkit" is not loaded
    And the save "aack-removal-with-mod" is loaded
    And game speed is fast
    When I wait 250 ticks
    Then no errors were logged
    And the engine is alive
    When I save and reload as "aack-removal-without-mod"
    Then no errors were logged
    And the engine is alive
