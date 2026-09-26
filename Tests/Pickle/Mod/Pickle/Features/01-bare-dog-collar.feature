@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, framework alone

  # Pass sans-facultatifs. What only a running game shows: the AnimalNeck slot accepts a
  # collar next to body armour, and the restructured textures resolve when the animal is drawn
  # ("Failed to find graphic for" is logged at draw time, and no offline test can see it).

  @review
  Scenario: Animal Apparel Collars: a husky wears a collar and a body piece at once
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Husky" exists at (60, 60)
    When Animal Apparel Collars: "Husky" is dressed in "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_LargeAnimalClothes"
    Then Animal Apparel Collars: "Husky" is wearing "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Husky" is wearing "Apparel_LargeAnimalClothes"
    And Animal Apparel Collars: "Husky" apparel covers "AnimalNeck"
    When I move the camera to (60, 60)
    And I take a screenshot "husky-collar-over-body"
    Then no errors were logged

  Scenario: Animal Apparel Collars: every dog collar is drawn without a missing graphic
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Husky" exists at (60, 60)
    When Animal Apparel Collars: "Husky" is dressed in "Apparel_dogbow"
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_studdeddogcollar"
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_shielddogcollar"
    And I take a screenshot "husky-all-collars"
    Then no errors were logged

  Scenario: Animal Apparel Collars: the diaper is worn and drawn
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Husky" exists at (60, 60)
    When Animal Apparel Collars: "Husky" is dressed in "diaper"
    Then Animal Apparel Collars: "Husky" is wearing "diaper"
    And no errors were logged

  Scenario: Animal Apparel Collars: an idle bare colony raises no error from this mod
    Given the save "test-colony" is loaded
    When I wait 1800 ticks
    Then no errors were logged
    And no warnings from mod "nelim.animalapparelcollarsandkitrenew"
