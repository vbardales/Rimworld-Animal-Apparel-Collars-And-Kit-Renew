# Animal Apparel: Collars and Kit 1.6

Collars, diapers, clothing, turret packs and horse barding for animals, rebuilt on
[Animal Apparel: Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3513825850).

Six abandoned **Animal Gear** add-ons, plus the half of a seventh that nobody had finished, moved
onto the framework that replaces it. Who wrote what, and under which licence, is in
[ATTRIBUTION.md](ATTRIBUTION.md).

- **Four dog collars** — neck bow, leather, studded, shield — for 78 canines across 21 animal mods.
- **A diaper** that stops an animal spreading filth.
- **Six turret packs and two grenade belts.** Needs Vanilla Expanded Framework; without it the rest
  still loads.
- **Medieval barding, a chanfron and a saddle** for horses, with riding tack for Giddy-Up.
- **Goat mail.**
- **Animal clothing, headwear, riding gear and power armour** — Owlchemist's, whose art Animal
  Apparel: Basic Armor already ships without any def to use it.

Requires the Framework. **Cannot run with Dylan's Animal Gear** (the Framework's own restriction),
nor with any of the seven source mods, which declare the same `defName`s. All eight are listed in
`<incompatibleWith>`.

---

## How the two frameworks differ

This is the whole job, and it is worth writing down: the same migration will face anyone moving an
Animal Gear add-on.

### Wearer restriction

| | Animal Gear (old) | Animal Apparel (new) |
| --- | --- | --- |
| marker | `<li>Animal</li>` | `<li>AnimalApparel</li>` + `<li>AnimalOnly</li>` |
| per animal | `<li>Husky</li>` | `<li>defNameHusky</li>` |
| any animal | `<li>AnimalALL</li>` | no `defName` tag at all |
| mask shader | `<li>AnimalCUTOUTCOMPLEX</li>` | automatic when a `…m` mask sits beside the sprite |
| never drawn | — | `<li>AnimalInvisible</li>` |
| no sprite, no error | — | `<li>AnimalFallbackInvisible</li>` |

### Body part groups

The old framework grafted the **human** `Neck`, `Torso`, `Legs`, `UpperHead` and `FullHead` groups
onto animal bodies. The new one defines three of its own — `AnimalHead`, `AnimalBody`, `AnimalLegs`
— and puts the neck part into `AnimalBody`.

### Textures

The old layout was flat, with the animal's name embedded in the filename:

```
Accessories/DogBow/dogbow_Husky_east.png
```

The new one is a folder per animal, and `wornGraphicPath` is the **directory**:

```
Accessories/DogBow/Husky/Husky_east.png
```

`RenderHelpers.TryGetGraphicApparelForAnimal` builds
`wornGraphicPath + "/" + Capitalize(defName) + "/" + Capitalize(defName)` and tries `_east`; failing
that it tries `wornGraphicPath + "_east"` as one shared graphic for every animal; failing that it
logs an error unless `AnimalFallbackInvisible` is set.

### The recipe for a wearable the framework has not heard of

It is written in the framework itself, in `1.6/Patches/AnimalAccessories.xml`, using the vanilla
shield belt as its example: two `PatchOperationAdd`, one appending `AnimalApparel` to
`apparel/tags`, one appending `AnimalBody` to `apparel/bodyPartGroups`.

---

## Collars have a slot of their own

A collar has nowhere natural to sit among head, body and legs, and sharing a group with body armour
is wrong. So this mod adds a fourth group, **`AnimalNeck`**, and fills it in
`Patches/Bodies_AnimalNeck.xml` the same way the framework fills its own three.

Two cases, because not every animal has a neck:

- **Bodies with a `Neck` part** — every quadruped, plus `Bird` and `Monkey` — get `AnimalNeck` on
  the neck.
- **Bodies without one** — `BeetleLike`, `Snake`, `TurtleLike` and most modded insect bodies — get
  it on the head instead. Vanilla refuses to equip apparel whose body part group is absent from the
  wearer, so without this a collar would simply never be equippable on those animals, silently.
  Dylan's Animal Gear had exactly that hole.

The fallback deliberately does not put those animals into `AnimalHead`, which is the helmet group;
sharing it would make a collar and a helmet exclude each other. One body part can carry several
groups, and the framework's own patch already relies on that.

### What it does *not* fix, and what does

A render tag of one's own is **not possible**, and this is the thing to know before trying:

```csharp
// DynamicPawnRenderNodeSetup_Animal_Apparel.GetDynamicNodes
animalApparelNode = tree.TryGetNodeByTag(AnimalPawnRenderNodeTagDefOf.AnimalApparel, ...)
if (animalApparelNode == null) return false;
foreach (apparel in pawn.apparel.WornApparel) {
    props.baseLayer = animalApparelNode.Props.baseLayer;   // always 70
    props.drawData  = apparel.def.apparel.drawData;        // per item, honoured
    ...
}
```

One tag, looked up through a `DefOf`. A second `PawnRenderNodeTagDef` inserted into the Animal
render tree would be created and never have anything parented to it, so it would change nothing.

The lever that does exist is **`drawData`**, which is read per apparel def.
`PawnRenderNodeWorker.LayerFor` treats its `layer` as a *replacement* for `baseLayer`, not an
offset. So:

| | layer |
| --- | --- |
| everything else, including Basic Armor | 70 |
| collars | 71 |
| riding gear and harnesses | 72 |

---

## Gating modded animals

Every `defName` tag naming an animal from another mod carries `MayRequire`. That is not tidiness.
The framework resolves those tags through

```csharp
DefDatabase<ThingDef>.GetNamed(defName, true)   // errorOnFail: true
```

and it runs that from `CanEquipApparel`, which the apparel-optimisation pass calls constantly, for
every pawn. Ungated, the 84 modded names in this mod would produce a continuous stream of errors for
anyone not running all 21 source mods. The original add-ons listed them unguarded, which was
harmless under the old framework because tags there were only strings.

**The ids had to be checked, not copied.** Taking Shenanigans' 2022 list at face value would have
produced a mod that silently did nothing for a third of its animals: several source mods have been
republished since, under new packageIds, and the folders gated on the old ones would never load.
Every one of the 83 modded animal names was located by scanning the installed Workshop collection
for its `<defName>`, and the gate written from what actually declares it:

| Animals | Written against | Also, or instead, today |
| --- | --- | --- |
| `SC…` (19 dogs) | `mlie.spidercampsdogpack` | `Qux.stray.dogs` — "Stray Dogs (rescued)" |
| `ERN_Dachshund…` | `Dumbs.Dumbs'Dachshunds` | `zal.dumbsdachshunds` |
| `DW_Garmr` | `RebelRabbit.DireWolves` | `zal.wolvesden` |
| `NightlingF` | `kikohi.forsakens` | `zal.forsakens` |
| `RE_Varren` | `RimEffect.Core` | `RimEffectRenegade.Core` |
| `Cynobun` | `SpankyH.BunRace.core` | `SpankyH.BunRace.bundogs` |
| 15 × `AEXP_…` | the individual VAE packs | `VanillaExpanded.VanillaAnimalsExpanded`, the merged pack |

Both ids are kept in every case, so the mod works whichever version of the source someone runs.
`MayRequireAnyOf` takes the list for tags, and `IfModActive` takes the same comma list for folders —
it fills `LoadFolder.requiredAnyOfPackageIds` and is tested with `ModLister.AnyModActiveNoSuffix`,
so one `<li>` covers both ids and the folder is never added twice.

---

## Faults fixed along the way

Eight things were already broken in the sources, six of them silently:

- **Dog Collars** listed `SCNewfoundland`. Spidercamp's dog is `SCNewFoundland`, with a capital F,
  so the Newfoundland has never been able to wear a collar. Under the new framework a name that
  resolves to nothing is no longer merely inert — it is a logged error on every apparel check.
- **Dog Collars**, and Owlchemist's mod with it, gated on packageIds that several of the source
  mods no longer use. See the table above.

- **Dog Collars**, `Mods/VanillaExpanded.VAEEndAndExt`: three operations aimed at `DogCollarBase`,
  `DogBowBase` and `StuddedDogCollarBase` with `defName=`, but those are abstract defs identified by
  a `Name` attribute and have no `defName`. The xpath matched nothing, and the thylacine and African
  wild dog have been missing from the collars' hyperlinks since the mod shipped.
- **Dog Collars**, `LoadFolders.xml`: the Arid Shrubland folder was gated on the *Boreal Forest*
  packageId — `<li IfModActive="VanillaExpanded.VAEBF">Mods/VanillaExpanded.VAEAS</li>`.
- **Medieval Horse Plate Armour**: its Giddy-Up patch used `GiddyUpCore.CompProperties_Overlay`. In
  Giddy-Up 2 the type is `GiddyUp.CompProperties_Overlay` — same assembly name, different namespace.
  An unresolvable `Class=` makes RimWorld discard the whole def it appears in.
- **Medieval Horse Plate Armour**: the same patch was gated with `PatchOperationFindMod` on the
  display name `Giddy-Up! Core`. The living mod is called "Giddy-Up 2 - Continued", so that test can
  never pass again. Gated on the packageId here.
- **Medieval Horse Plate Armour**: `offsetDefault` was `(0,0,0,0)` for a `Vector3`.
- **Animal Equipment**: its toggle patch used `VFECore.PatchOperationToggableSequence`. VEF 1.6
  renamed the namespace to `VEF`.

And one that was only a missed opportunity: Owlchemist shipped horse riding-gear sprites in the
released mod without ever adding `Horse` to the bridle's tag list, so nothing could wear them.

---

## Layout

```
Mod/
  About/About.xml
  LoadFolders.xml
  Defs/Bodies/          AnimalNeck
  Defs/ThingDefs/       collars, diaper, goat mail, horse gear, clothing, scarves, power armour
  Defs/ResearchDefs/    the shared "animal gear" research tab
  Patches/              the AnimalNeck body patch
  Textures/             1400 sprites, restructured into the new per-animal layout
  Languages/French/
  Mods/<packageId>/     per-mod art and hyperlinks, gated in LoadFolders.xml
  Mods/VEF/             turret packs and the universal pieces, gated on Vanilla Expanded Framework
```

`LoadFolders.xml` must keep that exact capitalisation. RimWorld looks for the literal string and
does not case-fold it; on Windows NTFS hides the mistake, on Linux and the Steam Deck the file is
simply not found, the game falls back to default loading, and every conditional branch disappears
without an error message.
