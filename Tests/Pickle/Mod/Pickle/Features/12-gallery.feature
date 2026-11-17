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
#  1. BARN 08:00, instant (v7h, 2026-11-17, after v7g: the helmet Nelim carried was unreadable at 268 px, the barn floor read as bare straw): the fox already wears its red collar
#        (Apparel_leatherdogcollar, #c8202a) and the blue helmet (Apparel_SmallAnimalPowerArmorHelmet, #1f6fb5), the blue head is the readable spot at 268 px (as in shot 6);
#        Nelim walks up with a spare helmet to leave it with the fox, like the spare diaper of shot 3, one step before she kneels. Fox at (202,236) in profile facing West toward Nelim,
#        Nelim starts at (198,236) and hauls the helmet to (200,236), 25 ticks, still moving at the pause; frame the cell (201,236) at zoom 2 (270 px per cell, 7 cells wide, the closest
#        the camera goes: NPT 2026-11-17), both in the middle. decor v7h: lit TorchLamp (204,238), Plant_Bush (199,238), Plant_YellowTallGrass (201,238) (202,238), and new Plant_Daylily
#        (203,234) (198,234), Plant_Dandelion (204,236) so the barn floor is not bare, the barn's own braziers stay (furniture, cannot be removed), low morning sun from the east.
#        Nelim: MouthSmile, LidCheerful. j: blue helmet and red collar on a white fox.
#  2. BARE-CLEARING (north half of the free square A) 08:05, instant: Nelim walks up with the bridle's leather (Leather_Camel) towards the horse's head, one step
#        before she buckles it on, next she leads it out; obtained by a haul of Leather_Camel in front of the horse's head (the job Train
#        was refused in ticket b7f7: RopeToPen), 10 ticks, then pause. pale horse East, purple barding, gold chanfron, green saddle. MouthLipsSmallSmile, LidNormal.
#        v7h (2026-11-17, after v7g: the game drifted the horse about 1.5 cells West of its spawn, so it was cut by the left edge and Nelim stood alone at the right): the horse
#        at (195,156) facing East, Nelim one row south at (199,157) facing West hauls the leather to (197,157), in front of its head, never on its row; frame the cell (195,156) at zoom 2
#        (270 px per cell, 7 cells wide) so the horse drifted West stays in the left third and Nelim in the right third. decor: Plant_Daylily (193,155) (195,155),
#        Plant_YellowTallGrass (199,155), Plant_Bush (193,157), lit TorchLamp (198,155), low morning sun from the east. j: barding, chanfron, saddle.
#  3. SOFA-CORNER 08:10, instant: the grizzly stands in its pale blue diaper, Nelim brings a spare one (haul of Cloth).
#        MouthLittleGrin, LidNormal. rectangle (184,125)-(193,129), two lit torches (184,127) (193,127) at its edges. j: diaper.
#        v7b (2026-11-17, after ticket 8cd5: the bear lay down, brown on the brown plank floor, a flat silhouette, no diaper drawn, 200 px at zoom 4):
#        no LayDown (the diaper does not show on a lying animal and brown on brown has no contrast): the bear stands East at (189,127),
#        the pale blue diaper (#9ad0f0) is the one light spot on the dark floor; the bear faces West toward Nelim, who hauls the cloth to (187,126), the diaper on its east flank by the torch;
#        10 cells wide (about 192 px per cell instead of 135), the bear fills about a third of the frame height. 30 ticks.
#  4. BARE-CLEARING 08:15, instant (reworked 2026-10-25 after b7f7: goat 12 % of the frame, Nelim out of frame, bare ground):
#        the mail is fitted, the goat steps off West toward the flower border and Nelim follows at its flank with a bale of hay, one
#        step behind it. goat West (walk to (191,152) from (194,152), 40 ticks), goat mail Apparel_GoatMail now dyed teal #1f9d8f (v7h, 2026-11-17: the undyed dark mail
#        was barely readable on the cream coat at 268 px); Nelim walks (198,153) to (194,153) facing West. MouthSmirkSmile, BrowRaised.
#        Fixed frame (not the animal, which drifts): frame the cell (193,152) at zoom 2 (270 px per cell, 7 cells wide), so both stay in.
#        decor v7: lit TorchLamp (196,151), Plant_Bush (190,151), foreground (south edge z 150): two daylilies (192,150) (195,150); background (north, z 153): two tall yellow
#        grass (191,153) (193,153) and the natural flower border at x 190; goat at the middle, Nelim right of it, low morning sun from
#        the east (shadows West). j: goat mail, teal against the cream coat, the goat about a quarter of the frame width.
#  5. ENCLOSURE-SOUTH 08:20, instant: the husky stands South toward the camera in power armour and shield collar (no helmet:
#        the small power helmet has no husky tag, ticket b7f7), Nelim left with a pemmican treat. MouthLipsSmirk, LidNormal (the roster mouth, one scene without the smile of 4, so the series is not one repeated face).
#        v7h (2026-11-17, after v7g: the frame sat about one cell too low, the husky's armour was cut by the top edge, and Nelim stood too far from it): husky at (147,214) facing South,
#        Nelim at (144,214) facing East hauls the pemmican to (145,214), 15 ticks, same row, two cells from the husky; frame the cell (146,215) at zoom 2 (270 px per cell,
#        7 cells wide, 4 cells tall), front view, armour on its back and shield collar at its neck, both in the middle. decor: dandelions (145,213) (148,213),
#        lit TorchLamp (149,215), Plant_Bush (143,215) so the ground is not bare, fence behind, low morning sun from the east. j: armour and AnimalNeck slot.
#  6. BARE-CLEARING (free square A) 08:25, instant: Nelim hauls twenty silver East, the troop (fox, husky in its scene-5 set, goat in its mail, horse in its
#        set) follows her. MouthClassicSmile, LidCheerful.
#        v7h (2026-11-17, after v7g: the troop lagged four cells behind Nelim and sat at the left edge, the goat drifted to the top edge): played on the free square A
#        (bare ground, all standable), the troop starts in four rows behind her: husky (196,150), horse (193,151), fox (195,152), goat (194,152), all facing East;
#        Nelim starts at (199,152) and hauls the silver to (201,152), 60 ticks (two cells of walk), the animals follow within 4 cells; frame the cell (197,152) at zoom 3
#        (180 px per cell, 10.7 cells wide, 6 cells tall), so the troop on the left and Nelim on the right both stay in. decor: daylilies (199,150) (202,150), Plant_Bush (198,154),
#        lit TorchLamp (201,154), low morning sun from the east. j: every piece; at 268 px the animals are small (about 25 px per animal), the shot is the closing summary, each piece reads
#        in shots 1 to 5. Risk: FollowClose on animals (played in ticket 97ed, they followed).
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
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (203, 234) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (198, 234) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (204, 236) fully grown
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (202, 236)
    And Nelim's Pickle Tools: "GalleryFox" faces West
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Apparel_SmallAnimalPowerArmorHelmet"
    And Nelim's Pickle Tools: "Nelim" stands at (198, 236) facing East
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Apparel_SmallAnimalPowerArmorHelmet" to (200, 236)
    And Nelim's Pickle Tools: I let 25 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: I frame the cell (201, 236) at zoom 2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, Nelim brings bridle leather to the horse in its full set on the bare clearing
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (193, 155) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (195, 155) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (199, 155) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (193, 157) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (198, 155)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (198, 155) is lit
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (195, 156)
    And Nelim's Pickle Tools: "GalleryHorse" faces East
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Leather_Camel"
    And Nelim's Pickle Tools: "Nelim" stands at (199, 157) facing West
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Leather_Camel" to (197, 157)
    And Nelim's Pickle Tools: I let 10 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmallSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the cell (195, 156) at zoom 2
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
    And Animal Apparel Collars: "GalleryGoat" is dressed in "Apparel_GoatMail" dyed "#1f9d8f"
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
    And Nelim's Pickle Tools: I frame the cell (193, 152) at zoom 2
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
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (145, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Dandelion" at (148, 213) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (143, 215) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (149, 215)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (149, 215) is lit
    And Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (147, 214)
    And Nelim's Pickle Tools: "GalleryHusky" faces South
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_SmallAnimalPowerArmor" dyed "#8a949e"
    And Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_shielddogcollar" dyed "#c8202a"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" carries the item "Pemmican"
    And Nelim's Pickle Tools: "Nelim" stands at (144, 214) facing East
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_SmallAnimalPowerArmor"
    And Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_shielddogcollar"
    When Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Pemmican" to (145, 214)
    And Nelim's Pickle Tools: I let 15 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: I frame the cell (146, 215) at zoom 2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-5-husky"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 6, the troop follows Nelim out to the market
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 1042 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (199, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (202, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Bush" at (198, 154) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (201, 154)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (201, 154) is lit
    And Animal Apparel Collars: a tame "Fox_Arctic" named "ParadeFox" stands at (195, 152)
    And Animal Apparel Collars: a tame "Husky" named "ParadeHusky" stands at (196, 150)
    And Animal Apparel Collars: a tame "Goat" named "ParadeGoat" stands at (194, 152)
    And Animal Apparel Collars: a tame "Horse" named "ParadeHorse" stands at (193, 151)
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
    And Nelim's Pickle Tools: "Nelim" stands at (199, 152) facing East
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_shielddogcollar"
    And Animal Apparel Collars: the render tree of "ParadeGoat" draws "Apparel_GoatMail"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: "ParadeFox" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHusky" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeGoat" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "ParadeHorse" follows "Nelim" within 4 cells
    And Nelim's Pickle Tools: "Nelim" is forced to haul 20 of the item "Silver" to (201, 152)
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthClassicSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: I frame the cell (197, 152) at zoom 3
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
