@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.colonistrace @requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md, GALLERY.md). Pass: wsl-deps.sanctuary.map, the Sanctuaire de
  # Nelim (fixture Nelims-tribe) with Vanilla Expanded Framework (the turret packs and the settings page need it).
  # Gallery order on the page: 0 Preview, 1 fox, 2 horse, 3 grizzly, 4 goat, 5 turret pack (three frames, best kept), 6 parade, 7 settings.
  #
  # The story. Market morning at the Sanctuary. Nelim, who looks after the animals, gets her troop ready for the market
  # parade: she picks a collar for the fox in the barn, harnesses the horse on the cream square, changes the grizzly in
  # the hall, mails the goat in the clearing, then a wolf comes to the enclosure and the cow's turret pack answers; the
  # intruder gone, the whole troop parades out. The last frame is the mod's settings page.
  # Nelim is the protagonist of every animal frame: cream shirt, denim trousers, her usual bun, a smile on her face; she
  # puts on a brown hat for the two outdoor frames of the horse and the parade. In each frame she holds the piece she is
  # about to fit (a carried item), so the picture reads as an action, not as a pose.
  #   Time: 08:00, then +5 game minutes per picture (setup 60 ticks, then 0, 208, 417, 625, 833, 1042 ticks), clear weather.
  #   Only day animals, all awake. Every piece is dyed against the coat it sits on. Animals face the camera (South) except
  #   the horse and the parade, seen in profile (East) so the barding and the saddle read.
  #
  # Shot plan, one line per image: place, moment, subject, composition, what the living scene does, what it says.
  #   1 barn, 08:00: the arctic fox on the straw, red leather collar and blue helmet, facing the camera; Nelim at its left
  #     holds a studded collar, deciding on the next one; tight on the fox (zoom 3); says: collars and a helmet fit even
  #     the smallest animal.
  #   2 calm-zone (the cream square), 08:05: the pale horse in profile, purple barding, gold chanfron, green saddle; Nelim in
  #     her hat faces it holding the bridle; frame of 11 by 9 cells on a plain cream ground; says: a full set for the
  #     biggest one, riding tack included.
  #   3 sofa-corner, 08:10: an adult grizzly in a pale blue diaper (the only art the diaper has is for adults) seated in the
  #     pink corner, facing the camera, two lit torches either side; Nelim beside it holds a spare diaper; frame of about 13
  #     by 7 cells; says: the diaper is for the big ones too.
  #   4 bare-clearing, 08:15: the goat in steel goat mail among daylilies on the bare earth, Nelim at its side; frame of 14
  #     by 9 cells; says: armour for the toughest climber.
  #   5 enclosure-south, 08:20: the cow in a turret pack fires at a wolf at the far end of the enclosure, three frames at 12, 24 and 36
  #     ticks after the shot (the pack is invisible by design, only the shot reads), Nelim watching with a bow in hand; frame of 17 by 10 cells; says: the troop can defend the farm.
  #   6 enclosure-south, 08:25: the parade in profile, fox, husky, cow, horse, staggered in depth, Nelim in the foreground
  #     in her hat facing the camera; frame of 24 by 10 cells; says: the whole troop heads for the market.
  #   7 window-backdrop-for-height: the Mod options page of this mod, a screenshot of the interface, no subtitle (studio presentation mode
  #     not enabled, it would hide the window).
  # Estimates before play (owner rule 2026-10-18, every scene at 4 or more): see the shotlist table of STATUS.md.
  # A staged cell that is not standable moves the animal to the nearest one (logged), so no scene fails on a cell.
  # Each scenario is one image: it reloads the save, sets the hour and weather, frames its own corner of the shared place,
  # photographs, and the interface comes back. Animals living in the place are removed first. A green run proves a picture
  # was taken, not that it is worth keeping: open every capture.

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
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (202, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (205, 237) fully grown
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" carries the item "Apparel_studdeddogcollar"
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

  Scenario: Animal Apparel Collars: gallery 2, the pale horse in barding, chanfron and saddle on the cream square
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (200, 187)
    And Nelim's Pickle Tools: "GalleryHorse" faces East
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (122, 84, 48)
    And Nelim's Pickle Tools: "Nelim" carries the item "Apparel_bridle"
    And Nelim's Pickle Tools: "Nelim" stands at (203, 187) facing West
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: I frame the rectangle from (195, 183) to (205, 191)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 3, the grizzly in a diaper in the hall
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "sofa-corner"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 477 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (184, 127)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (184, 127) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 127)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 127) is lit
    And Animal Apparel Collars: a tame "Bear_Grizzly" named "GalleryBear" stands at (189, 127)
    And Nelim's Pickle Tools: "GalleryBear" faces South
    And Animal Apparel Collars: "GalleryBear" is dressed in "diaper" dyed "#9ad0f0"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" carries the item "diaper"
    And Nelim's Pickle Tools: "Nelim" stands at (185, 126) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryBear" draws "diaper"
    When Nelim's Pickle Tools: I frame the rectangle from (182, 123) to (194, 129)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-bear"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 4, the goat in goat mail in the bare clearing
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Goat" named "GalleryGoat" stands at (197, 152)
    And Nelim's Pickle Tools: "GalleryGoat" faces South
    And Animal Apparel Collars: "GalleryGoat" is dressed in "Apparel_GoatMail"
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (200, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (199, 155) fully grown
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" stands at (193, 152) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "GalleryGoat" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: I frame the rectangle from (190, 148) to (203, 156)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-goat"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 5, the cow fires its turret pack at a wolf in the enclosure
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 833 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Animal Apparel Collars: a tame "Cow" named "GalleryCow" stands at (148, 216)
    And Nelim's Pickle Tools: "GalleryCow" faces East
    And Animal Apparel Collars: "GalleryCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Animal Apparel Collars: "GalleryCow" is dressed in "ATP_Apparel_LargeTurret"
    And Animal Apparel Collars: a hostile "Wolf_Timber" named "GalleryWolf" stands at (156, 216)
    And Nelim's Pickle Tools: "GalleryWolf" faces West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" carries the item "Bow_Short"
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: "GalleryCow" is wearing "ATP_Apparel_LargeTurret"
    When Nelim's Pickle Tools: I frame the rectangle from (144, 210) to (160, 219)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And Animal Apparel Collars: "GalleryCow" fires its turret pack at "GalleryWolf" where it stands
    And Nelim's Pickle Tools: I let 12 ticks pass
    And I take a screenshot "gallery-5a-turret"
    And Nelim's Pickle Tools: I let 12 ticks pass
    And I take a screenshot "gallery-5b-turret"
    And Nelim's Pickle Tools: I let 12 ticks pass
    And I take a screenshot "gallery-5c-turret"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 6, the parade of the troop heading for the market
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 1042 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Animal Apparel Collars: a tame "Fox_Arctic" named "ParadeFox" stands at (144, 217)
    And Nelim's Pickle Tools: "ParadeFox" faces East
    And Animal Apparel Collars: a tame "Husky" named "ParadeHusky" stands at (148, 215)
    And Nelim's Pickle Tools: "ParadeHusky" faces East
    And Animal Apparel Collars: a tame "Cow" named "ParadeCow" stands at (152, 217)
    And Nelim's Pickle Tools: "ParadeCow" faces East
    And Animal Apparel Collars: a tame "Horse" named "ParadeHorse" stands at (157, 215)
    And Nelim's Pickle Tools: "ParadeHorse" faces East
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    And Animal Apparel Collars: "ParadeCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (58, 92, 140)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (240, 228, 200)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (122, 84, 48)
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_dogbow"
    And Animal Apparel Collars: the render tree of "ParadeCow" draws "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: I frame the rectangle from (141, 211) to (164, 220)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-6-parade"
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 7, the settings page of the mod under Mod options
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "window-backdrop-for-height"
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    When Animal Apparel Collars: the Mod options page of this mod is opened
    Then Animal Apparel Collars: the Mod options page of this mod is open
    When I take a screenshot "gallery-7-settings"
    And Animal Apparel Collars: the Mod options page of this mod is closed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged
