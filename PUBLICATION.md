# Publication: Animal Apparel: Collars and Kit Renew (unofficial)

Workshop item `3806765840` (private, created by the 0.1.0 prepublication of 2026-09-23). Package
`nelim.animalapparelcollarsandkitrenew`. Repository
`vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew`. Status: not publishable yet, see
STATUS.md (`stage: horsMonoRepo`, no game run, no Pickle suite).

## Steam description

Single source, Markdown. The CI derives the Steam BBCode and the plain-text `<description>` of
`About.xml` from it (`OPERATIONS.md`, "Changing where the Steam description comes from"). No code
fence inside. Nothing here claims in-game testing, because none has been done.
`About.xml` still holds a hand-written BBCode description and is not synced yet: migrate with the
generator's `--about-from-description`, read the diff, before the first CI publish.

```markdown
UNOFFICIAL. This mod is published without the original author's explicit consent.
If the original author contacts me to request its removal, I undertake to take it down promptly.

Collars, diapers, clothing, turret packs and horse barding for animals, rebuilt on [Animal Apparel: Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3513825850) by Ingendum.

Dylan's Animal Gear is being retired, and its successor declares itself incompatible with it. The day you switch frameworks, everything built on the old one stops. This mod carries that content across.

## What is in it

- Four dog collars (a neck bow, a leather collar, a studded collar and a shield collar) fitting 78 canines across 21 animal mods. From "Dog Collars" by Shenanigans, with "Patch Collar Malinois" by Annabelesca folded in.
- A diaper that stops an animal spreading filth. From "Animal Diapers" by Dipsy.
- Six turret packs and two grenade belts. From "Animal Turret Packs" by flangopink and ogam. Needs Vanilla Expanded Framework; without it the rest still loads.
- Medieval barding, a chanfron and a saddle for horses, plus riding tack for Giddy-Up. From "Medieval Horse Plate Armour" by Riful.
- Goat mail, from "[CSM]RealisticAwesomeGoat" by CSM (the armour only, not that mod's goat rebalance).
- Animal clothing, headwear, riding gear and power armour, from "Animal Equipment" by Owlchemist, a continuation of "Animal Armor: Vanilla" by jptrrs.

## Collars have their own slot

The framework gives animals three body part groups, so a collar would share a slot with body armour. This mod adds a fourth, AnimalNeck, on the neck of every non-human body (and on the head for bodies without a neck, such as insects and snakes). Collars also draw one layer above armour.

## Settings

With Vanilla Expanded Framework active, open Mod options, then this mod's name: disable universal placeholder apparel, and exclude animal apparel from new relics. Existing VEF choices are kept. Changes apply after restarting RimWorld. An optional main-bar shortcut is hidden by default for customization mods to reveal.

## Compatibility

Requires Animal Apparel: Framework. Cannot run with Dylan's Animal Gear (the framework's own restriction), nor with any of the seven source mods, which declare the same defNames: disable them. Optional, with per-animal art or patches: Vanilla Animals Expanded, Vanilla Factions Expanded, Alpha Animals, Magical Menagerie, Spidercamp's Dog Pack, Rim Effect, Giddy-Up 2, Combat Extended, and about a dozen other animal mods listed in the repository README. Nothing errors when one is absent.

No per-save data of its own. Removing it mid-game deletes anything crafted from it, like any content mod.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-generated

Code, XML patches, tests and documentation were written with Claude (Anthropic) under my direction and review. The Preview and the ModIcon were generated with DALL-E (OpenAI).

## Thanks

The six authors above and jptrrs; Ingendum, for Animal Apparel: Framework and Basic Armor; Owlchemist; Dylan, for the original Animal Gear. Harmony, and the development-only test tools Pickle and RimLogging, never a dependency of this mod.

Credits, licence scope and the source-by-source assessment are in ATTRIBUTION.md and LICENSE (MIT for original contributions and Animal Equipment only).

[Source code on GitHub](https://github.com/vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew)
```

## Change notes

Sent by the CI as written (BBCode); the first line must carry exactly the version.
Drafted for the first real release; fill it in when the 1.0.0 content is final.

### 1.0.0

```
[b]1.0.0[/b]

First release. Six abandoned Animal Gear add-ons, and the unfinished half of a seventh, moved onto Animal Apparel: Framework for RimWorld 1.6.
[list]
[*]AnimalNeck slot and collars one layer above armour.
[*]Localized settings under Mod options (with Vanilla Expanded Framework), English and French.
[*]Diaper no longer references the missing VAE gorilla with Odyssey.
[/list]
```

## Gallery (manual, on the Steam page)

No captures exist. The gallery is a manual step (the CI only sends the header image). Planned order,
to be produced by a dedicated Pickle scenario, zoomed close enough that the gear is visible:
1. A dog wearing a collar over body armour (shows the AnimalNeck slot and the layer order).
2. The horse set (barding, chanfron, saddle).
3. A turret pack on a large animal (VEF pass).
4. The settings page under Mod options.
Put them, and only them, in a folder numbered `01-`, `02-`... and open each one before upload.

## Dependencies and DLC

- **Hard** (in `modDependencies`): Animal Apparel: Framework, `Ingendum.AnimalApparelFramework`, 3513825850.
- **Optional** (`loadAfter`, conditional folders, `MayRequire`): Basic Armor (`Ingendum.AnimalArmorBasic`),
  Vanilla Expanded Framework (`OskarPotocki.VanillaFactionsExpanded.Core`, 2023507013), Giddy-Up 2
  (`MemeGoddess.GiddyUp`), Combat Extended (`CETeam.CombatExtended`), and the 21 animal mods gating the art
  folders. Details and hashes: DEPENDENCIES.md.
- **DLC**: none required. Odyssey changes the VAE gorilla and is handled by a patch (scenario F).
- Verified against sources on 2026-09-13; no runtime combination has been played.

## Adult content

Nothing adult in the text or images. The Preview and ModIcon are a scene and a mascot; the 1400 sprites are
animal apparel. Still to do before the first CI publish: open a sample of the sprites and the Preview again
and answer the Steam boxes with that, not from file names.

## Thank-you comments

Register: `WORKSHOP_COMMENTS.md`. Nothing is drafted or posted for this mod, and nothing is posted until the
item is public. Recipients still to resolve by reading their pages (Continued pages name two people):

| Recipient | Workshop ID | Register state |
|---|---:|---|
| Animal Apparel: Framework (Ingendum) | 3513825850 | absent: add a `drafted` row |
| Dog Collars (Shenanigans) | 2644644983 | absent |
| Animal Diapers (Dipsy) | 2817510684 | absent (Dipsy offered to fix it on 2025-06-14: read the page first) |
| Animal Turret Packs | 3053702877 | absent |
| Medieval Horse Plate Armour | 2586212684 | absent |
| Animal Equipment (Owlchemist) | 2568865984 | absent |
| Harmony | 2009463077 | `posted`: add this mod to `Covers`, do not repost |
| Pickle, RimLogging | 3791648678, 3733484696 | `posted`: same, only once a Pickle suite exists |
| RIMMSQOL | 1084452457 | `posted`: same, only once its shortcut has been tested with it |
| Vanilla Expanded Framework | 2023507013 | `posted` (PickleTools): add to `Covers` if named |

Write each one following "Writing a comment" in `WORKSHOP_COMMENTS.md`: her voice, one true detail, one
hidden `[url=]` link to this mod, 150 to 350 characters, at most three a day.

## After the first upload

Commit nothing new for the ID (already in `da1df6e`). Remove the 1400 generated `.dds` from `Mod/` first.
Then `PUBLISHING.md`: dry-run of the exact SHA, `dispatch-publish.sh`, Virginie approves `steam-production`.
Visibility, comment subscription and "Watch all activity" (this mod and Ingendum's framework) are hers, by hand.
