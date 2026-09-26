Feature: Animal Apparel Collars and Kit Renew, declared incompatibilities

  # One pass per incompatible mod (wsl-deps.incompat-<name>.map). Green means the documented symptom
  # still occurs. UNVERIFIED DRAFT: the exact log text has never been observed. Run one pass, read its
  # Player.log, then correct the matched strings. The seven source mods declare the same defNames,
  # so a duplicate-def message is the expected symptom; Dylan's Animal Gear is refused by the framework.

  @allow-errors @requires:Shenanigans.DogCollars
  Scenario: Animal Apparel Collars: Dog Collars still declares the same defNames
    Given mod "Shenanigans.DogCollars" is loaded
    Then an error matching "Apparel_leatherdogcollar" was logged

  @allow-errors @requires:Annabelesca.PatchCollarMalinois
  Scenario: Animal Apparel Collars: Patch Collar Malinois still declares the same defNames
    Given mod "Annabelesca.PatchCollarMalinois" is loaded
    Then an error matching "Apparel_leatherdogcollar" was logged

  @allow-errors @requires:Dipsy.Diapers
  Scenario: Animal Apparel Collars: Animal Diapers still declares the same defName
    Given mod "Dipsy.Diapers" is loaded
    Then an error matching "diaper" was logged

  @allow-errors @requires:flangopink.animalturretpacks
  Scenario: Animal Apparel Collars: Animal Turret Packs still declares the same defNames
    Given mod "flangopink.animalturretpacks" is loaded
    Then an error matching "ATP_" was logged

  @allow-errors @requires:Horse_Plate_Armour
  Scenario: Animal Apparel Collars: Medieval Horse Plate Armour still declares the same defNames
    Given mod "Horse_Plate_Armour" is loaded
    Then an error matching "Apparel_" was logged

  @allow-errors @requires:CSM.RealisticAwesomeGoat
  Scenario: Animal Apparel Collars: RealisticAwesomeGoat still declares the same defName
    Given mod "CSM.RealisticAwesomeGoat" is loaded
    Then an error matching "Apparel_GoatMail" was logged

  @allow-errors @requires:Owlchemist.AnimalGear.Equipment
  Scenario: Animal Apparel Collars: Animal Equipment still declares the same defNames
    Given mod "Owlchemist.AnimalGear.Equipment" is loaded
    Then an error matching "Apparel_" was logged

  @allow-errors @requires:Dylan.AnimalGear
  Scenario: Animal Apparel Collars: Dylan's Animal Gear is still mounted next to the framework
    Given mod "Dylan.AnimalGear" is loaded
    Then mod "Ingendum.AnimalApparelFramework" is loaded
