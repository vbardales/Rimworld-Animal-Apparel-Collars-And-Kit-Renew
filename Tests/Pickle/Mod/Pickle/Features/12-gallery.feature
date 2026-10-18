@animal-apparel-collars @gallery @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.colonistrace @requires:OskarPotocki.VanillaFactionsExpanded.Core
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md, GALLERY.md "Shotlist : critères d'une scène à 4/5"). Pass:
  # wsl-deps.sanctuary.map (Sanctuaire de Nelim, fixture Nelims-tribe) with Vanilla Expanded Framework (turret packs, settings).
  # Gallery order: 0 Preview, 1 fox, 2 horse, 3 grizzly, 4 goat, 5 turret pack, 6 parade, 7 settings (interface, set aside).
  #
  # THE STORY. Market morning at the Sanctuary, one clear day. Nelim looks after the animals and gets her troop ready for the
  # market parade. 08:00 in the barn she picks a collar for the fox; 08:05 among the statues she bridles the horse; 08:10 in
  # the hall she changes the grizzly; 08:15 in the clearing she fits the goat with its mail; 08:20 a wolf comes into the
  # enclosure and the cow's turret pack answers; 08:25 the dressed troop parades out and she leads it to the market.
  # Time: start hour 8 in every scenario, then a cumulative wait (setup 60 ticks, then +208 per image: 60, 268, 477, 685, 833,
  # 1042; 2,500 ticks per game hour), weather Clear. Only day animals, all awake. Each scenario reloads the save, so decor is
  # placed for one image and removed after it ("the decor is removed"); no prop is reused from an image to the next.
  # Hats (owner rule 2026-10-18): the pass mounts Show Hair Under Stuff (RaccoonCuddler.ShowHair, 3255379190, 1.6 and 1.7,
  # Harmony) so the hair shows under a hat; Nelim wears a hat in scenes 2 and 6 only, always with long loose hair, never a
  # ponytail or a bun (scene 1 and 5 ponytails have no hat). Risk: the mod hides nothing on a hat it does not know -> the first
  # capture of 2 and 6 is read for the hair under the hat.
  # Nelim is the protagonist and changes outfit, hairstyle, hair colour and expression in every scene (colours below).
  # Animals seen from the front (South): fox 1, grizzly 3, goat 4; horse and parade in profile on purpose (the barding and the
  # saddle read from the side).
  #
  # SHOT PLAN, every field (a place, b decor, c living, d Nelim, e action, f composition, g says, h risk and plan, j mod):
  #  1 BARN 08:00, clear. b: Plant_YellowTallGrass x2 at (202, 238), (205, 237) (straw, a nest for the fox) c: arctic fox
  #    facing South, red leather collar (#c8202a) and blue helmet (#1f6fb5), grass. d: mustard shirt (214, 168, 64), brown
  #    trousers (96, 72, 48), hair Ponytails dark brown (90, 58, 32), MouthSmile, LidCheerful. e: Nelim holds a studded collar
  #    and looks at the fox, choosing the next one. f: zoom 3 then zoom 4 on the fox, Nelim at its left in the foreground, warm
  #    barn light, the fox slightly off-centre. g: collars and a helmet fit even the smallest animal. h: the held collar is too
  #    small to read -> two frames (zoom 3 and 4), the worn collar and helmet carry the point. j: collar, helmet.
  #  2 STATUE-GARDEN 08:05. b: Plant_Daylily x3 fully grown near the horse (at (151, 103), (156, 102), (154, 106)); the
  #    place has its statues behind c: pale horse in profile (East), purple barding (#7a1fa2), gold chanfron (#e0b020), green
  #    saddle (#2e8b57), daylilies. d: riding dress, white collar shirt (240, 240, 235), tan trousers (176, 140, 96), rust
  #    duster (150, 80, 40), brown cowboy hat (122, 84, 48), hair Flowy dark brown (70, 44, 26), loose under the hat, MouthLipsSmallSmile,
  #    LidSquinting (sun). e: Nelim holds the bridle and steps up to the horse's head. f: zoom 6 and zoom 8 on the horse, statues
  #    and flowers behind, Nelim at its head on the right of the frame, morning sun from the east. g: a full set for the biggest
  #    one, riding tack included. h: statues crowd the cells -> Nelim is put next to the horse (not on a cell), the animal
  #    falls back to the nearest standable cell; decor cells may be taken -> first run names the cell, move it. j: barding,
  #    chanfron, saddle, bridle.
  #  3 SOFA-CORNER 08:10 (the hall, pink carpet). b: two lit torches at (184, 127), (193, 127) c: adult grizzly facing South in a
  #    pale blue diaper (#9ad0f0) (the diaper has art for adults only). d: cosy morning, lavender robe (150, 120, 190) over
  #    cream trousers (225, 215, 195), hair Curly jet black (28, 26, 30), MouthLittleGrin, LidSleepy. e: Nelim holds a spare
  #    diaper and eyes the bear, half asleep. f: rectangle (182, 123) to (194, 129), bear centred slightly back, Nelim at the
  #    left foreground, warm lamplight on the carpet. g: the diaper is for the big ones too. h: the bear is too big for the
  #    free cells -> nearest-cell fallback logged; diaper art on a bear unverified -> render-tree assertion. j: diaper.
  #  4 BARE-CLEARING 08:15. b: Plant_Daylily x2 (200, 150), (199, 155) and Plant_YellowTallGrass (195, 155) fully grown, on the
  #    bare earth c: goat facing South in steel goat mail, daylilies, grass. d: smith's apron day, sage green collar shirt
  #    (122, 158, 110), charcoal trousers (60, 60, 70), hair FancyBun auburn (138, 70, 42), MouthSmirkSmile, LidNormal,
  #    BrowRaised. e: Nelim carries a steel bar (the mail's stuff) and looks over the mail she just fitted. f: rectangle
  #    (190, 148) to (203, 156), goat off-centre right, Nelim left, flowers in the foreground corners. g: armour for the
  #    toughest climber. h: the mail art is small on a goat -> rectangle tight (14 x 9). j: goat mail.
  #  5 ENCLOSURE-SOUTH 08:20. b: Plant_YellowTallGrass x2 at (146, 218), (152, 218) c: cow in a teal scarf (#12a39a) and a large
  #    turret pack, facing East; hostile timber wolf facing West at (156, 216), grass. d: dawn watch, burnt orange shirt
  #    (200, 100, 40), dark trousers (50, 50, 60), olive jacket (92, 110, 70), hair Ponytails black (30, 28, 28), brows
  #    BrowRaised, MouthLipsWorried, LidNormal. e: Nelim holds a short bow and watches the wolf as the pack fires. f: rectangle
  #    (144, 210) to (160, 219), cow left, wolf right, Nelim in the foreground, three frames 12, 24 and 36 ticks after the shot.
  #    g: the troop can defend the farm. h: the pack is invisible by design, only the shot and the impact read; the wolf may die
  #    or run -> three frames, the best is kept; if none reads, the scene is dropped and replaced by the cow standing guard
  #    (written in STATUS.md). j: turret pack.
  #  6 ENCLOSURE-SOUTH 08:25. b: Plant_Daylily x2 (148, 211), (152, 211) c: fox (collar, helmet), husky (pink bow #e0307a), cow
  #    (scarf), horse (barding set) heading East, staggered in depth (z 215 to 217), daylilies. d: festival dress, crimson
  #    collar shirt (170, 30, 60), cream trousers (235, 228, 205), navy beret (30, 50, 110), hair Long black (24, 22, 26), loose under the beret,
  #    MouthClassicSmile, LidCheerful, BrowRaised. e: Nelim leads the troop to the market holding twenty silver. f: rectangle
  #    (141, 211) to (164, 220), troop crossing from left to right behind her, she is in the left foreground facing the camera.
  #    g: the whole troop heads for the market. h: the staggered cells can fall back to one row -> if it reads as a lineup the
  #    z offsets are widened. j: every dressed piece together.
  #  7 interface, window-backdrop-for-height: the Mod options page of this mod; an interface window is set aside from the
  #    estimate (GALLERY.md), no subtitle, cropped as GALLERY.md says.
  # A green run proves a picture was taken, not that it is worth keeping: open every capture.

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
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (202, 238) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (205, 237) fully grown
    And Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (203, 236)
    And Nelim's Pickle Tools: "GalleryFox" faces South
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 72, 48)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 168, 64)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (90, 58, 32)
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
    And Nelim's Pickle Tools: I frame the animal "GalleryFox" at zoom 4
    And I take a screenshot "gallery-1b-fox"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 2, the pale horse in barding, chanfron and saddle among the statues
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "statue-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 268 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 103) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (156, 102) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 106) fully grown
    And Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (153, 104)
    And Nelim's Pickle Tools: "GalleryHorse" faces East
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (176, 140, 96)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (240, 240, 235)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (150, 80, 40)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (122, 84, 48)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Flowy"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (70, 44, 26)
    And Nelim's Pickle Tools: "Nelim" carries the item "Apparel_bridle"
    And Nelim's Pickle Tools: "Nelim" stands next to "GalleryHorse"
    And Nelim's Pickle Tools: "Nelim" faces West
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmallSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidSquinting"
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: I frame the animal "GalleryHorse" at zoom 6
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: I frame the animal "GalleryHorse" at zoom 8
    And I take a screenshot "gallery-2b-horse"
    And Nelim's Pickle Tools: the decor is removed
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
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (225, 215, 195)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Robe" dyed rgb (150, 120, 190)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Curly"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (28, 26, 30)
    And Nelim's Pickle Tools: "Nelim" carries the item "diaper"
    And Nelim's Pickle Tools: "Nelim" stands at (185, 126) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLittleGrin"
    And Nelim's Pickle Tools: "Nelim" lids are "LidSleepy"
    Then Animal Apparel Collars: the render tree of "GalleryBear" draws "diaper"
    When Nelim's Pickle Tools: I frame the rectangle from (182, 123) to (194, 129)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-3-bear"
    And Nelim's Pickle Tools: the decor is removed
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
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (200, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (199, 155) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (195, 155) fully grown
    And Animal Apparel Collars: a tame "Goat" named "GalleryGoat" stands at (197, 152)
    And Nelim's Pickle Tools: "GalleryGoat" faces South
    And Animal Apparel Collars: "GalleryGoat" is dressed in "Apparel_GoatMail"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (60, 60, 70)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (122, 158, 110)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (138, 70, 42)
    And Nelim's Pickle Tools: "Nelim" carries the item "Steel"
    And Nelim's Pickle Tools: "Nelim" stands at (193, 152) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmirkSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    Then Animal Apparel Collars: the render tree of "GalleryGoat" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: I frame the rectangle from (190, 148) to (203, 156)
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "gallery-4-goat"
    And Nelim's Pickle Tools: the decor is removed
    And Nelim's Pickle Tools: the interface is shown again
    Then no errors were logged

  Scenario: Animal Apparel Collars: gallery 5, the cow fires its turret pack at a wolf in the enclosure
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 833 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (146, 218) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (152, 218) fully grown
    And Animal Apparel Collars: a tame "Cow" named "GalleryCow" stands at (148, 216)
    And Nelim's Pickle Tools: "GalleryCow" faces East
    And Animal Apparel Collars: "GalleryCow" is dressed in "Apparel_LargeAnimalScarf" dyed "#12a39a"
    And Animal Apparel Collars: "GalleryCow" is dressed in "ATP_Apparel_LargeTurret"
    And Animal Apparel Collars: a hostile "Wolf_Timber" named "GalleryWolf" stands at (156, 216)
    And Nelim's Pickle Tools: "GalleryWolf" faces West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (50, 50, 60)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (200, 100, 40)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 110, 70)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (30, 28, 28)
    And Nelim's Pickle Tools: "Nelim" carries the item "Bow_Short"
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing East
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsWorried"
    And Nelim's Pickle Tools: "Nelim" lids are "LidNormal"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
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
    And Nelim's Pickle Tools: the decor is removed
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
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (148, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (152, 211) fully grown
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
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (235, 228, 205)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (170, 30, 60)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Beret" dyed rgb (30, 50, 110)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (24, 22, 26)
    And Nelim's Pickle Tools: "Nelim" carries 20 of the item "Silver"
    And Nelim's Pickle Tools: "Nelim" stands at (150, 212) facing South
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthClassicSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    Then Animal Apparel Collars: the render tree of "ParadeFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "ParadeHusky" draws "Apparel_dogbow"
    And Animal Apparel Collars: the render tree of "ParadeCow" draws "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: the render tree of "ParadeHorse" draws "Apparel_MedievalHorsePlate"
    When Nelim's Pickle Tools: I frame the rectangle from (141, 211) to (164, 220)
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
