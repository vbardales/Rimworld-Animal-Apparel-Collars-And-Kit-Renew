# Animal Apparel: Collars and Kit — attribution

A migration of six **Animal Gear** add-ons, plus the unfinished half of a seventh mod,
onto **[Animal Apparel: Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3513825850)**
by **Ingendum**.

## Why this exists

Dylan's **Animal Gear** ([1541438907](https://steamcommunity.com/sharedfiles/filedetails/?id=1541438907))
still declares 1.0 through 1.6 and still works, but its author is retiring it. Its successor,
Ingendum's Animal Apparel: Framework, declares

```xml
<incompatibleWith><li>Dylan.AnimalGear</li></incompatibleWith>
```

so the two cannot run side by side. The day you adopt the new framework, every add-on built on the
old one stops. That is what makes this a migration rather than a nicety.

The new framework is not a rival project: its assembly is literally named `AnimalGear.dll`, its
namespace is `AnimalGear`, and its README credits Dylan and Owlchemist. It is a rewrite of the same
mod against RimWorld 1.6's render tree.

## Licence verification — 2026-09-12

Original contributions to this migration and Animal Equipment are declared MIT,
within the scopes stated in `LICENSE`. The upstream MIT notice is reproduced there.

For the other six sources, no licence or permission for reuse in this project was
identified in the materials checked. All six installed Workshop packages were inspected.
Public descriptions were accessible for Dog Collars, Animal Diapers, Animal Turret Packs
and Medieval Horse Plate Armour. Patch Collar Malinois and RealisticAwesomeGoat could
not be reverified online, nor could Animal Turret Packs' current upstream repository.

Abandonment has not been established for every source. In particular,
[Dipsy offered to update Animal Diapers on 2025-06-14](https://steamcommunity.com/sharedfiles/filedetails/?id=2817510684).
Credit and removal on request are project commitments, not licence grants from the authors.
No permission is inferred from public availability or a lack of updates.

## Sources, one by one

### Visibility decision — 2026-09-13

**Decision: retain public visibility and the project's `silent` classification, with
the `(unofficial)` marking.** This is a reasoned application of PUBLISHING.md's
inactive-source policy, not a licence grant or a claim of author approval.
The earlier audit required stronger evidence of abandonment than the protocol
actually specifies. It does not require an explicit retirement announcement.

Here, abandonment is an **inference about maintenance of these particular mods**:
their published releases remain on old game versions, years have passed without a
new release visible on their source pages, and no concrete ongoing port was found in
the material reviewed. An author's online presence or work on other projects does
not itself establish maintenance of this mod. The inference is revisable; it is not
proof that an author will never return. The statement above that abandonment is not
established in every case remains true for explicit, definitive author confirmation.

| Source | Evidence checked on 2026-09-13 | Assessment for this workflow |
| --- | --- | --- |
| [Dog Collars](https://steamcommunity.com/sharedfiles/filedetails/?id=2644644983) | Latest displayed update 2022-11-06; supports 1.3/1.4. Installed package contains no licence notice found by filename/content searches. Description and paginated comments reviewed for reuse/maintenance statements. | Long inactive release; `silent` by inference. No general reuse grant or prohibition found in the reviewed material. |
| [Patch Collar Malinois](https://steamcommunity.com/sharedfiles/filedetails/?id=3062026756) | Latest displayed update 2023-10-29; supports 1.3/1.4. Description credits permission from Shenanigans to Annabelesca; three comments inspected. | Long inactive release; `silent` by inference. That permission concerns her patch and cannot be extended to this project. |
| [Animal Diapers](https://steamcommunity.com/sharedfiles/filedetails/?id=2817510684) | Latest displayed update 2022-06-06; supports 1.3. On 2025-06-14 Dipsy wrote: "I don't actually play RimWorld at all" and "If people want I can try and fix it." No subsequent release is displayed. | Inactive release, with a contrary signal: a conditional offer to return. More than a year later, the inspected page still shows the old release. `silent` is a maintenance inference, not a finding that the author renounced the mod. Reassess if development resumes. |
| [Animal Turret Packs](https://steamcommunity.com/sharedfiles/filedetails/?id=3053702877) | Latest displayed update 2023-10-18; supports 1.4. Public [source repository](https://github.com/flangopink/AnimalTurretPacks) is not archived, has no detected licence, and its latest commit is c1c9852a6e6ddf283691d60b17c3064261e28a4a, dated 2023-10-18. Its recursive main tree contains 20 entries, no LICENSE/README/COPYING/NOTICE. | Long inactive release and repository; `silent` by inference. Being unarchived does not establish active maintenance. Both XML and art remain without an identified grant. |
| [Medieval Horse Plate Armour](https://steamcommunity.com/sharedfiles/filedetails/?id=2586212684) | Published 2021-08-27, one change note, supports 1.3; visible comments request later-version updates. Description contains credits but no reuse terms. | Long inactive release; `silent` by inference. Credits include a texture contribution by boldizsar; no permission from that contributor is inferred either. |
| [[CSM] RealisticAwesomeGoat](https://steamcommunity.com/sharedfiles/filedetails/?id=2122692229) | Published 2020-06-07, one change note, supports 1.1. Description and all six displayed comments inspected; the author's visible reply is from June 2020. | Long inactive release; `silent` by inference. No reuse terms found in the inspected page or installed package. |

Animal Equipment remains **open/MIT**, reverified through its public GitHub
[licence endpoint](https://api.github.com/repos/Owlchemist/animal-equipment/license)
and [licence text](https://github.com/Owlchemist/animal-equipment/blob/master/LICENSE).
The copyright notice remains jptrrs, 2020. This does not cover the other six sources.

Verification scope: the six installed Workshop packages' About files and text files;
all six public descriptions; available comments; and the Animal Turret Packs repository.
The paginated scan retrieved 82 distinct Dog Collars comments, 24 Animal Diapers
comments and 76 distinct Animal Turret Packs comments (77 displayed by Steam).
The automated Horse comment extraction returned no comments; only the comments
visible through the web reader were reviewed. Thus this is not a claim to have searched
every historic comment, private conversation, profile or external licence statement.
Several pages initially failed through the web reader but were accessible using direct
public HTTP requests. Searches did not produce an additional applicable permission.

The public choice follows the project's `silent` policy because the evidence supports
inactive maintenance and no prohibition was found within that scope. It does **not**
follow from MIT on the migration, credit, public availability, or a removal promise.
Those do not supply the missing third-party permissions. A new restriction, licence
or actual resumed maintenance requires reassessment. No author was contacted, no
visibility was changed, and no publication was performed during this verification.

### Dog Collars — Shenanigans

[2644644983](https://steamcommunity.com/sharedfiles/filedetails/?id=2644644983), last supported 1.4.

**Status: no licence identified** in the installed files or accessible Workshop description.

Everything came across: the four collars, all 924 sprites, all 24 per-mod compatibility folders,
and the `defName`s unchanged (`Apparel_leatherdogcollar`, `Apparel_studdeddogcollar`,
`Apparel_dogbow`, `Apparel_shielddogcollar`).

### Patch Collar Malinois — Annabelesca

[3062026756](https://steamcommunity.com/sharedfiles/filedetails/?id=3062026756), last supported 1.4.

**Status: no licence identified** in the installed files. Annabelesca credits Shenanigans
for permission to reuse art and code in her mod. This does not establish permission for
reuse in this project. The public Workshop page could not be reverified.

**Folded into Dog Collars rather than kept separate.** Its `Content/` folder was a verbatim copy of
Shenanigans' — the same four defs, the same abstract `Name=` handles, the same 112 core sprites —
with one line added per def:

```xml
<!-- Belgian Malinois -->
<li>Belgian_Malinois</li>
```

Because it declared the same `defName`s, installing both mods together was a silent overwrite:
RimWorld logs nothing when two mods declare one `defName`, the last loaded simply wins. Here the
Malinois is one more entry in `Mods/Annabelesca.Malinois/`, which is how the mod should have been
written.

### Animal Diapers — Dipsy

[2817510684](https://steamcommunity.com/sharedfiles/filedetails/?id=2817510684), last supported 1.3.

**Status: no licence identified** in the installed files or accessible Workshop description.

The diaper, its `FilthRate` offset and its 13 sprites. Dipsy listed 57 animals and drew four of
them, and said so on the Workshop page. See "AnimalFallbackInvisible" below for what that meant for
the migration.

### Animal Turret Packs — flangopink and ogam

[3053702877](https://steamcommunity.com/sharedfiles/filedetails/?id=3053702877), last supported 1.4.

**Status: no licence identified** in the installed files, including the bundled repository,
or accessible Workshop description. The current upstream repository could not be reverified.

All eight packs, three projectiles and two research projects. They need Vanilla Expanded Framework
(MVCF), so they live in a gated folder; the rest of the mod does not.

### Medieval Horse Plate Armour — Riful

[2586212684](https://steamcommunity.com/sharedfiles/filedetails/?id=2586212684), last supported 1.3.

**Status: no licence identified** in the installed files or accessible Workshop description.

Rewritten rather than migrated — see "What could not be carried across as written" below. Riful's
19 textures are all here.

### [CSM]RealisticAwesomeGoat — CSM

[2122692229](https://steamcommunity.com/sharedfiles/filedetails/?id=2122692229), last supported 1.1.

**Status: no licence identified** in the installed files. The public page could not be reverified.

**The armour only.** That mod is two unrelated things: an Animal Gear add-on (goat mail) and
`Patches/Goat.xml`, a rebalance that gives the vanilla goat `baseBodySize` 7, `baseHealthScale` 10,
`MoveSpeed` 6.5, `Flammability` 0, `ComfyTemperatureMin` -275, `combatPower` 500 and a 2000-silver
market value — the description calls this "more realistic", which is the joke. That patch has
nothing to do with animal apparel and would silently overwrite any other goat balancing, so it is
not here, and neither is the goat retexture that only the patch referred to.

### Animal Equipment — Owlchemist, after jptrrs

[2568865984](https://steamcommunity.com/sharedfiles/filedetails/?id=2568865984), last supported 1.4,
last commit March 2023, source at
[github.com/Owlchemist/animal-equipment](https://github.com/Owlchemist/animal-equipment).

**Status: MIT, confirmed in the upstream GitHub repository.** The copyright line is
`Copyright (c) 2020 jptrrs`: Animal Equipment is Owlchemist's continuation of jptrrs's
*Animal Armor: Vanilla*, and the licence file travelled with it. Reproduced in `LICENSE`, as the MIT
terms require.

**Only the half that Ingendum has not redone.** Animal Apparel: Basic Armor rewrote Owlchemist's
flak and plate tiers for the new framework and stopped there — but it still ships his art for
everything else, sitting unreferenced by any def in the game:

| Family | Sets | Used by Basic Armor |
| --- | --- | --- |
| `Body/Cloth` | 20 animals | no def |
| `Body/Power` | 33 animals | no def |
| `Head/Power` | 27 animals | no def |
| `Accessories` | 42 animals | no def |
| `Riding` | 4 animals | no def |
| `Body/Flak`, `Body/Plate`, `Head/…` | — | yes |

So the clothing, headwear, riding gear and power armour here are the defs that art was drawn for.
The flak and plate tiers are deliberately absent: Basic Armor provides them, and duplicating them
would be pointless and would collide.

**No 1.6 continuation of Animal Equipment exists.** Checked both ways — a search of the Workshop and
the web found none, and the only two installed mods carrying an `AnimalEquipment/` folder are
al9000's *Tasty Armory*, whose copy is entirely commented out and not even referenced from its own
`loadFolders.xml`, and Combat Extended, whose folder is a compatibility patch.

The textures were taken from the **released** mod rather than from GitHub master, because the two
differ: the release has six horse riding-gear sprites and a redrawn cow scarf that never reached the
repository. Owlchemist never added the tag to go with the horse art; it is added here.

## Also credited

- **Ingendum**, for Animal Apparel: Framework and Basic Armor, which this is built on.
- **Owlchemist** again, whose fork of Dylan's Animal Gear was Ingendum's starting point.

## Not migrated, and why

- **Animal Gear Third-Party Patches** ([2956961272](https://steamcommunity.com/sharedfiles/filedetails/?id=2956961272),
  Samael): twelve files of pure compatibility patches against the *old* framework and not one def of
  its own. There is nothing to migrate; it would have to be rewritten from scratch.
- **Animal Gear Collection Chinese Pack** ([1998940296](https://steamcommunity.com/sharedfiles/filedetails/?id=1998940296)):
  a translation, which follows whatever it translates.
- **Owlchemist's flak and plate armour**: covered by Animal Apparel: Basic Armor.
- **Dinosauria art from Animal Equipment**: it is plate and flak only, so it fell out with the rest
  of that tier. Basic Armor already dresses about twenty Dinosauria species.

## Still on the old framework

Two living mods depend on `Dylan.AnimalGear` and will break the same way the day the switch is
made. Checked on 2026-09-11:

| Mod | ID | Declares |
| --- | --- | --- |
| AA Animal Gear for Fancy Rats, by ArmoredAmpharos | 3142386946 | 1.4 1.5 1.6 |
| AA Animal Gear for Super Rats, by ArmoredAmpharos | 3142211574 | 1.4 1.5 1.6 |

Both still name `Dylan.AnimalGear` under `<modDependencies>`, and neither mentions Ingendum
anywhere.

**pphhyy's Demigryphs Continued** ([3540496928](https://steamcommunity.com/sharedfiles/filedetails/?id=3540496928))
was on this list on 2026-09-07 and has since moved. It is the worked example of the recipe in the
[README](README.md): it ships both sets of defs and lets `LoadFolders.xml` choose, so the same
download serves either framework.

```xml
<li IfModActive="ingendum.animalapparelframework" IfModNotActive="Dylan.AnimalGear">1.6/Mods/Animal Armor Framework</li>
<li IfModActive="Dylan.AnimalGear" IfModNotActive="ingendum.animalapparelframework">1.6/Mods/Animal Gear</li>
```

The part that makes the fork legal is elsewhere: its `<modDependencies>` block, `Dylan.AnimalGear`
included, is commented out rather than kept. A mod that still declares the old framework as a hard
dependency cannot sit beside the new one, since the new one refuses to load with it.

The two that remain are their authors' to move, and both are alive, so nothing here touches them.
If they never do move, the same recipe applies.

## Removal

If any of the authors named above would rather their work were not republished, say so and it comes
down, without argument. The `<author>` field and this file name every one of them.
