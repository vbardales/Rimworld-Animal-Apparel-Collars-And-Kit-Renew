@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md, GALLERY.md). Pass: wsl-deps.sanctuary.map, the Sanctuaire de
  # Nelim (fixture Nelims-tribe). Gallery order on the page: 0 Preview, 1 fox, 2 horse, 3 husky and cow, 4 the parade.
  #
  # The story. Market morning at the Sanctuary. Nelim, who looks after the animals, dresses her four companions for the
  # parade: she fits each one in the barn, then leads them out to the enclosure where the whole troop shows off.
  # Nelim is the protagonist of every frame: farm outfit (cream shirt, denim trousers, her usual bun), smile on her face.
  #   Time: 08:00, then +5 game minutes per picture (setup 60 ticks, then 0, 208, 417, 625 ticks), clear weather.
  #   Only day animals, all awake. Every animal wears pieces dyed against its coat, and faces the camera (South).
  #
  # Shot plan, one line per image: place, moment, subject, composition, what the living scene does, what it says.
  #   1 barn, 08:00: the arctic fox (white) on the straw, red leather collar and blue helmet; Nelim stands to its left
  #     facing it, smiling, as if she had just buckled the collar; tight on the fox (zoom 3); says: a collar and a helmet
  #     for the smallest animal.
  #   2 barn, 08:05: the pale horse, purple barding, gold chanfron, green saddle, on the straw; Nelim at its side facing
  #     it; zoom 4; says: a whole set for the biggest one (a pale coat so the three colours read).
  #   3 enclosure-south, 08:10: the husky in a pink bow collar and the cow in a teal scarf, side by side on the soil of the
  #     enclosure, Nelim between them facing the camera; frame of about 11 by 7 cells; says: the same gear fits any size.
  #   4 enclosure-south, 08:15: the parade, the fox, the husky, the cow and the horse in a row, all dressed, Nelim in front
  #     of them facing the camera; frame of about 17 by 9 cells; says: the whole troop is ready.
  # Each scenario is one image: it reloads the save, sets the hour and weather, frames its own corner of the shared place,
  # photographs, and the interface comes back. Animals living in the place are removed first; time is paused once the
  # subject stands. A green run proves a picture was taken, not that it is worth keeping: open every capture.

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: Animal Apparel Collars: gallery 1, the fox in a red collar and a blue helmet in the barn
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (203, 236)
    And Nelim's Pickle Tools: "GalleryFox" faces South
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" stands at (200, 236) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Nelim's Pickle Tools: I frame the animal "GalleryFox" at zoom 3
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, the pale horse in barding, helmet and saddle in the barn
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (203, 236)
    And Nelim's Pickle Tools: "GalleryHorse" faces South
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" stands at (199, 236) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: I frame the animal "GalleryHorse" at zoom 4
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 3, the husky and the cow dressed in the enclosure
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 477 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (148, 214)
    And Animal Apparel Collars: a tame "Cow" named "GalleryCow" stands at (154, 214)
    And Nelim's Pickle Tools: "GalleryHusky" faces South
    And Nelim's Pickle Tools: "GalleryCow" faces South
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    And Animal Apparel Collars: "GalleryCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" stands at (151, 214) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_dogbow"
    And Animal Apparel Collars: the render tree of "GalleryCow" draws "Apparel_LargeAnimalScarf"
    When Nelim's Pickle Tools: I frame the rectangle from (146, 211) to (156, 217)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-husky-cow"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 4, the parade of the four dressed animals
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Fox_Arctic" named "ParadeFox" stands at (144, 216)
    And Animal Apparel Collars: a tame "Husky" named "ParadeHusky" stands at (148, 216)
    And Animal Apparel Collars: a tame "Cow" named "ParadeCow" stands at (152, 216)
    And Animal Apparel Collars: a tame "Horse" named "ParadeHorse" stands at (157, 216)
    And Nelim's Pickle Tools: "ParadeFox" faces South
    And Nelim's Pickle Tools: "ParadeHusky" faces South
    And Nelim's Pickle Tools: "ParadeCow" faces South
    And Nelim's Pickle Tools: "ParadeHorse" faces South
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    And Animal Apparel Collars: "ParadeCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_dogbow"
    And Animal Apparel Collars: the render tree of "ParadeCow" draws "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: I frame the rectangle from (142, 210) to (159, 219)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-parade"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged
