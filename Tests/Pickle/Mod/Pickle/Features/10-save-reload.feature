Feature: Animal Apparel Collars and Kit Renew, worn apparel survives a save and reload

  # Scenario G, in-process half. `I save and reload` writes the running game, loads it straight back and
  # deletes the file (Pickle's own step), so it catches a broken ExposeData path: an animal that comes back
  # naked, an apparel that changes def, or an error logged while reading the save. It is NOT a restart of the
  # game: the def database is not rebuilt, so the render tree and the def-name lookups of a fresh process
  # are still untested (those need a two-launch chain and a save handed between them, not designed yet).
  # Draft written 2026-09-28 while the tree was frozen for queued requests; add it once they are read.

  Scenario: Animal Apparel Collars: collar and helmet are still worn after a save and reload
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Fox_Arctic" named "SavedFox" exists near the colony
    When Animal Apparel Collars: "SavedFox" is dressed in "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "SavedFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet"
    And I save and reload
    Then Animal Apparel Collars: "SavedFox" is wearing "Apparel_leatherdogcollar"
    And Animal Apparel Collars: "SavedFox" is wearing "Apparel_SmallAnimalPowerArmorHelmet"
    And no errors were logged

  @review
  Scenario: Animal Apparel Collars: a reloaded animal is still drawn with its collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "SavedHusky" exists near the colony
    When Animal Apparel Collars: "SavedHusky" is dressed in "Apparel_studdeddogcollar"
    And I save and reload
    And Animal Apparel Collars: the camera is centered on "SavedHusky"
    And I zoom all the way in
    Then Animal Apparel Collars: "SavedHusky" is wearing "Apparel_studdeddogcollar"
    When I take a screenshot "husky-collar-after-reload"
    Then no errors were logged
