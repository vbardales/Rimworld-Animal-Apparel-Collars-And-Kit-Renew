@requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, with Vanilla Expanded Framework

  # Pass avec-vef.

  @review
  Scenario: Animal Apparel Collars: a muffalo carries a turret pack
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Muffalo" named "Muffalo" exists near the colony
    When Animal Apparel Collars: "Muffalo" is dressed in "ATP_Apparel_LargeTurret"
    Then Animal Apparel Collars: "Muffalo" is wearing "ATP_Apparel_LargeTurret"
    When Animal Apparel Collars: the camera is centered on "Muffalo"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "Muffalo"
    When I take a screenshot "muffalo-turret-pack"
    Then no errors were logged

  # Scenario E: the pack must actually fire, not just wear. MVCF's own animal-AI decision to open fire is
  # not driven here (that would need the animal drafted and a real threat scan, which "on ne teste pas le
  # jeu" excludes); instead the verb is called directly through MVCF's Comp_VerbGiver/VerbTracker, the same
  # objects the game's own AI would call, at a real hostile target. Green means the pack's verb, once given
  # a target, deals real damage - not that a muffalo decides to use it unprompted.
  Scenario: Animal Apparel Collars: a muffalo's turret pack deals real damage to a hostile target
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Muffalo" named "Gunner" exists near the colony
    And Animal Apparel Collars: a hostile "Thrumbo" named "Target" exists near the colony
    When Animal Apparel Collars: "Gunner" is dressed in "ATP_Apparel_LargeTurret"
    And Animal Apparel Collars: "Gunner" fires its turret pack at "Target"
    And Animal Apparel Collars: I let 300 ticks pass
    Then Animal Apparel Collars: "Target" health is below 100 percent
    And no errors were logged
