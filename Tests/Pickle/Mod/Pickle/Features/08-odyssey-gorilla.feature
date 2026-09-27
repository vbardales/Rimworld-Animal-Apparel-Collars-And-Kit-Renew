@requires:VanillaExpanded.VanillaAnimalsExpanded
Feature: Animal Apparel Collars and Kit Renew, the VAE gorilla and Odyssey

  # Scenario F (gorilla regression). Passes: avec-animaux (Odyssey present) and
  # avec-animaux-sans-odyssey. Play the first with the filter 'Animal Apparel: Collars and Kit Renew - Pickle tests,!@sans-odyssey'
  # and the second with no exclusion: the @sans-odyssey scenario asserts Odyssey is absent and would fail otherwise.

  @sans-odyssey
  Scenario: Animal Apparel Collars: without Odyssey the VAE gorilla exists and wears the diaper
    Given mod "ludeon.rimworld.odyssey" is not loaded
    And the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "AEXP_Gorilla" named "AEXP_Gorilla" exists near the colony
    When Animal Apparel Collars: "AEXP_Gorilla" is dressed in "diaper"
    Then Animal Apparel Collars: "AEXP_Gorilla" is wearing "diaper"
    And no errors were logged

  @requires:ludeon.rimworld.odyssey
  Scenario: Animal Apparel Collars: with Odyssey the missing gorilla raises no reference error
    Given the save "test-colony" is loaded
    When I wait 1800 ticks
    Then no def "AEXP_Gorilla" exists
    And no errors were logged
