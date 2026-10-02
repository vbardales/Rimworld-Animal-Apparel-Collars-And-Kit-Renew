@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, horse set

  @review
  Scenario: Animal Apparel Collars: a horse wears barding, chanfron and saddle together
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Horse" named "Horse" exists near the colony
    When Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorsePlate" dyed "#7a1fa2"
    And Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorseHelmet" dyed "#e0b020"
    And Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorseSaddle" dyed "#2e8b57"
    Then Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: the render tree of "Horse" draws "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: the render tree of "Horse" draws "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorseSaddle"
    And Animal Apparel Collars: the render tree of "Horse" draws "Apparel_MedievalHorseSaddle"
    When Animal Apparel Collars: the camera is framed tight on "Horse"
    Then Animal Apparel Collars: the camera can see "Horse"
    When Animal Apparel Collars: the interface is hidden for the capture
    And Nelim's Pickle Tools: I move the mouse to (5, 5)
    And I take a screenshot "horse-set"
    And Animal Apparel Collars: the interface is shown again
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: universal clothing and a scarf are drawn on a cow
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Cow" named "Cow" exists near the colony
    When Animal Apparel Collars: "Cow" is dressed in "Apparel_LargeAnimalScarf" dyed "#c8202a"
    And Animal Apparel Collars: the camera is framed tight on "Cow"
    Then Animal Apparel Collars: the camera can see "Cow"
    When Animal Apparel Collars: the interface is hidden for the capture
    And Nelim's Pickle Tools: I move the mouse to (5, 5)
    And I take a screenshot "cow-scarf"
    And Animal Apparel Collars: the interface is shown again
    Then Animal Apparel Collars: "Cow" is wearing "Apparel_LargeAnimalScarf"
    And Animal Apparel Collars: the render tree of "Cow" draws "Apparel_LargeAnimalScarf"
    And no errors were logged
