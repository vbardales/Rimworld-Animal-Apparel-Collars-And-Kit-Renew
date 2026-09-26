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

Collars, diapers, clothing, turret packs and horse barding for animals, rebuilt on [Animal Apparel: Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3513825850).

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

Requires Animal Apparel: Framework. Cannot run with Dylan's Animal Gear (the framework's own restriction), nor with any of the seven source mods, which declare the same defNames: disable them. Optional, with per-animal art or patches: Vanilla Animals Expanded, Vanilla Factions Expanded, Alpha Animals, Alpha Mythology (formerly Magical Menagerie), Spidercamp's Dog Pack, Rim Effect, Giddy-Up 2, Combat Extended, and about a dozen other animal mods listed in the repository README. Nothing errors when one is absent.

No per-save data of its own. Removing it mid-game deletes anything crafted from it, like any content mod.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-generated

Code, XML patches, tests and documentation were written with Claude (Anthropic) under my direction and review. The Preview and the ModIcon were generated with DALL-E (OpenAI).

## Thanks

The six authors above and jptrrs; s_m_w, for Animal Apparel: Framework and Basic Armor; Owlchemist; Dylan, for the original Animal Gear. Harmony, and the development-only test tools Pickle and RimLogging, never a dependency of this mod.

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
| Animal Apparel: Framework (s_m_w) | 3513825850 | absent: add a `drafted` row |
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
Visibility, comment subscription and "Watch all activity" (this mod and s_m_w's framework) are hers, by hand.

## Research notes, 2026-09-26 (Workshop pages read one at a time)

Read through a page-to-text tool, so every line below is a summary to double-check on the page before
posting. **Every old page carries a "removed from the community ... incompatible" banner in the summary:
it appears on all of them, including ones that are plainly live; treat it as an artefact to look at, not a fact.**

| Page | Author on the page | Last update | Replies to comments | Source link |
|---|---|---|---|---|
| Animal Apparel: Framework (3513825850) | s_m_w (confirmed by the owner, 2026-09-26; the packageId prefix is Ingendum) | 2024-08-23 as summarised, to check | yes | none |
| Animal Equipment (2568865984) | Owlchemist | 2023-03-06 | inactive; commenters say it "works just fine in 1.6" and mention Basic Armor as a successor | `ohgodspidersno/ohgodspidersno-rimworld-vanilla-animal-armor` |
| Dog Collars (2644644983) | Shenanigans | 2022-11-06 | no | none |
| Animal Diapers (2817510684) | Dipsy | 2022-06-06 | limited (2025 offer to fix it) | none |
| Animal Turret Packs (3053702877) | flango (XML), Ogam (art) | 2023-10-18 | no | none on the page (repo `flangopink/AnimalTurretPacks` exists) |
| Medieval Horse Plate Armour (2586212684) | Riful | 2021-08-27 | no | none |
| [CSM]RealisticAwesomeGoat (2122692229) | CSM | 2020 | yes, playful | none |
| Patch Collar Malinois (3062026756) | Annabelesca | 2023-10-29 | yes, playful | none |

Upstream repositories for a pull request (nothing contacted, a PR is public and needs the owner's word):
`Owlchemist/animal-equipment` is a fork of `ohgodspidersno/ohgodspidersno-rimworld-vanilla-animal-armor`
(both MIT, last push 2023-03-01, issues disabled on the fork); `flangopink/AnimalTurretPacks` (no licence,
last push 2023-10-18). No repository for the other five sources.

### Drafts (BBCode, not posted; the item is private)

Not sent before the item is public, at most three a day, one per page (`WORKSHOP_COMMENTS.md`). Each is
a starting point in her voice to rewrite, not a final text; check the last comments of the page first.
Nothing here claims an in-game test.

Animal Equipment (Owlchemist), register row to add:
```
Your animal riding gear and power armour art was sitting there with no defs to use it, so I wrote the defs. Only the MIT half of Animal Equipment, kept as you had it. Thank you :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Patch Collar Malinois (Annabelesca), register row to add:
```
Your Malinois patch turned out to be Dog Collars plus one animal, so it is now one folder among the others, still credited to you. Explosive detonation collar not included xD [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

[CSM]RealisticAwesomeGoat (CSM), register row to add:
```
The goat mail is the only part I took, the strongest goat stays yours ^^ Thanks for the armour art. [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Animal Apparel: Framework (s_m_w) and the three unanswered authors (Shenanigans, flango/Ogam, Riful):
no draft yet, to write after reading their latest comments live.

### More drafts (2026-09-26, not posted, to rewrite in her voice)

Animal Apparel: Framework (s_m_w), register row to add. The page shows the author replying, including
about a forgotten debug line; keep it light and true.
```
Your framework made this whole rebuild possible, and the neck slot only exists because you left the three body groups so clean to extend. Thank you for answering people so patiently :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Dog Collars (Shenanigans), register row to add. No replies from the author on the page.
```
Four collars, 924 sprites and 24 patch folders, all of it carried over as you drew it, still credited to you. Thank you for the Newfoundland with the capital F that never worked, it works now xD [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Animal Turret Packs (flango and Ogam), register row to add. 2101 subscribers on the page, update requests unanswered.
```
The turret packs are still here on the new framework, art by Ogam and XML by flango, credited. Still one of the funniest things you can strap on a muffalo :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Medieval Horse Plate Armour (Riful), register row to add. Its description thanks Owlchemist and Dylan; the page has update requests, no replies.
```
Your barding and 19 sprites are here for 1.6, rewritten a bit so the saddle sits over the plate. Thanks for thanking Owlchemist and Dylan on your page, I did the same :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806765840]Animal Apparel: Collars and Kit Renew[/url]
```

Check before posting: each claim above (924 sprites, 19 sprites, "still credited") against ATTRIBUTION.md;
no draft claims an in-game test, and none may until the game has run.
