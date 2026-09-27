@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, horse set

  @review
  Scenario: Animal Apparel Collars: a horse wears barding, chanfron and saddle together
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Horse" named "Horse" exists at (60, 60)
    When Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: "Horse" is dressed in "Apparel_MedievalHorseSaddle"
    Then Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorsePlate"
    And Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorseHelmet"
    And Animal Apparel Collars: "Horse" is wearing "Apparel_MedievalHorseSaddle"
    When I move the camera to "Horse"
    And I zoom all the way in
    Then the camera can see "Horse"
    When I take a screenshot "horse-set"
    Then no errors were logged

  @review
  Scenario: Animal Apparel Collars: universal clothing and a scarf are drawn on a cow
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Cow" named "Cow" exists at (60, 60)
    When Animal Apparel Collars: "Cow" is dressed in "Apparel_LargeAnimalScarf"
    And I move the camera to "Cow"
    And I zoom all the way in
    Then the camera can see "Cow"
    When I take a screenshot "cow-scarf"
    Then Animal Apparel Collars: "Cow" is wearing "Apparel_LargeAnimalScarf"
    And no errors were logged
