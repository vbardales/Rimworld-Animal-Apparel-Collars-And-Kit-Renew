@requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, with Vanilla Expanded Framework

  # Pass avec-vef. Not asserted here: that a pack fires. It needs a hostile, a drafted handler
  # and combat steps; see TESTING.md, "Not automated".


  @review
  Scenario: Animal Apparel Collars: a muffalo carries a turret pack
    Given the save "test-colony" is loaded
    And I spawn a "Muffalo" pawn at (60, 60)
    When I dress "Muffalo" in "ATP_Apparel_LargeTurret"
    Then "Muffalo" is wearing "ATP_Apparel_LargeTurret"
    And no errors were logged
