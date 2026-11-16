# Review refusals

Suggestions of the ChatGPT translation review that were not applied.

| Key or text | Proposal | Reason | Date |
| --- | --- | --- | --- |
| PUBLICATION.md, introduction of the Steam description | Run the documented migration (`--about-from-description`) now | Not a text correction: a publication step, done with the diff read before the first CI publish (PUBLICATION.md says so) | 2026-11-12 |
| ThingDef ATP_Apparel_{Small,Large}Turret{,Shotgun,Charge}.description (six keys) | Reword so the pack, not the turret, is the carried item ("A small pack ... designed to be carried by small animals controls a mounted mini-turret") | Optional style change, flagged optional by the reviewer; the current wording is clear and stays close to the upstream text, so the upstream pull request stays small | 2026-11-12 |
| AA_CK_Settings.description (English and French) | Use the full mod name with "(unofficial)" in the settings button tooltip | The short name "Collars and Kit" is how the mod names itself in game text; the full name with its suffix is a Workshop title, too long for a button tooltip | 2026-11-12 |
| ResearchProjectDef ATP_Weapons.description (English and French) | "Develop turret packs for animals from existing weapon designs." and its French | Optional style change, flagged optional by the reviewer; the current text is understandable and stays close to upstream | 2026-11-12 |
| AA_CK_Settings.description (French), "Ouvrir les options de Collars and Kit." | Short name instead of the long title form | The French long form of the mod title in this description was decided and validated by the owner (2026-11-13, 3b9eef6); same ground as the earlier refusal for English and French | 2026-11-16 |
| Russian Apparel_MedievalHorseHelmet.label "конский налобник" | Native check, maybe шанфрон | Left as is: no proposal imposed, needs a native speaker; the four new languages are not native-reviewed | 2026-11-16 |
| TRANSLATION_REVIEW.md header, "0 missing keys" against the 67 Check-Translations findings | Fix the check or move the French files into the VEF-gated folder | Not a text correction: the 67 findings are French DefInjected keys of defs in the VEF-gated folder, orphan in load states without VEF; kept open with Audit (STATUS.md, 6.c) | 2026-11-16 |
| Chinese Traditional, Russian, Spanish specialised terms (霰彈, 塑鋼, зарядное оружие, налобник, козья кольчуга, armadura motorizada, barda, testera, bláster) | Native verification | Not a text change: needs a native speaker, listed in STATUS.md | 2026-11-16 |
