@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, framework alone

  # Pass sans-facultatifs. What only a running game shows: the AnimalNeck slot accepts a
  # collar next to body armour, and the restructured textures resolve when the animal is drawn
  # ("Failed to find graphic for" is logged at draw time, and no offline test can see it).

  # Apparel_LargeAnimalClothes and the power armour (Animal Equipment) are full-body suits: their
  # own bodyPartGroups include AnimalBody, AnimalNeck AND AnimalLegs, so they legitimately conflict
  # with a separate neck collar - Pawn_ApparelTracker.Wear correctly drops the older piece, as it
  # does in play. Found on 2026-09-27: the first version of this scenario dressed a husky in the
  # collar then Apparel_LargeAnimalClothes and expected both to stay; the collar was silently
  # dropped, which is the game's documented, correct behaviour for two conflicting body groups, not
  # a mod defect. The pairing that genuinely does not conflict, ships without VEF and is what
  # TESTING.md scenario B calls "a helmet and a collar together", is a collar (AnimalNeck) with the
  # power armour helmet (AnimalHead only): Fox_Arctic is the only PawnKindDef both defs share.
  @review
  Scenario: Animal Apparel Collars: a fox wears a collar and a helmet at once
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Fox_Arctic" named "Fox_Arctic" exists at (60, 60)
    When Animal Apparel Collars: "Fox_Arctic" is dressed in "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Fox_Arctic" is dressed in "Apparel_SmallAnimalPowerArmorHelmet"
    Then Animal Apparel Collars: "Fox_Arctic" is wearing "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Fox_Arctic" is wearing "Apparel_SmallAnimalPowerArmorHelmet"
    And Animal Apparel Collars: "Fox_Arctic" apparel covers "AnimalNeck"
    And Animal Apparel Collars: "Fox_Arctic" apparel covers "AnimalHead"
    When I move the camera to (60, 60)
    And I take a screenshot "fox-collar-and-helmet"
    Then no errors were logged

  Scenario: Animal Apparel Collars: a full-body suit legitimately replaces the collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Husky" exists at (60, 60)
    When Animal Apparel Collars: "Husky" is dressed in "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_LargeAnimalClothes"
    Then Animal Apparel Collars: "Husky" is wearing "Apparel_LargeAnimalClothes"
    And no errors were logged

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
