@requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, settings through Mod options

  # MOD_SETTINGS.md section 2 and AUDIT 8.h: the primary route (Mod options, then the mod's name) works without RIMMSQOL.
  # Pass avec-vef (the settings assembly lives in the VEF-gated folder). One run per language (-Language English, -Language French):
  # the page opens, draws its controls without an error, and closes. The option values and their persistence are asserted offline
  # (Settings.Tests, 30 assertions on the real VEF assemblies); this scenario proves the page exists and opens in the game.

  Scenario: Animal Apparel Collars: the settings page is listed under the mod name, opens, and closes without an error
    Given the save "test-colony" is loaded
    Then Animal Apparel Collars: Mod options lists a page named after this mod
    When Animal Apparel Collars: the Mod options page of this mod is opened
    Then Animal Apparel Collars: the Mod options page of this mod is open
    And no errors were logged
    When Animal Apparel Collars: the Mod options page of this mod is closed
    Then no errors were logged
