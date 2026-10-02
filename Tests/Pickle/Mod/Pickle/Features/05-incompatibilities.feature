Feature: Animal Apparel Collars and Kit Renew, declared incompatibilities

  # One pass per incompatible mod (wsl-deps.incompat-<name>.map). Green means the documented symptom
  # still occurs: the seven source mods declare the same defNames as this one, so loading either
  # alongside it makes RimWorld's own def loader log a duplicate. Confirmed 2026-09-28 by decompiling
  # Verse.DefDatabase<T>.Add (Assembly-CSharp): the exact line is
  # `Log.Error("Adding duplicate " + typeof(T) + " name: " + def.defName)`, so "Adding duplicate" plus
  # the shared defName is the real, not guessed, symptom. Still unrun: these scenarios need the source
  # mod itself staged, and none of the seven is installed locally to verify against yet.
  #
  # 2026-10-02 (a2fe, Dog Collars): the first version read the game log for the duplicate error and saw 0 errors,
  # because load-time errors are not in Log.Messages when a scenario runs. The scenarios now compare the defNames
  # written in the two mods' own Defs files, which is the cause of the clash and does not depend on the log.
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
    Then Animal Apparel Collars: mod "Shenanigans.DogCollars" still defines a defName that this mod defines too

  @allow-errors @requires:Annabelesca.PatchCollarMalinois
  Scenario: Animal Apparel Collars: Patch Collar Malinois still declares the same defNames
    Given mod "Annabelesca.PatchCollarMalinois" is loaded
    Then Animal Apparel Collars: mod "Annabelesca.PatchCollarMalinois" still defines a defName that this mod defines too

  @allow-errors @requires:Dipsy.Diapers
  Scenario: Animal Apparel Collars: Animal Diapers still declares the same defName
    Given mod "Dipsy.Diapers" is loaded
    Then Animal Apparel Collars: mod "Dipsy.Diapers" still defines a defName that this mod defines too

  @allow-errors @requires:flangopink.animalturretpacks
  Scenario: Animal Apparel Collars: Animal Turret Packs still declares the same defNames
    Given mod "flangopink.animalturretpacks" is loaded
    Then Animal Apparel Collars: mod "flangopink.animalturretpacks" still defines a defName that this mod defines too

  @allow-errors @requires:Horse_Plate_Armour
  Scenario: Animal Apparel Collars: Medieval Horse Plate Armour still declares the same defNames
    Given mod "Horse_Plate_Armour" is loaded
    Then Animal Apparel Collars: mod "Horse_Plate_Armour" still defines a defName that this mod defines too

  @allow-errors @requires:CSM.RealisticAwesomeGoat
  Scenario: Animal Apparel Collars: RealisticAwesomeGoat still declares the same defName
    Given mod "CSM.RealisticAwesomeGoat" is loaded
    Then Animal Apparel Collars: mod "CSM.RealisticAwesomeGoat" still defines a defName that this mod defines too

  @allow-errors @requires:Owlchemist.AnimalGear.Equipment
  Scenario: Animal Apparel Collars: Animal Equipment still declares the same defNames
    Given mod "Owlchemist.AnimalGear.Equipment" is loaded
    Then Animal Apparel Collars: mod "Owlchemist.AnimalGear.Equipment" still defines a defName that this mod defines too
