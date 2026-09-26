# Documents read, and their versions

Read on 2026-09-26, in full. Re-read only what has moved since (compare the hash or commit).
Protocol files live in the `rimworld-protocols` repository (`git --git-dir=../rimworld-protocols.git
--work-tree=. log -1 -- <file>` from the monorepo root); the others in the repository that carries them.
Hash = first 10 hex digits of SHA-256.

## Read, and useful

| File | Version read |
| --- | --- |
| AGENTS.md | 3a1d2cb 2026-09-24, 36631e7304 |
| AUDIT.md | 4f034f5 2026-09-26, d5dc23b06e |
| MOD_SETTINGS.md | b83933b 2026-09-23, 404916bc99 |
| PUBLISHING.md | 4f034f5 2026-09-26, 7d34f55d58 |
| TRANSLATIONS.md | f5c2d9d 2026-09-25, 298f74d226 |
| Rimworld-Release-Admin/docs/OPERATIONS.md | f196148 2026-09-25, f6f85474f6 |
| Rimworld-Ticket-Dispatcher/docs/WELCOME.md | 84a20e6 2026-09-26, 135d16d524 |
| STATUS.md (this mod) | df8e28e 2026-09-13, 6d9d6e9912 |
| TESTING.md (this mod) | df8e28e 2026-09-13, 5e3abdd578 |
| README.md, CHANGELOG.md, ATTRIBUTION.md, LICENSE, Mod/About/About.xml | 7060c62 / df8e28e / 7060c62 / 80ece16 / 8183a2b |

## Read, not useful for this mod now (do not re-read when they change, unless the task changes)

- STYLE_RIMWORLD.md (7311308): Preview and ModIcon art rules; both images are accepted, and the
  ModIcon is the owner's to generate.
- WORKSHOP_COMMENTS.md (968de6f): only when drafting thank-you comments (no PUBLICATION.md yet).
- scripts/SEARCHING.md (372c447): corpus search, no search needed.
- PickleTools/README.md (c771bef), PickleTools/Headless/README.md (cfa7aac), PickleTools/docs/steps.md
  (cba3ca1), Rimworld-Ticket-Dispatcher/docs/SUBMIT.md (c0a73a2): Pickle runs. This mod has no
  `Tests/Pickle/`; re-read them if a Pickle suite is written.

## Absent in this mod

PUBLICATION.md, BACKLOG.md, NOTES.md, BUGS.md, `docs/runs/`, `Tests/Pickle/` do not exist.
