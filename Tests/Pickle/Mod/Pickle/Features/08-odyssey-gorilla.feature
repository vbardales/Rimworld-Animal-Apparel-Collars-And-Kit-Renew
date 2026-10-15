@requires:VanillaExpanded.VanillaAnimalsExpanded @requires:nelim.pickletools.loadaudit
Feature: Animal Apparel Collars and Kit Renew, the VAE gorilla and Odyssey

  # Scenario F (gorilla regression). Passes: avec-animaux (Odyssey present) and
  # avec-animaux-sans-odyssey. Play the first with the filter 'Animal Apparel: Collars and Kit Renew - Pickle tests,!@sans-odyssey'
  # and the second with no exclusion: the @sans-odyssey scenario asserts Odyssey is absent and would fail otherwise.

  # The fixture save test-colony was made with Odyssey: without the DLC it cannot load (PlanetLayerDef Orbit missing, then
  # WorldGrid.CreateRequiredLayers raises a NullReferenceException; ticket 1dbb, 2026-10-10). This scenario therefore loads no save:
  # the load log from game start is audited. The diaper worn by the gorilla is covered by the offline XML fixtures
  # (Tests/test-xml.ps1: the legacy tag removed when the animal Def is absent, kept when present).
  @sans-odyssey
  Scenario: Animal Apparel Collars: without Odyssey the VAE gorilla diaper tag raises no reference error
    Given mod "ludeon.rimworld.odyssey" is not loaded
    And mod "VanillaExpanded.VanillaAnimalsExpanded" is loaded
    Then Nelim's Pickle Tools: the load of the mod "nelim.animalapparelcollarsandkit" is clean

  @requires:ludeon.rimworld.odyssey
  Scenario: Animal Apparel Collars: with Odyssey the missing gorilla raises no reference error
    Given the save "test-colony" is loaded
    When Animal Apparel Collars: I let 1800 ticks pass
    Then no def "AEXP_Gorilla" exists
    And no errors were logged
