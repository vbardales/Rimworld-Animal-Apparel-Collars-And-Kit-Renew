@animal-apparel-collars
Feature: Animal Apparel Collars and Kit Renew, horse set

  @review
  Scenario: Animal Apparel Collars: a horse wears barding, chanfron and saddle together
    Given the save "test-colony" is loaded
    And I spawn a "Horse" pawn at (60, 60)
    When I dress "Horse" in "Apparel_MedievalHorsePlate"
    And I dress "Horse" in "Apparel_MedievalHorseHelmet"
    And I dress "Horse" in "Apparel_MedievalHorseSaddle"
    Then "Horse" is wearing "Apparel_MedievalHorsePlate"
    And "Horse" is wearing "Apparel_MedievalHorseHelmet"
    And "Horse" is wearing "Apparel_MedievalHorseSaddle"
    When I move the camera to (60, 60)
    And I take a screenshot "horse-set"
    Then no errors were logged

  Scenario: Animal Apparel Collars: universal clothing and a scarf are drawn on a cow
    Given the save "test-colony" is loaded
    And I spawn a "Cow" pawn at (60, 60)
    When I dress "Cow" in "Apparel_LargeAnimalScarf"
    And I take a screenshot "cow-scarf"
    Then "Cow" is wearing "Apparel_LargeAnimalScarf"
    And no errors were logged
