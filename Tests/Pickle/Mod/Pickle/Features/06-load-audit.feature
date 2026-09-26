@requires:nelim.pickletools.loadaudit
Feature: Animal Apparel Collars and Kit Renew, clean load

  # Every pass whose map stages the LoadAudit tool: the load of this mod raises no error, warning or
  # unresolved reference attributable to it, and its keyed translations exist in the active language.
  # Run once per language (-Language English, -Language French).

  Scenario: Animal Apparel Collars: the load of the mod is clean
    Given the save "test-colony" is loaded
    Then Nelim's Pickle Tools: the load of the mod "nelim.animalapparelcollarsandkitrenew" is clean
