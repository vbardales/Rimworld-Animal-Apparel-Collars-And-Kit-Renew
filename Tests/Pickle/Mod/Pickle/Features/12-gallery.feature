@animal-apparel-collars @gallery @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.clearscreen @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.camerazoom
Feature: Animal Apparel Collars and Kit Renew, Workshop gallery captures

  # Staged photographs for the Steam page (PUBLISHING.md, rules of 2026-10-01 and 2026-10-02: every gallery capture
  # is staged, nothing left at defaults). Pass: wsl-deps.studio-gallery.map (zenNelim studio, StageDecor, CameraZoom).
  #
  # The story. A morning at the fair of the flower meadow: three animals are brought, one after the other, to the
  # display pavilion to be shown in their finery. Same stage for the three portraits: the empty centre of the
  # display pavilion (125, 96), a torch lamp on each side and a stool, put up before the picture and taken down
  # after it. Each animal wears pieces dyed in colours that stand out against its own coat:
  #   1 the arctic fox (white): a red collar and a blue helmet, the two ends of the palette;
  #   2 the horse (brown): purple barding, a gold chanfron, a green saddle;
  #   3 the husky (grey and white): a pink bow collar.
  # The interface is the game's screenshot mode (studio presentation mode); the pointer is not drawn.
  # Gallery order on the page: 0 Preview, 1 fox, 2 horse, 3 husky. The images are cropped and enlarged from the
  # raw capture (the camera root size reached is logged by the zoom step); open each image before using it.

  Background:
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the screen is clear
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (122, 96)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (128, 96)
    And Nelim's Pickle Tools: I place the decor "Stool" at (127, 98)

  @review
  Scenario: Animal Apparel Collars: gallery 1, a fox in a red collar and a helmet
    Given Animal Apparel Collars: a tame "Fox_Arctic" named "GalleryFox" stands at (125, 96)
    When Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_leatherdogcollar" dyed "#c8202a"
    And Animal Apparel Collars: "GalleryFox" is dressed in "Apparel_SmallAnimalPowerArmorHelmet" dyed "#1f6fb5"
    Then Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_leatherdogcollar"
    And Animal Apparel Collars: the render tree of "GalleryFox" draws "Apparel_SmallAnimalPowerArmorHelmet"
    When Nelim's Pickle Tools: I frame the studio "display"
    And Nelim's Pickle Tools: the camera root size is set to 8
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then Animal Apparel Collars: the camera can see "GalleryFox"
    When I take a screenshot "gallery-1-fox"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: gallery 2, a horse in barding, helmet and saddle
    Given Animal Apparel Collars: a tame "Horse" named "GalleryHorse" stands at (125, 96)
    When Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "GalleryHorse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    Then Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "GalleryHorse" draws "Apparel_MedievalHorseSaddle"
    When Nelim's Pickle Tools: I frame the studio "display"
    And Nelim's Pickle Tools: the camera root size is set to 8
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then Animal Apparel Collars: the camera can see "GalleryHorse"
    When I take a screenshot "gallery-2-horse"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: gallery 3, a husky in a bow collar
    Given Animal Apparel Collars: a tame "Husky" named "GalleryHusky" stands at (125, 96)
    When Animal Apparel Collars: "GalleryHusky" is dressed in "Apparel_dogbow" dyed "#e0307a"
    Then Animal Apparel Collars: the render tree of "GalleryHusky" draws "Apparel_dogbow"
    When Nelim's Pickle Tools: I frame the studio "display"
    And Nelim's Pickle Tools: the camera root size is set to 8
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then Animal Apparel Collars: the camera can see "GalleryHusky"
    When I take a screenshot "gallery-3-husky"
    And Nelim's Pickle Tools: the decor is removed
    Then no errors were logged
