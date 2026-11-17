@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.colonistrace @requires:OskarPotocki.VanillaFactionsExpanded.Core

# Staged photographs for the Steam page (PUBLISHING.md, GALLERY.md "Shotlist : critères d'une scène à 4/5", rules of 2026-10-23).
# Pass: wsl-deps.sanctuary.map (Sanctuaire de Nelim, fixture Nelims-tribe) with Vanilla Expanded Framework (settings page).
# Shotlist v6 with scores and the director's remarks: STATUS.md, section "Shotlist v6". Gallery order: 0 Preview, 1 fox,
# 2 horse, 3 grizzly, 4 goat, 5 husky, 6 parade, 7 settings (interface, set aside).
#
# THE STORY. One clear market morning at the Sanctuary. Nelim dressed at dawn and keeps ONE outfit all morning (GALLERY.md d,
# 2026-10-23): mustard shirt (214, 168, 64), brown trousers (96, 72, 48), olive jacket (92, 110, 70), her validated roster hair Roo_HD_Hair_Highpony (no override, NSB 2026-11-17)
# no hat. Expressions: a written smile per scene (GALLERY.md d, owner 2026-10-25; NSB VALIDE 2026-11-06 scene expression is free; her chat of 2026-11-05 withdrew it, validated by the owner 2026-11-17, the mouth lines stay the one place to flip). Only her expression and what she holds change. She gets her troop ready for the market parade:
# 08:00 in the barn the fox's collar; 08:05 in the daylily garden the horse; 08:10 in the hall the grizzly waits by the sofa;
# 08:15 in the clearing the goat's mail; 08:20 in the enclosure the husky waits for its treat in armour; 08:25 the troop follows her out.
# Time: start hour 8 in every scenario, then a cumulative wait (setup 60 ticks, then +208 per image: 60, 268, 477, 685, 833,
# 1042; 2,500 ticks per game hour), weather Clear. Day animals only. Each scenario reloads the save, so decor is placed for
# one image and removed after it.
# THE INSTANT (GALLERY.md e: the image looks like a game paused mid-play). Each scene starts a real job or move, lets the game
# run N ticks (`I let N ticks pass`), THEN pauses (`time is paused for the capture`), then sets the face and frames. Nothing
# stands still facing the camera. Steps used: forced to haul (Nelim walks with the item), animal forced to walk / follows / lies down (NPT, 2026-10-23, compiled, NOT PLAYED before this run).
# Shot widths (cells, v7b): 1 = 8, 2 = 9, 3 = 10, 4 = 7, 5 = 9, 6 = 19; only 6 is wide, the others are tight on purpose (animal readable at 268 px). Fronts: fox 1, husky 5.
#
#  1. BARN 08:00, instant: Nelim walks to the fox with the blue helmet (Apparel_SmallAnimalPowerArmorHelmet) to fit on it, one step before she kneels. fox South, red
#        collar (#c8202a) and no helmet yet (the helmet is the item she carries, shot 6 shows it worn, #1f6fb5), grass x2 for straw. Nelim: MouthSmile, LidCheerful. frame the cell (202,236) at zoom 2 (270 px per cell, 7 cells wide, v7c: NPT 2026-11-17, the rectangle step adds a margin and the height decides, 150 px per cell),
#        decor v7: lit TorchLamp (204,238), Plant_Bush (199,238) with the grass and the barn wall, light in frame.
#        v7b (2026-11-17, after ticket 8cd5: fox small, collar unreadable at 11 cells wide): frame tightened to 8 cells wide (about
#        216 px per cell instead of 175), fox South toward the camera in the middle, Nelim left of it carrying the helmet, the barn's own braziers
#        stay (furniture, cannot be removed), yellow grass in the foreground, low morning sun from the east. j: collar, helmet;
#        the red collar must read at 268 px (to confirm on the capture). 25 ticks (three cells of haul, still walking at the pause).
#  2. STATUE-GARDEN 08:05, instant: Nelim walks up with the bridle's leather (Leather_Camel) towards the horse's head, one step
#        before she buckles it on, next she leads it out; obtained by a haul of Leather_Camel to the horse's head (the job Train
#        was refused in ticket b7f7: RopeToPen), 30 ticks, then pause. pale horse East, purple barding, gold chanfron, green saddle,
#        daylilies. MouthLipsSmallSmile, LidNormal. decor v7: lit TorchLamp (157,104), Plant_Bush (150,106), daylilies (151,103) (156,102) (154,106).
#        v7b (2026-11-17, after ticket f6a9: horse 200 px, chanfron unreadable, Nelim north of the horse, statues only at the bottom edge):
#        frame the cell (154,104) at zoom 2 (270 px per cell, 7 cells wide, 10 ticks, one cell of haul), horse at (153,104) in the left third facing East,
#        Nelim stands at (156,104) and hauls the leather to (155,104), so she ends on its right, in front of its head, facing it; the statues leave the frame
#        (a tight frame beats the statues, the place is named by the daylily garden and the torch), low morning sun from the east. j: barding, chanfron, saddle.
#  3. SOFA-CORNER 08:10, instant: the grizzly stands in its pale blue diaper, Nelim brings a spare one (haul of Cloth).
#        MouthLittleGrin, LidNormal. rectangle (184,125)-(193,129), two lit torches (184,127) (193,127) at its edges. j: diaper.
#        v7b (2026-11-17, after ticket 8cd5: the bear lay down, brown on the brown plank floor, a flat silhouette, no diaper drawn, 200 px at zoom 4):
#        no LayDown (the diaper does not show on a lying animal and brown on brown has no contrast): the bear stands East at (189,127),
#        the pale blue diaper (#9ad0f0) is the one light spot on the dark floor; the bear faces West toward Nelim, who hauls the cloth to (187,126), the diaper on its east flank by the torch;
#        10 cells wide (about 192 px per cell instead of 135), the bear fills about a third of the frame height. 30 ticks.
#  4. BARE-CLEARING 08:15, instant (reworked 2026-10-25 after b7f7: goat 12 % of the frame, Nelim out of frame, bare ground):
#        the mail is fitted, the goat steps off West toward the flower border and Nelim follows at its flank with a bale of hay, one
#        decor v7: lit TorchLamp (196,151), Plant_Bush (190,151) with the daylilies and tall grass, the thin-decor fix of 2026-11-07.
#        step behind it. goat West (walk to (191,152) from (194,152), 40 ticks), goat mail; Nelim walks (198,153) to (194,153) facing
#        West. MouthSmirkSmile, BrowRaised. Fixed frame (not the animal, which drifts): frame the cell (193,152) at zoom 2.2 (245 px per cell, 7.8 cells wide), so
#        both stay in. Foreground (south edge z 150): two daylilies (192,150) (195,150); background (north, z 153): two tall yellow
#        grass (191,153) (193,153) and the natural flower border at x 190; goat at the middle, Nelim right of it, low morning sun from
#        the east (shadows West). j: goat mail; the goat fills about a fifth of the frame width (about 55 px at 268 px), mail read
#        by its dark grey against the cream coat (weak, kept). Tight.
#  5. ENCLOSURE-SOUTH 08:20, instant: the husky stands South toward the camera in power armour and shield collar (no helmet:
#        the small power helmet has no husky tag, ticket b7f7), Nelim left with a pemmican treat. dandelions (146,213) (151,213) in the foreground, enclosure
#        decor v7: lit TorchLamp (150,213), Plant_Bush (151,217) beside the dandelions, so the ground is not bare.
#        fence behind, low morning sun from the east. MouthLipsSmirk, LidNormal (the roster mouth, one scene without the smile of 4, so the series is not one repeated face).
#        v7b (2026-11-17, after ticket 40fd: Nelim overlapped the husky head, the shield collar unreadable, husky 140 px): the husky no longer walks
#        (the walk to (148,220) drew it onto Nelim): it stands at (148,214) facing South, Nelim at (144,216) four cells to its left facing East, no overlap;
#        frame the cell (146,215) at zoom 2.2 (245 px per cell, 7.8 cells wide, v7e: the rectangle step gave 150 px per cell), husky in the centre, front view, armour on its back and
#        shield collar at its neck. j: armour and AnimalNeck slot (to confirm on the capture). Nelim hauls the pemmican to (146,215) (unverified cell, a red replays the scene), 15 ticks.
#  6. ENCLOSURE-SOUTH 08:25, instant: Nelim hauls twenty silver East, the troop (fox, husky in its scene-5 set, goat in its mail, horse in its
#        set) follows her. daylilies in the foreground, fence behind, low morning sun from the east, the troop in a line from left
#        decor v7: lit TorchLamp (160,212), Plant_Bush (146,212) for light and cover on the wide closing shot.
#        to right. MouthClassicSmile, LidCheerful. frame the cell (153,215) at zoom 3 (180 px per cell, 10.7 cells wide), Nelim ahead of the troop at (156,213), wide closing. j: every piece; at 268 px the
#        animals are small (about 11 px per cell), the shot is the closing summary, each piece reads in shots 1 to 5. Risk:
#        FollowClose on animals unverified; 60 ticks.
#  7. interface, window-backdrop-for-height: the Mod options page, set aside from the estimate, no subtitle, cropped.
# A green run proves a picture was taken, not that it is worth keeping: open every capture.

Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: Animal Apparel Collars: gallery 1, Nelim brings a helmet to the fox in the barn
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (202, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (201, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (199, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (204, 238)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (204, 238) is lit
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (203, 236)
    And Nelim's Pickle Tools: "GalleryFox" faces South
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Apparel_SmallAnimalPowerArmorHelmet"
    And Nelim's Pickle Tools: "Nelim" stands at (198, 236) facing East
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Apparel_SmallAnimalPowerArmorHelmet" to (201, 236)
    And Nelim's Pickle Tools: I let 25 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: I frame the cell (202, 236) at zoom 2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, Nelim brings bridle leather to the horse in its full set in the daylily garden
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "statue-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 103) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (156, 102) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (150, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (157, 104)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (157, 104) is lit
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (153, 104)
    And Nelim's Pickle Tools: "GalleryHorse" faces East
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Leather_Camel"
    And Nelim's Pickle Tools: "Nelim" stands at (156, 104) facing West
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Leather_Camel" to (155, 104)
    And Nelim's Pickle Tools: I let 10 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmallSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the cell (154, 104) at zoom 2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 3, the grizzly in its diaper while Nelim brings a spare
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
    And Nelim's Pickle Tools: "GalleryBear" faces West
    And Animal Apparel Collars: "GalleryBear" is dressed in "diaper" dyed "#9ad0f0"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Cloth"
    And Nelim's Pickle Tools: "Nelim" stands at (184, 126) facing East
    Then Animal Apparel Collars: the render tree of "GalleryBear" draws "diaper"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Cloth" to (187, 126)
    And Nelim's Pickle Tools: I let 30 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLittleGrin"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the rectangle from (184, 125) to (193, 129)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-bear"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 4, Nelim walks past the goat in its mail with a bale of hay
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (192, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (195, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (191, 153) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (193, 153) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (190, 151) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (196, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (196, 151) is lit
    And Animal Apparel Collars: a tame "Goat" named "GalleryGoat" stands at (194, 152)
    And Nelim's Pickle Tools: "GalleryGoat" faces West
    And Animal Apparel Collars: "GalleryGoat" is dressed in "Apparel_GoatMail"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: "Nelim" stands at (198, 153) facing West
    Then Animal Apparel Collars: the render tree of "GalleryGoat" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: "GalleryGoat" is forced to walk to (191, 152)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Hay" to (194, 153)
    And Nelim's Pickle Tools: I let 40 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmirkSmile"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: I frame the cell (193, 152) at zoom 2.2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-goat"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 5, the husky in armour with a shield collar faces the camera while Nelim holds a treat
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 833 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (146, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (151, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (151, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (150, 213)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (150, 213) is lit
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (148, 214)
    And Nelim's Pickle Tools: "GalleryHusky" faces South
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_SmallAnimalPowerArmor" dyed "#8a949e"
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_shielddogcollar" dyed "#c8202a"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Pemmican"
    And Nelim's Pickle Tools: "Nelim" stands at (144, 216) facing East
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_SmallAnimalPowerArmor"
    And Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_shielddogcollar"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Pemmican" to (146, 215)
    And Nelim's Pickle Tools: I let 15 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the cell (146, 215) at zoom 2.2
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
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (146, 212) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (160, 212)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (160, 212) is lit
    And Animal Apparel Collars: a tame "Fox_Arctic" named "ParadeFox" stands at (146, 217)
    And Animal Apparel Collars: a tame "Husky" named "ParadeHusky" stands at (148, 215)
    And Animal Apparel Collars: a tame "Goat" named "ParadeGoat" stands at (150, 217)
    And Animal Apparel Collars: a tame "Horse" named "ParadeHorse" stands at (153, 215)
    And Nelim's Pickle Tools: "ParadeFox" faces East
    And Nelim's Pickle Tools: "ParadeHusky" faces East
    And Nelim's Pickle Tools: "ParadeGoat" faces East
    And Nelim's Pickle Tools: "ParadeHorse" faces East
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_SmallAnimalPowerArmor" dyed "#8a949e"
    And Animal Apparel Collars: "ParadeHusky" is dressed in "Apparel_shielddogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "ParadeGoat" is dressed in "Apparel_GoatMail"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "ParadeHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries 20 of the item "Silver"
    And Nelim's Pickle Tools: "Nelim" stands at (156, 213) facing East
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_shielddogcollar"
    And Animal Apparel Collars: the render tree of "ParadeGoat" draws "Apparel_GoatMail"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: "ParadeFox" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHusky" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeGoat" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHorse" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "Nelim" is forced to haul 20 of the item "Silver" to (162, 215)
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthClassicSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: I frame the cell (153, 215) at zoom 3
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
