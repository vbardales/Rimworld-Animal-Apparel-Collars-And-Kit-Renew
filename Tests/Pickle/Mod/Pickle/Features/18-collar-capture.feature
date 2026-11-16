@requires:nelim.pickletools.screenshotstudio
@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, collars drawn on a fox and a husky

  # The capture half of 01-bare-dog-collar, in its own feature so the non-capture scenarios still run on a pass without ScreenshotStudio (PiT, 2026-11-16).

  # Apparel_LargeAnimalClothes and the power armour (Animal Equipment) are full-body suits: their own
  # bodyPartGroups include AnimalBody, AnimalNeck AND AnimalLegs. Found on 2026-09-27 in two steps.
  # First (3a5c): a husky dressed in the collar then Apparel_LargeAnimalClothes ended up wearing only
  # the collar - the clothes never took. Second (6b5c, after a wrong first explanation blamed the
  # body-group conflict): decompiling RimWorld.Pawn_ApparelTracker.Wear shows the real cause is
  # earlier than that check. `Wear` calls `newApparel.PawnCanWear(pawn, ignoreGender: true)` BEFORE
  # ever looking at conflicts, logs a warning and returns immediately if it is false, leaving every
  # already-worn piece untouched - and `Apparel_LargeAnimalClothes` restricts by defName to LARGE
  # animals (Cougar, Cow, Elephant, Horse, Megaspider, Megasloth, Muffalo, Panther, Thrumbo), which a
  # husky is not. The body-group conflict was real but never reached: the species gate is what
  # actually fired. The pairing that genuinely does not conflict, ships without VEF and is what
  # TESTING.md scenario B calls "a helmet and a collar together", is a collar (AnimalNeck) with the
  # power armour helmet (AnimalHead only): Fox_Arctic is the only PawnKindDef both defs share, and it
  # is also in Apparel_SmallAnimalClothes' own list, which is what the second scenario below now uses
  # to show a genuine, body-group-driven replacement instead of a species refusal.
  @review
  Scenario: Animal Apparel Collars: a fox wears a collar and a helmet at once
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Fox_Arctic" named "Fox_Arctic" exists near the colony
    When Animal Apparel Collars: "Fox_Arctic" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "Fox_Arctic" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    Then Animal Apparel Collars: "Fox_Arctic" is wearing "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "Fox_Arctic" is wearing "Apparel_SmallAnimalPowerArmorHelmet"
    And Animal Apparel Collars: "Fox_Arctic" apparel covers "AnimalNeck"
    And Animal Apparel Collars: "Fox_Arctic" apparel covers "AnimalHead"
    And Animal Apparel Collars: the render tree of "Fox_Arctic" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "Fox_Arctic" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Animal Apparel Collars: the camera is framed tight on "Fox_Arctic"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 2.5
    Then Animal Apparel Collars: the camera can see "Fox_Arctic"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "fox-collar-and-helmet"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged

  # The three collars below all claim AnimalNeck on the OnSkin layer, like the leather one: they
  # are mutually exclusive by design (one neck, one collar), so dressing them one after another
  # without stripping between each would silently leave only the last one worn and only its
  # graphic checked - the other two would never be drawn or asserted. Strip between each.
  @review
  Scenario: Animal Apparel Collars: every dog collar is drawn without a missing graphic
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Husky" exists near the colony
    When Animal Apparel Collars: "Husky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    Then Animal Apparel Collars: "Husky" is wearing "Apparel_dogbow"
    And Animal Apparel Collars: the render tree of "Husky" draws "Apparel_dogbow"
    When Animal Apparel Collars: the camera is framed tight on "Husky"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 2.5
    Then Animal Apparel Collars: the camera can see "Husky"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "husky-dogbow"
    And Animal Apparel Collars: the interface is shown again
    And Animal Apparel Collars: "Husky" is stripped of its apparel
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_studdeddogcollar" dyed "#2060d0"
    Then Animal Apparel Collars: "Husky" is wearing "Apparel_studdeddogcollar"
    And Animal Apparel Collars: the render tree of "Husky" draws "Apparel_studdeddogcollar"
    When Animal Apparel Collars: the camera is framed tight on "Husky"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 2.5
    Then Animal Apparel Collars: the camera can see "Husky"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "husky-studdedcollar"
    And Animal Apparel Collars: the interface is shown again
    And Animal Apparel Collars: "Husky" is stripped of its apparel
    And Animal Apparel Collars: "Husky" is dressed in "Apparel_shielddogcollar" dyed "#e0b020"
    Then Animal Apparel Collars: "Husky" is wearing "Apparel_shielddogcollar"
    And Animal Apparel Collars: the render tree of "Husky" draws "Apparel_shielddogcollar"
    When Animal Apparel Collars: the camera is framed tight on "Husky"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 2.5
    Then Animal Apparel Collars: the camera can see "Husky"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "husky-shieldcollar"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged
