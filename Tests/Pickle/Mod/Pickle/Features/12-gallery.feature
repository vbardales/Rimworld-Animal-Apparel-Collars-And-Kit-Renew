@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.colonistrace @requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md, GALLERY.md "Shotlist : critères d'une scène à 4/5", rules of 2026-10-23).
  # Pass: wsl-deps.sanctuary.map (Sanctuaire de Nelim, fixture Nelims-tribe) with Vanilla Expanded Framework (settings page).
  # Shotlist v6 with scores and the director's remarks: STATUS.md, section "Shotlist v6". Gallery order: 0 Preview, 1 fox,
  # 2 horse, 3 grizzly, 4 goat, 5 husky, 6 parade, 7 settings (interface, set aside).
  #
  # THE STORY. One clear market morning at the Sanctuary. Nelim dressed at dawn and keeps ONE outfit all morning (GALLERY.md d,
  # 2026-10-23): mustard shirt (214, 168, 64), brown trousers (96, 72, 48), olive jacket (92, 110, 70), hair Ponytails dark brown
  # (90, 58, 32), no hat. Only her expression and what she holds change. She gets her troop ready for the market parade:
  # 08:00 in the barn the fox's collar; 08:05 among the statues the horse; 08:10 in the hall the grizzly asleep by the sofa;
  # 08:15 in the clearing the goat's mail; 08:20 in the enclosure the husky trots to her in armour; 08:25 the troop follows her out.
  # Time: start hour 8 in every scenario, then a cumulative wait (setup 60 ticks, then +208 per image: 60, 268, 477, 685, 833,
  # 1042; 2,500 ticks per game hour), weather Clear. Day animals only. Each scenario reloads the save, so decor is placed for
  # one image and removed after it.
  # THE INSTANT (GALLERY.md e: the image looks like a game paused mid-play). Each scene starts a real job or move, lets the game
  # run N ticks (`I let N ticks pass`), THEN pauses (`time is paused for the capture`), then sets the face and frames. Nothing
  # stands still facing the camera. Steps used: forced to haul (Nelim walks with the item), forced into the job Train on an
  # animal, animal forced to walk / follows / lies down (NPT, 2026-10-23, compiled, NOT PLAYED before this run).
  # Shot sizes: 1 wide (opening), 2 medium, 3 tight, 4 tight, 5 medium, 6 wide (closing). Fronts: fox 1, husky 5.
  #
  #  1 BARN 08:00, instant: Nelim walks to the fox with the next piece of leather, one step before she kneels. fox South, red
  #    collar (#c8202a) and blue helmet (#1f6fb5), grass x2 for straw. Nelim: MouthSmile, LidCheerful. rectangle, wide. j: collar, helmet.
  #    Risk: haul of an item she carries unverified (first run). 40 ticks.
  #  2 STATUE-GARDEN 08:05, instant: she has just raised a hand towards the horse's head to put the bridle on, next she leads it out;
  #    obtained by the job Train on the horse, 30 ticks, then pause. pale horse East, purple barding, gold chanfron, green saddle,
  #    daylilies. MouthLipsSmallSmile, LidNormal. zoom 5 (the horse fills about a quarter of the frame height, readable at
  #    268 px), horse in the left third, Nelim on its right facing it, statues behind, daylilies in the foreground, low morning
  #    sun from the east. j: barding, chanfron, saddle. Risk: the Train gesture only draws while the game ticks; fallback: haul
  #    Leather_Camel (the bridle's stuff) to the horse's head.
  #  3 SOFA-CORNER 08:10, instant: the grizzly lies asleep in its diaper, Nelim tiptoes up with a spare one (haul of Cloth).
  #    MouthLittleGrin, LidNormal. zoom 4, two lit torches. j: diaper. Risk: LayDown may end early; 60 ticks.
  #  4 BARE-CLEARING 08:15, instant: Nelim walks past the goat with a bar of steel after fitting the mail. goat East, goat mail,
  #    daylilies in the corners. MouthSmirkSmile, BrowRaised. zoom 3, Nelim right. j: goat mail. 40 ticks.
  #  5 ENCLOSURE-SOUTH 08:20, instant: the husky trots South toward the camera in power armour, helmet and shield collar, Nelim
  #    left with plasteel. dandelions. MouthLipsSmirk, LidHardened. rectangle medium. j: AnimalNeck slot. 40 ticks.
  #  6 ENCLOSURE-SOUTH 08:25, instant: Nelim hauls twenty silver East, the troop (fox, husky in its scene-5 set, cow, horse in its
  #    set) follows her. daylilies. MouthClassicSmile, LidCheerful. rectangle, wide. j: every piece. Risk: FollowClose on
  #    animals unverified; 60 ticks.
  #  7 interface, window-backdrop-for-height: the Mod options page, set aside from the estimate, no subtitle, cropped.
  # A green run proves a picture was taken, not that it is worth keeping: open every capture.

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: Animal Apparel Collars: gallery 1, Nelim brings a collar to the fox in the barn
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (202, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (201, 238) fully grown
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (203, 236)
    And Nelim's Pickle Tools: "GalleryFox" faces South
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Nelim" carries the item "Leather_Plain"
    And Nelim's Pickle Tools: "Nelim" stands at (198, 236) facing East
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Leather_Plain" to (201, 236)
    And Nelim's Pickle Tools: I let 40 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: I frame the rectangle from (195, 232) to (209, 240)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, Nelim trains the horse in its full set among the statues
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "statue-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 103) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (156, 102) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 106) fully grown
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (153, 104)
    And Nelim's Pickle Tools: "GalleryHorse" faces East
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: "Nelim" is forced into the job "Train" on "GalleryHorse"
    And Nelim's Pickle Tools: I let 30 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmallSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the animal "GalleryHorse" at zoom 5
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 3, the grizzly asleep in its diaper while Nelim tiptoes up with a spare
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "sofa-corner"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 477 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (184, 127)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (184, 127) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 127)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 127) is lit
    And Animal Apparel Collars: a tame "Bear_Grizzly" named "GalleryBear" stands at (189, 127)
    And Nelim's Pickle Tools: "GalleryBear" faces East
    And Animal Apparel Collars: "GalleryBear" is dressed in "diaper" dyed "#9ad0f0"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Nelim" carries the item "Cloth"
    And Nelim's Pickle Tools: "Nelim" stands at (184, 126) facing East
    Then Animal Apparel Collars: the render tree of "GalleryBear" draws "diaper"
    When Nelim's Pickle Tools: "GalleryBear" lies down
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Cloth" to (187, 126)
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLittleGrin"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the animal "GalleryBear" at zoom 4
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-bear"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 4, Nelim walks past the goat in its mail with a bar of steel
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (200, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (199, 155) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (195, 155) fully grown
    And Animal Apparel Collars: a tame "Goat" named "GalleryGoat" stands at (197, 152)
    And Nelim's Pickle Tools: "GalleryGoat" faces East
    And Animal Apparel Collars: "GalleryGoat" is dressed in "Apparel_GoatMail"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Nelim" carries the item "Steel"
    And Nelim's Pickle Tools: "Nelim" stands at (200, 154) facing West
    Then Animal Apparel Collars: the render tree of "GalleryGoat" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Steel" to (196, 154)
    And Nelim's Pickle Tools: I let 40 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmirkSmile"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: I frame the animal "GalleryGoat" at zoom 3
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-goat"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 5, the husky trots toward the camera in armour with a shield collar
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 833 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (146, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (152, 218) fully grown
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (148, 214)
    And Nelim's Pickle Tools: "GalleryHusky" faces South
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_SmallAnimalPowerArmor" dyed "#8a949e"
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#c9a227"
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_shielddogcollar" dyed "#c8202a"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Nelim" carries the item "Plasteel"
    And Nelim's Pickle Tools: "Nelim" stands at (144, 216) facing East
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_SmallAnimalPowerArmor"
    And Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_SmallAnimalPowerArmorHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_shielddogcollar"
    When Nelim's Pickle Tools: "GalleryHusky" is forced to walk to (148, 220)
    And Nelim's Pickle Tools: I let 40 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidHardened"
    And Nelim's Pickle Tools: I frame the rectangle from (141, 212) to (155, 222)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-5-husky"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 6, the troop follows Nelim out to the market
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 1042 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (148, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (152, 211) fully grown
    And Animal Apparel Collars: a tame "Fox_Arctic" named "ParadeFox" stands at (146, 217)
    And Animal Apparel Collars: a tame "Husky" named "ParadeHusky" stands at (148, 215)
    And Animal Apparel Collars: a tame "Cow" named "ParadeCow" stands at (150, 217)
    And Animal Apparel Collars: a tame "Horse" named "ParadeHorse" stands at (153, 215)
    And Nelim's Pickle Tools: "ParadeFox" faces East
    And Nelim's Pickle Tools: "ParadeHusky" faces East
    And Nelim's Pickle Tools: "ParadeCow" faces East
    And Nelim's Pickle Tools: "ParadeHorse" faces East
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_SmallAnimalPowerArmor" dyed "#8a949e"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#c9a227"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_shielddogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
    And Nelim's Pickle Tools: "Nelim" carries 20 of the item "Silver"
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing East
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_shielddogcollar"
    And Animal Apparel Collars: the render tree of "ParadeCow" draws "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: "ParadeFox" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHusky" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeCow" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHorse" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "Nelim" is forced to haul 20 of the item "Silver" to (162, 215)
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthClassicSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: I frame the rectangle from (141, 211) to (164, 220)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-6-parade"
    And Nelim's Pickle Tools: the decor is removed
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
