@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md and GALLERY.md). Pass: wsl-deps.sanctuary.map, the Sanctuaire
  # de Nelim (fixture Nelims-tribe). Gallery order on the page: 0 Preview, 1 fox, 2 horse, 3 husky, 4 cow.
  #
  # The story. A morning walk of Nelim along the river, in the five minutes' steps of a magazine report. She is the
  # protagonist of every frame (the only colonist of the fixture; her face, trousers and brown eyes come with it). She
  # brings four animals out into the morning light, each in pieces dyed against its own coat, and each one stands facing
  # the camera: nothing else is posed, the animals are the subject, Nelim is the keeper at their side.
  #   Time: 09:00 then +5 game minutes per picture (setup 60 ticks, then 0, 208, 417, 625 ticks), clear weather. The fixture
  #   starts at noon, so the hour is set once per scenario. Only day animals, awake in the morning.
  #
  # Shot plan, one line per image: place, moment, subject, composition, what the living scene does, what it says.
  #   1 flower-garden, 09:00: the arctic fox, white against the orange and red flowers, red leather collar and blue
  #     helmet; Nelim kneels-height beside it on the path (standing, east of it); fox faces South; wide enough for the
  #     flower field behind; says: the two ends of the palette on the smallest animal.
  #   2 river-bridge, 09:05: the horse in purple barding, gold chanfron, green saddle, on the wooden bridge over the
  #     blue river; Nelim walks at its head (west of it, facing East); horse faces South; says: a whole set on a large animal.
  #   3 hut, 09:10: the husky in a pink bow collar at the door of the tea hut; Nelim at the door, facing East;
  #     husky faces South; the warm wood and the grey coat; says: a collar is enough.
  #   4 bare-clearing, 09:15: the cow in a teal scarf on the bared earth, flowers at the edges; Nelim at its side;
  #     cow faces South; says: the same piece reaches the big animals too.
  # Each scenario is one image: it reloads the save, sets the hour and weather, frames its own corner of the shared place,
  # photographs, and the interface comes back. Animals living in the place are removed first; time is paused once the
  # subject stands. A green run proves a picture was taken, not that it is worth keeping: open every capture.

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: Animal Apparel Collars: gallery 1, the fox in a red collar and a blue helmet in the flower garden
    Given I set the hour to 9
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (155, 104)
    And Nelim's Pickle Tools: "GalleryFox" faces South
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Nelim's Pickle Tools: "Nelim" stands at (152, 104) facing East
    And Nelim's Sanctuary: Nelim has her own face
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Nelim's Pickle Tools: I frame the animal "GalleryFox" at zoom 3
    When Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, the horse in barding, helmet and saddle on the bridge
    Given I set the hour to 9
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (136, 124)
    And Nelim's Pickle Tools: "GalleryHorse" faces South
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" stands at (133, 124) facing East
    And Nelim's Sanctuary: Nelim has her own face
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: I frame the animal "GalleryHorse" at zoom 4
    When Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 3, the husky in a pink bow collar at the door of the hut
    Given I set the hour to 9
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 477 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (141, 67)
    And Nelim's Pickle Tools: "GalleryHusky" faces South
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    And Nelim's Pickle Tools: "Nelim" stands at (138, 67) facing East
    And Nelim's Sanctuary: Nelim has her own face
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_dogbow"
    When Nelim's Pickle Tools: I frame the animal "GalleryHusky" at zoom 3
    When Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-husky"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 4, the cow in a teal scarf on the bared clearing
    Given I set the hour to 9
    And I set the weather to "Clear"
    And Nelim's Sanctuary: the vanometric cell of the sanctuary is hidden
    And Nelim's Sanctuary: the floor of the sanctuary "bare-clearing" is bared
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Cow" named "GalleryCow" stands at (196, 152)
    And Nelim's Pickle Tools: "GalleryCow" faces South
    And Animal Apparel Collars: "GalleryCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Nelim's Pickle Tools: "Nelim" stands at (192, 152) facing East
    And Nelim's Sanctuary: Nelim has her own face
    Then Animal Apparel Collars: the render tree of "GalleryCow" draws "Apparel_LargeAnimalScarf"
    When Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-cow"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged
