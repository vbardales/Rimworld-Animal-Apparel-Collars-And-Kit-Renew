@requires:Horse_Plate_Armour @requires:nelim.pickletools.loadaudit
Feature: Animal Apparel Collars and Kit Renew, with Medieval Horse Plate Armour loaded

  # Ticket 0e84 (2026-10-10): the two mods no longer write a common defName (the source's one def, Apparel_Saddle, was renamed here), so
  # the incompatibleWith entry Horse_Plate_Armour rests on nothing the defName check can see. This pass loads both (incompat-horse-plate map,
  # LoadAudit staged) and audits the load log: a patch or texture conflict would show as an error attributable to this mod.
  # Green: the entry may go. Red: the log lines say what still conflicts.

  Scenario: Animal Apparel Collars: the load is clean with Medieval Horse Plate Armour loaded
    Given mod "Horse_Plate_Armour" is loaded
    Then Nelim's Pickle Tools: the load of the mod "nelim.animalapparelcollarsandkit" is clean
