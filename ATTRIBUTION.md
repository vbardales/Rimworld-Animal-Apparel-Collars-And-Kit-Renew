# Animal Apparel: Collars and Kit — attribution

A migration of six abandoned **Animal Gear** add-ons, plus the unfinished half of a seventh mod,
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

## Sources, one by one

### Dog Collars — Shenanigans

[2644644983](https://steamcommunity.com/sharedfiles/filedetails/?id=2644644983), last supported 1.4.

**Status: public.** No `LICENSE` file, no licence clause in `About.xml`, no linked repository, and
nothing in the body of the Steam description. Dead plus silent, so the ordinary Workshop convention
applies: republished with credit by name and removal on request, without argument.

Everything came across: the four collars, all 924 sprites, all 24 per-mod compatibility folders,
and the `defName`s unchanged (`Apparel_leatherdogcollar`, `Apparel_studdeddogcollar`,
`Apparel_dogbow`, `Apparel_shielddogcollar`).

### Patch Collar Malinois — Annabelesca

[3062026756](https://steamcommunity.com/sharedfiles/filedetails/?id=3062026756), last supported 1.4.

**Status: public**, same reasoning. Annabelesca credits Shenanigans in the description and says the
art and code were reused with permission.

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

**Status: public.** No licence anywhere.

The diaper, its `FilthRate` offset and its 13 sprites. Dipsy listed 57 animals and drew four of
them, and said so on the Workshop page. See "AnimalFallbackInvisible" below for what that meant for
the migration.

### Animal Turret Packs — flangopink and ogam

[3053702877](https://steamcommunity.com/sharedfiles/filedetails/?id=3053702877), last supported 1.4.

**Status: public.** No licence file, none in `About.xml`, and the git repository the mod ships
inside itself has no licence either.

All eight packs, three projectiles and two research projects. They need Vanilla Expanded Framework
(MVCF), so they live in a gated folder; the rest of the mod does not.

### Medieval Horse Plate Armour — Riful

[2586212684](https://steamcommunity.com/sharedfiles/filedetails/?id=2586212684), last supported 1.3.

**Status: public.** No licence anywhere.

Rewritten rather than migrated — see "What could not be carried across as written" below. Riful's
19 textures are all here.

### [CSM]RealisticAwesomeGoat — CSM

[2122692229](https://steamcommunity.com/sharedfiles/filedetails/?id=2122692229), last supported 1.1.

**Status: public.** No licence anywhere.

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

**Status: public, and this one has a real licence — MIT.** The copyright line is
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

Three living mods depend on `Dylan.AnimalGear` and will break the same way the day the switch is
made. **None of them has migrated yet**, checked on 2026-09-07 — none mentions Ingendum anywhere:

| Mod | ID | Declares |
| --- | --- | --- |
| AA Animal Gear for Fancy Rats, by ArmoredAmpharos | 3142386946 | 1.4 1.5 1.6 |
| AA Animal Gear for Super Rats, by ArmoredAmpharos | 3142211574 | 1.4 1.5 1.6 |
| pphhyy's Demigryphs Continued | 3540496928 | 1.6 |

They are their authors' to move, and all three are alive, so nothing here touches them. If they
never do move, the same recipe applies.

## Removal

If any of the authors named above would rather their work were not republished, say so and it comes
down, without argument. The `<author>` field and this file name every one of them.
