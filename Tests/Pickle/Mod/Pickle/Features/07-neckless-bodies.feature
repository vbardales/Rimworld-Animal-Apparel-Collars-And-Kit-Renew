Feature: Animal Apparel Collars and Kit Renew, bodies without a neck

  # Scenario C of TESTING.md. A snake and a megaspider have no Neck part: the shipped patch puts
  # AnimalNeck on the head, so a collar can be worn. The test-only collar is in this companion.
  # Kind names are vanilla PawnKindDefs; check them in the first report.

  @review
  Scenario: Animal Apparel Collars: a snake wears the test collar
    Given the save "test-colony" is loaded
    And I spawn a "Cobra" pawn at (60, 60)
    When I dress "Cobra" in "Pickle_TestNeckCollar"
    Then "Cobra" is wearing "Pickle_TestNeckCollar"
    And "Cobra" apparel covers "AnimalNeck"
    And no errors were logged

  Scenario: Animal Apparel Collars: a megaspider wears the test collar
    Given the save "test-colony" is loaded
    And I spawn a "Megaspider" pawn at (60, 60)
    When I dress "Megaspider" in "Pickle_TestNeckCollar"
    Then "Megaspider" is wearing "Pickle_TestNeckCollar"
    And "Megaspider" apparel covers "AnimalNeck"
    And no errors were logged
