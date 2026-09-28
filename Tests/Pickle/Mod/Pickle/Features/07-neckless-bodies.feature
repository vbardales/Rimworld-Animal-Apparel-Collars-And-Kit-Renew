Feature: Animal Apparel Collars and Kit Renew, bodies without a neck

  # Scenario C of TESTING.md. A snake and a megaspider have no Neck part: the shipped patch puts
  # AnimalNeck on the head, so a collar can be worn. The test-only collar is in this companion.
  # Kind names Cobra, Megaspider and Tortoise are Core PawnKindDefs (read in Data/Core/Defs, 2026-09-26).

  @review
  Scenario: Animal Apparel Collars: a snake wears the test collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Cobra" named "Cobra" exists near the colony
    When Animal Apparel Collars: "Cobra" is dressed in "Pickle_TestNeckCollar"
    Then Animal Apparel Collars: "Cobra" is wearing "Pickle_TestNeckCollar"
    And Animal Apparel Collars: "Cobra" apparel covers "AnimalNeck"
    And Animal Apparel Collars: the render tree of "Cobra" draws "Pickle_TestNeckCollar"
    When Animal Apparel Collars: the camera is centered on "Cobra"
    And I zoom all the way in
    Then Animal Apparel Collars: the camera can see "Cobra"
    When I take a screenshot "cobra-test-collar"
    Then no errors were logged

  Scenario: Animal Apparel Collars: a megaspider wears the test collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Megaspider" named "Megaspider" exists near the colony
    When Animal Apparel Collars: "Megaspider" is dressed in "Pickle_TestNeckCollar"
    Then Animal Apparel Collars: "Megaspider" is wearing "Pickle_TestNeckCollar"
    And Animal Apparel Collars: "Megaspider" apparel covers "AnimalNeck"
    And Animal Apparel Collars: the render tree of "Megaspider" draws "Pickle_TestNeckCollar"
    And no errors were logged

  Scenario: Animal Apparel Collars: a tortoise wears the test collar
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Tortoise" named "Tortoise" exists near the colony
    When Animal Apparel Collars: "Tortoise" is dressed in "Pickle_TestNeckCollar"
    Then Animal Apparel Collars: "Tortoise" is wearing "Pickle_TestNeckCollar"
    And Animal Apparel Collars: "Tortoise" apparel covers "AnimalNeck"
    And Animal Apparel Collars: the render tree of "Tortoise" draws "Pickle_TestNeckCollar"
    And no errors were logged
