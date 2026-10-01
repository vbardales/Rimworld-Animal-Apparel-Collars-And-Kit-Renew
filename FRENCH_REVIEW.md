# French review — Animal Apparel: Collars and Kit

Generated 2026-10-01 by `_tools/gen-french-review.mjs` from the shipped XML at revision 1d79353. Not shipped in `Mod/`.

**Original: same as English.** This mod migrates seven English Workshop add-ons (see `ATTRIBUTION.md`); none has a non-English source text.

**Gender agreement scan:** every French cell below was read against TRANSLATIONS.md's three-segment switch rule (`{PAWN_gender ? masculine : feminine : neutral}`; the project neutral is the o-series: `ol`, `lo`, `o`, `do`). None of this mod's text describes a pawn's own attributes — every agreeing adjective or participle modifies an inanimate noun (the apparel item), not the animal wearing it — so no switch is missing. Confirmed by reading, not by pattern search.

## Keyed/Settings.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `AA_CK_SettingsScope` | These settings apply to all saves and take effect after restarting RimWorld. Existing Vanilla Expanded Framework choices are preserved. | These settings apply to all saves and take effect after restarting RimWorld. Existing Vanilla Expanded Framework choices are preserved. | Ces réglages s'appliquent à toutes les sauvegardes après un redémarrage de RimWorld. Les choix déjà enregistrés dans Vanilla Expanded Framework sont conservés. |
| `AA_CK_Universal` | Disable universal animal apparel | Disable universal animal apparel | Désactiver les vêtements universels pour animaux |
| `AA_CK_UniversalHelp` | Default: off. Removes the five universal pieces that use placeholder art. Species-specific equipment stays available. After restarting, disabled pieces already in saves will be missing: store a backup before enabling this option. | Default: off. Removes the five universal pieces that use placeholder art. Species-specific equipment stays available. After restarting, disabled pieces already in saves will be missing: store a backup before enabling this option. | Par défaut : désactivé. Retire les cinq pièces universelles aux graphismes provisoires. L'équipement propre à chaque espèce reste disponible. Après redémarrage, les pièces désactivées déjà présentes dans les sauvegardes seront manquantes : conservez une copie de sauvegarde avant d'activer cette option. |
| `AA_CK_Relics` | Exclude animal apparel from relics | Exclude animal apparel from relics | Exclure l'équipement animal des reliques |
| `AA_CK_RelicsHelp` | Default: on. Prevents newly selected relics from using this animal apparel when Vanilla Ideology Expanded - Relics and Artifacts is active. Existing relics are not converted. | Default: on. Prevents newly selected relics from using this animal apparel when Vanilla Ideology Expanded - Relics and Artifacts is active. Existing relics are not converted. | Par défaut : activé. Empêche de choisir cet équipement animal comme nouvelle relique lorsque Vanilla Ideology Expanded - Relics and Artifacts est actif. Les reliques existantes ne sont pas converties. |
| `AA_CK_RelicsUnavailable` | Requires Vanilla Ideology Expanded - Relics and Artifacts. Your saved choice is retained while that mod is inactive. | Requires Vanilla Ideology Expanded - Relics and Artifacts. Your saved choice is retained while that mod is inactive. | Nécessite Vanilla Ideology Expanded - Relics and Artifacts. Votre choix enregistré est conservé lorsque ce mod est inactif. |
| `AA_CK_Reset` | Restore defaults | Restore defaults | Rétablir les valeurs par défaut |

## Mod/Languages/French/DefInjected/BodyPartGroupDef/BodyPartGroups_AnimalNeck.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `AnimalNeck.label` | neck | neck | cou |

## Mod/Languages/French/DefInjected/MainButtonDef/ApparelSettings.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `AA_CK_Settings.label` | animal apparel | animal apparel | équipement animal |
| `AA_CK_Settings.description` | Open the Collars and Kit mod settings. | Open the Collars and Kit mod settings. | Ouvrir les options du mod Collars and Kit. |

## Mod/Languages/French/DefInjected/ResearchProjectDef/ResearchProjects_AnimalGear.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `AnimalRidingGear.label` | riding gear | riding gear | harnachement |
| `AnimalRidingGear.description` | Craft new equipment designs aimed to improve animal riding. | Craft new equipment designs aimed to improve animal riding. | Concevoir un équipement destiné à faciliter la monte des animaux. |
| `ComplexAnimalClothing.label` | animal clothing | animal clothing | vêtements pour animaux |
| `ComplexAnimalClothing.description` | Adapt complex clothing to fit onto a variety of domestic animals. | Adapt complex clothing to fit onto a variety of domestic animals. | Adapter les vêtements complexes à la morphologie de divers animaux domestiques. |
| `PoweredAnimalArmor.label` | power armored animals | power armored animals | animaux en armure assistée |
| `PoweredAnimalArmor.description` | Craft high tech power armor made to fit onto domestic animals. | Craft high tech power armor made to fit onto domestic animals. | Fabriquer une armure assistée de haute technologie taillée pour les animaux domestiques. |
| `ATP_Weapons.label` | weaponized animals | weaponized animals | animaux armés |
| `ATP_Weapons.description` | Adapt existing weapon designs into turret packs specially made for animals. | Adapt existing weapon designs into turret packs specially made for animals. | Adapter les armes existantes en sacs-tourelles conçus pour les animaux. |
| `ATP_Charge.label` | animal charge weapons | animal charge weapons | armes à charge pour animaux |
| `ATP_Charge.description` | Craft high tech charge weapons made to fit onto domestic animals. | Craft high tech charge weapons made to fit onto domestic animals. | Fabriquer des armes à charge de haute technologie montables sur des animaux domestiques. |

## Mod/Languages/French/DefInjected/ResearchTabDef/ResearchTabs_AnimalGear.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `AnimalGear.label` | animal gear | animal gear | équipement animal |

## Mod/Languages/French/DefInjected/ThingDef/Apparel_CollarsAndKit.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `Apparel_leatherdogcollar.label` | leather dog collar | leather dog collar | collier de cuir |
| `Apparel_leatherdogcollar.description` | A simple leather collar for dogs and other canines. It provides some protection for the neck. | A simple leather collar for dogs and other canines. It provides some protection for the neck. | Un simple collier de cuir pour les chiens et autres canidés. Il protège un peu le cou. |
| `Apparel_studdeddogcollar.label` | studded dog collar | studded dog collar | collier clouté |
| `Apparel_studdeddogcollar.description` | A leather dog collar reinforced with metal studs for added protection. | A leather dog collar reinforced with metal studs for added protection. | Un collier de cuir renforcé de clous métalliques, pour une meilleure protection. |
| `Apparel_dogbow.label` | dog neck bow | dog neck bow | nœud de cou |
| `Apparel_dogbow.description` | A pretty little neck bow for dogs and other canines. It doesn't provide much protection, but it's a bit better than nothing at all. Plus, it's cute! | A pretty little neck bow for dogs and other canines. It doesn't provide much protection, but it's a bit better than nothing at all. Plus, it's cute! | Un joli petit nœud pour les chiens et autres canidés. Il ne protège pas grand-chose, mais c'est toujours mieux que rien. Et puis, c'est mignon ! |
| `Apparel_shielddogcollar.label` | shield dog collar | shield dog collar | collier à bouclier |
| `Apparel_shielddogcollar.description` | A projectile-repulsion collar. It will attempt to stop incoming projectiles or shrapnel, but does nothing against melee attacks or heat. | A projectile-repulsion collar. It will attempt to stop incoming projectiles or shrapnel, but does nothing against melee attacks or heat. | Un collier répulseur de projectiles. Il tente d'arrêter les tirs et les éclats, mais ne fait rien contre les attaques de mêlée ni contre la chaleur. |
| `diaper.label` | diaper | diaper | couche |
| `diaper.description` | A Diaper animals can wear to eliminate filth production for a short time. | A Diaper animals can wear to eliminate filth production for a short time. | Une couche que les animaux peuvent porter : elle supprime les saletés qu'ils répandent, pour un temps. |
| `Apparel_GoatMail.label` | goat mail | goat mail | cotte de mailles pour chèvre |
| `Apparel_GoatMail.description` | Armor plates covering the body. Protects against gunfire and melee attacks. | Armor plates covering the body. Protects against gunfire and melee attacks. | Des plaques d'armure couvrant le corps. Protège des tirs et des attaques de mêlée. |
| `Apparel_MedievalHorsePlate.label` | horse barding | horse barding | barde de cheval |
| `Apparel_MedievalHorsePlate.description` | Medieval plate barding shaped for a horse. Cumbersome, but it turns aside blades and blunts a charge. | Medieval plate barding shaped for a horse. Cumbersome, but it turns aside blades and blunts a charge. | Une barde de plates médiévale taillée pour un cheval. Encombrante, mais elle dévie les lames et amortit les chocs. |
| `Apparel_MedievalHorseHelmet.label` | horse chanfron | horse chanfron | chanfrein |
| `Apparel_MedievalHorseHelmet.description` | A plate faceguard shaped for a horse's head. Moderate protection against sharp attacks, little against blunt ones. | A plate faceguard shaped for a horse's head. Moderate protection against sharp attacks, little against blunt ones. | Une plaque faciale taillée pour la tête d'un cheval. Protection correcte contre le tranchant, faible contre le contondant. |
| `Apparel_MedievalHorseSaddle.label` | saddle | saddle | selle |
| `Apparel_MedievalHorseSaddle.description` | A saddle for riding a horse, comfortably. | A saddle for riding a horse, comfortably. | Une selle pour monter un cheval, confortablement. |
| `Apparel_SmallAnimalClothes.label` | animal clothes | animal clothes | vêtements pour animal |
| `Apparel_SmallAnimalClothes.description` | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Des vêtements robustes pour animaux. Protègent des intempéries, ainsi que des éraflures et des coupures légères. |
| `Apparel_LargeAnimalClothes.label` | large animal clothes | large animal clothes | vêtements pour grand animal |
| `Apparel_LargeAnimalClothes.description` | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Des vêtements robustes pour animaux. Protègent des intempéries, ainsi que des éraflures et des coupures légères. |
| `Apparel_SmallAnimalScarf.label` | animal headwear | animal headwear | coiffe pour animal |
| `Apparel_SmallAnimalScarf.description` | A specialized piece of headwear made of fabric or leather designed to fit an animal. | A specialized piece of headwear made of fabric or leather designed to fit an animal. | Une coiffe en tissu ou en cuir, taillée pour la tête d'un animal. |
| `Apparel_LargeAnimalScarf.label` | large animal headwear | large animal headwear | coiffe pour grand animal |
| `Apparel_LargeAnimalScarf.description` | A specialized piece of headwear made of fabric or leather designed to fit a large animal. | A specialized piece of headwear made of fabric or leather designed to fit a large animal. | Une coiffe en tissu ou en cuir, taillée pour la tête d'un grand animal. |
| `Apparel_bridle.label` | riding gear | riding gear | harnais de monte |
| `Apparel_bridle.description` | Provides protection and a harness for riding. | Provides protection and a harness for riding. | Offre une protection et un harnais de monte. |
| `Apparel_SmallAnimalPowerArmor.label` | animal power armor | animal power armor | armure assistée pour animal |
| `Apparel_SmallAnimalPowerArmor.description` | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow an animal to wear the armor and still move easily. | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow an animal to wear the armor and still move easily. | Une armure assistée légère conçue pour les animaux de combat. Ses plaques en tissage de plastacier arrêtent très efficacement les attaques et laissent peu d'articulations vulnérables. Des assistances neuro-mémétiques permettent à l'animal de la porter sans perdre sa mobilité. |
| `Apparel_LargeAnimalPowerArmor.label` | large animal power armor | large animal power armor | armure assistée pour grand animal |
| `Apparel_LargeAnimalPowerArmor.description` | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow a large animal to wear the armor and still move easily. | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow a large animal to wear the armor and still move easily. | Une armure assistée légère conçue pour les animaux de combat. Ses plaques en tissage de plastacier arrêtent très efficacement les attaques et laissent peu d'articulations vulnérables. Des assistances neuro-mémétiques permettent à une grande bête de la porter sans perdre sa mobilité. |
| `Apparel_SmallAnimalPowerArmorHelmet.label` | animal power helmet | animal power helmet | casque assisté pour animal |
| `Apparel_SmallAnimalPowerArmorHelmet.description` | A powered helmet with layered plasteel-weave plates, designed specifically for animals. | A powered helmet with layered plasteel-weave plates, designed specifically for animals. | Un casque assisté en tissage de plastacier, conçu pour les animaux. |
| `Apparel_LargeAnimalPowerArmorHelmet.label` | large animal power helmet | large animal power helmet | casque assisté pour grand animal |
| `Apparel_LargeAnimalPowerArmorHelmet.description` | A powered helmet with layered plasteel-weave plates, designed specifically for large animals. | A powered helmet with layered plasteel-weave plates, designed specifically for large animals. | Un casque assisté en tissage de plastacier, conçu pour les grandes bêtes. |

## Mod/Languages/French/DefInjected/ThingDef/Apparel_Universal.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `Apparel_AnimalClothes.label` | universal animal clothes | universal animal clothes | vêtements universels pour animal |
| `Apparel_AnimalClothes.description` | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Rugged apparel for animals. Provides protection against the elements, as well as minor scuffs and cuts. | Des vêtements robustes pour animaux. Protègent des intempéries, ainsi que des éraflures et des coupures légères. |
| `Apparel_AnimalScarf.label` | universal pet scarf | universal pet scarf | écharpe universelle pour animaux |
| `Apparel_AnimalScarf.description` | A stylish accessory for cool, laid back animals. | A stylish accessory for cool, laid back animals. | Un accessoire élégant pour les bêtes décontractées. |
| `Apparel_AnimalReins.label` | universal riding gear | universal riding gear | harnais de monte universel |
| `Apparel_AnimalReins.description` | Provides protection and a harness for riding. | Provides protection and a harness for riding. | Offre une protection et un harnais de monte. |
| `Apparel_AnimalPowerArmor.label` | universal animal power armor | universal animal power armor | armure assistée universelle |
| `Apparel_AnimalPowerArmor.description` | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow an animal to wear the armor and still move easily. | A suit of light powered armor specially designed for combat animals. Layered plasteel-weave plates are very effective at stopping attacks, with few vulnerable joint sections. Neuro-memetic assistors allow an animal to wear the armor and still move easily. | Une armure assistée légère conçue pour les animaux de combat. Ses plaques en tissage de plastacier arrêtent très efficacement les attaques et laissent peu d'articulations vulnérables. Des assistances neuro-mémétiques permettent à l'animal de la porter sans perdre sa mobilité. |
| `Apparel_AnimalPowerArmorHelmet.label` | universal animal power helmet | universal animal power helmet | casque assisté universel |
| `Apparel_AnimalPowerArmorHelmet.description` | A powered helmet with layered plasteel-weave plates, designed specifically for animals. | A powered helmet with layered plasteel-weave plates, designed specifically for animals. | Un casque assisté en tissage de plastacier, conçu pour les animaux. |

## Mod/Languages/French/DefInjected/ThingDef/ThingDefs_AnimalTurretPacks.xml

| Key or path | Original | English | French |
|---|---|---|---|
| `ATP_Apparel_SmallTurret.label` | small animal mini-turret pack | small animal mini-turret pack | petit sac-tourelle |
| `ATP_Apparel_SmallTurret.description` | A small pack of ammunition and components that control a mounted mini-turret designed to be carried by small animals. | A small pack of ammunition and components that control a mounted mini-turret designed to be carried by small animals. | Un petit sac de munitions et de composants pilotant une mini-tourelle, conçu pour être porté par un petit animal. |
| `ATP_Apparel_SmallTurretShotgun.label` | small animal shotgun turret pack | small animal shotgun turret pack | petit sac-tourelle à fusil |
| `ATP_Apparel_SmallTurretShotgun.description` | A small pack of ammunition and components that control a mounted shotgun mini-turret designed to be carried by small animals. | A small pack of ammunition and components that control a mounted shotgun mini-turret designed to be carried by small animals. | Un petit sac de munitions et de composants pilotant une mini-tourelle à fusil à pompe, conçu pour être porté par un petit animal. |
| `ATP_Apparel_SmallTurretCharge.label` | small animal blaster turret pack | small animal blaster turret pack | petit sac-tourelle à charge |
| `ATP_Apparel_SmallTurretCharge.description` | A small pack of ammunition and components that control a mounted blaster mini-turret designed to be carried by small animals. | A small pack of ammunition and components that control a mounted blaster mini-turret designed to be carried by small animals. | Un petit sac de munitions et de composants pilotant une mini-tourelle à charge, conçu pour être porté par un petit animal. |
| `ATP_Apparel_LargeTurret.label` | large animal mini-turret pack | large animal mini-turret pack | grand sac-tourelle |
| `ATP_Apparel_LargeTurret.description` | A small pack of ammunition and components that control a mounted mini-turret designed to be carried by large animals. | A small pack of ammunition and components that control a mounted mini-turret designed to be carried by large animals. | Un sac de munitions et de composants pilotant une mini-tourelle, conçu pour être porté par une grande bête. |
| `ATP_Apparel_LargeTurretShotgun.label` | large animal shotgun turret pack | large animal shotgun turret pack | grand sac-tourelle à fusil |
| `ATP_Apparel_LargeTurretShotgun.description` | A small pack of ammunition and components that control a mounted shotgun mini-turret designed to be carried by large animals. | A small pack of ammunition and components that control a mounted shotgun mini-turret designed to be carried by large animals. | Un sac de munitions et de composants pilotant une mini-tourelle à fusil à pompe, conçu pour être porté par une grande bête. |
| `ATP_Apparel_LargeTurretCharge.label` | large animal blaster turret pack | large animal blaster turret pack | grand sac-tourelle à charge |
| `ATP_Apparel_LargeTurretCharge.description` | A small pack of ammunition and components that control a mounted blaster mini-turret designed to be carried by large animals. | A small pack of ammunition and components that control a mounted blaster mini-turret designed to be carried by large animals. | Un sac de munitions et de composants pilotant une mini-tourelle à charge, conçu pour être porté par une grande bête. |
| `ATP_Apparel_SmallGrenades.label` | small animal grenade belt | small animal grenade belt | petite ceinture de grenades |
| `ATP_Apparel_SmallGrenades.description` | A grenade belt designed to be carried by small animals. | A grenade belt designed to be carried by small animals. | Une ceinture de grenades conçue pour être portée par un petit animal. |
| `ATP_Apparel_LargeGrenades.label` | large animal grenade belt | large animal grenade belt | grande ceinture de grenades |
| `ATP_Apparel_LargeGrenades.description` | A grenade belt designed to be carried by large animals. | A grenade belt designed to be carried by large animals. | Une ceinture de grenades conçue pour être portée par une grande bête. |
| `ATP_Bullet_SmallTurret.label` | mini-turret bullet | mini-turret bullet | balle de mini-tourelle |
| `ATP_Bullet_ShotgunTurret.label` | mini-shotgun blast | mini-shotgun blast | gerbe de mini-fusil |
| `ATP_Bullet_SpacerTurret.label` | mini-turret blaster shot | mini-turret blaster shot | tir de mini-tourelle à charge |
| `ATP_Apparel_SmallTurret.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret gun | mini-turret gun | canon de mini-tourelle |
| `ATP_Apparel_SmallTurret.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic gun made to be strapped onto an animal. | A simple automatic gun made to be strapped onto an animal. | Un canon automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_SmallTurretShotgun.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret shotgun | mini-turret shotgun | fusil à pompe de mini-tourelle |
| `ATP_Apparel_SmallTurretShotgun.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic shotgun made to be strapped onto an animal. | A simple automatic shotgun made to be strapped onto an animal. | Un fusil à pompe automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_SmallTurretCharge.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret charge blaster | mini-turret charge blaster | canon à charge de mini-tourelle |
| `ATP_Apparel_SmallTurretCharge.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic charge blaster made to be strapped onto an animal. | A simple automatic charge blaster made to be strapped onto an animal. | Un canon à charge automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_LargeTurret.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret gun | mini-turret gun | canon de mini-tourelle |
| `ATP_Apparel_LargeTurret.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic gun made to be strapped onto an animal. | A simple automatic gun made to be strapped onto an animal. | Un canon automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_LargeTurretShotgun.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret shotgun | mini-turret shotgun | fusil à pompe de mini-tourelle |
| `ATP_Apparel_LargeTurretShotgun.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic shotgun made to be strapped onto an animal. | A simple automatic shotgun made to be strapped onto an animal. | Un fusil à pompe automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_LargeTurretCharge.comps.Comp_VerbGiver.verbProps.0.visualLabel` | mini-turret charge blaster | mini-turret charge blaster | canon à charge de mini-tourelle |
| `ATP_Apparel_LargeTurretCharge.comps.Comp_VerbGiver.verbProps.0.description` | A simple automatic charge blaster made to be strapped onto an animal. | A simple automatic charge blaster made to be strapped onto an animal. | Un canon à charge automatique simple conçu pour être fixé sur un animal. |
| `ATP_Apparel_SmallGrenades.comps.Comp_VerbGiver.verbProps.0.visualLabel` | grenades | grenades | grenades |
| `ATP_Apparel_SmallGrenades.comps.Comp_VerbGiver.verbProps.0.description` | A grenade belt strapped onto an animal. | A grenade belt strapped onto an animal. | Une ceinture de grenades fixée sur un animal. |
| `ATP_Apparel_LargeGrenades.comps.Comp_VerbGiver.verbProps.0.visualLabel` | grenades | grenades | grenades |
| `ATP_Apparel_LargeGrenades.comps.Comp_VerbGiver.verbProps.0.description` | A grenade belt strapped onto an animal. | A grenade belt strapped onto an animal. | Une ceinture de grenades fixée sur un animal. |

