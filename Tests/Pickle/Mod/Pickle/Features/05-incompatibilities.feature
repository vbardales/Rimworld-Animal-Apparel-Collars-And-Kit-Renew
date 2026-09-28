Feature: Animal Apparel Collars and Kit Renew, declared incompatibilities

  # One pass per incompatible mod (wsl-deps.incompat-<name>.map). Green means the documented symptom
  # still occurs: the seven source mods declare the same defNames as this one, so loading either
  # alongside it makes RimWorld's own def loader log a duplicate. Confirmed 2026-09-28 by decompiling
  # Verse.DefDatabase<T>.Add (Assembly-CSharp): the exact line is
  # `Log.Error("Adding duplicate " + typeof(T) + " name: " + def.defName)`, so "Adding duplicate" plus
  # the shared defName is the real, not guessed, symptom. Still unrun: these scenarios need the source
  # mod itself staged, and none of the seven is installed locally to verify against yet.
  #
  # Dylan's Animal Gear is NOT covered here. AUDIT.md's "on ne teste pas le jeu": whether RimWorld
  # actually refuses, warns about, or silently loads two mods marked <incompatibleWith> is the engine's
  # behaviour, not this mod's declaration - and nothing in the framework's own AnimalGear.dll (checked by
  # decompile) runs a check against Dylan.AnimalGear either, so there is no in-game symptom of ours to
  # assert. What this mod answers for is the declaration itself, in About.xml, which is a source-reading
  # check, not a game scenario; not added to _tools/test-xml.ps1 without being asked.

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
