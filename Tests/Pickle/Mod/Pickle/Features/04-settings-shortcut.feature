@requires:MalteSchulze.RIMMSqol
Feature: Animal Apparel Collars and Kit Renew, hidden settings shortcut

  # Pass avec-rimmsqol only. On a clean configuration the shortcut is neither visible nor greyed.

  Scenario: Animal Apparel Collars: the shortcut is absent by default, then revealed, then hidden
    Given the save "test-colony" is loaded
    Then RIMMSQOL is ready to be driven
    And RIMMSQOL's own list of main buttons offers "AA_CK_Settings"
    And the main bar does not draw the button "AA_CK_Settings"
    When RIMMSQOL reveals the main button "AA_CK_Settings"
    Then the main bar draws the button "AA_CK_Settings"
    When the main bar's button "AA_CK_Settings" is activated
    Then no errors were logged
    When RIMMSQOL hides the main button "AA_CK_Settings"
    Then the main bar does not draw the button "AA_CK_Settings"
