@animal-apparel-collars @gallery
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Captures for the Steam page (PUBLISHING.md, pawn-capture rule of 2026-10-01): each piece is dyed in
  # a colour that stands out against the animal's coat, never the default tint, and the interface is
  # hidden so only the animal is in the frame. Every scenario asserts the state first, so the picture
  # shows what the mod adds. They prove nothing visual by being green: open each image.
  # Gallery order on the page: 1 fox, 2 horse, 3 husky, 4 muffalo (VEF pass only).

  @review
  Scenario: Animal Apparel Collars: gallery 1, a fox in a red collar and a helmet
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" exists near the colony
    When Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Animal Apparel Collars: the camera is centered on "GalleryFox"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "GalleryFox"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "gallery-1-fox"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: gallery 2, a horse in barding, helmet and saddle
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" exists near the colony
    When Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Animal Apparel Collars: the camera is centered on "GalleryHorse"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "GalleryHorse"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "gallery-2-horse"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: gallery 3, a husky in a bow collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" exists near the colony
    When Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_dogbow"
    When Animal Apparel Collars: the camera is centered on "GalleryHusky"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "GalleryHusky"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "gallery-3-husky"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged

  # Pass avec-vef.
  @review @requires:OskarPotocki.VanillaFactionsExpanded.Core
  Scenario: Animal Apparel Collars: gallery 4, a muffalo carrying a turret pack
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Muffalo" named "GalleryMuffalo" exists near the colony
    When Animal Apparel Collars: "GalleryMuffalo" is dressed in "ATP_Apparel_LargeTurret"
    Then Animal Apparel Collars: "GalleryMuffalo" is wearing "ATP_Apparel_LargeTurret"
    When Animal Apparel Collars: the camera is centered on "GalleryMuffalo"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "GalleryMuffalo"
    When Animal Apparel Collars: the interface is hidden for the capture
    And I take a screenshot "gallery-4-muffalo"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged
