@requires:nelim.pickletools.screenshotstudio
Feature: Animal Apparel Collars and Kit Renew, a reloaded animal is still drawn with its collar

  The capture half of 10-save-reload, in its own feature so the non-capture scenario still runs on a pass without ScreenshotStudio (PiT, 2026-11-16).

  @review
  Scenario: Animal Apparel Collars: a reloaded animal is still drawn with its collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "SavedHusky" exists near the colony
    When Animal Apparel Collars: "SavedHusky" is dressed in "Apparel_studdeddogcollar" dyed "#2060d0"
    And I save and reload
    Then Animal Apparel Collars: "SavedHusky" is wearing "Apparel_studdeddogcollar"
    When Animal Apparel Collars: the camera is framed tight on "SavedHusky"
    Given Nelim's Pickle Tools: the camera orthographic size is held at 2.5
    Then Animal Apparel Collars: the camera can see "SavedHusky"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "husky-collar-after-reload"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged
