@requires:OskarPotocki.VanillaFactionsExpanded.Core
@requires:nelim.pickletools.screenshotstudio
Feature: Animal Apparel Collars and Kit Renew, a turret pack drawn on a muffalo

  The capture half of 03-turret-packs-vef, in its own feature so the damage scenario still runs on a pass without ScreenshotStudio (PiT, 2026-11-16). Pass avec-vef.

  @review
  Scenario: Animal Apparel Collars: a muffalo carries a turret pack
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Muffalo" named "Muffalo" exists near the colony
    When Animal Apparel Collars: "Muffalo" is dressed in "ATP_Apparel_LargeTurret"
    Then Animal Apparel Collars: "Muffalo" is wearing "ATP_Apparel_LargeTurret"
    When Animal Apparel Collars: the camera is centered on "Muffalo"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 5.0
    Then Animal Apparel Collars: the camera can see "Muffalo"
    And Animal Apparel Collars: MVCF draws the turret of "Muffalo"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "muffalo-turret-pack"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged
