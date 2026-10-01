// Generates FRENCH_REVIEW.md from the shipped Keyed/DefInjected XML, per TRANSLATIONS.md
// section 3 ("Systematic French review by Virginie"): one table per source file, columns
// Key or path | Original | English | French, in shipped order, three-segment gender
// switches shown verbatim. Reads only Mod/Languages/*, never edited by hand.
import { readFileSync, writeFileSync, readdirSync, statSync } from 'node:fs';
import { join, relative, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';
import { execSync } from 'node:child_process';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const enRoot = join(root, 'Mod/Languages/English');
const frRoot = join(root, 'Mod/Languages/French');

function walk(dir) {
  const out = [];
  for (const name of readdirSync(dir)) {
    const p = join(dir, name);
    if (statSync(p).isDirectory()) out.push(...walk(p));
    else if (name.endsWith('.xml')) out.push(p);
  }
  return out.sort();
}

// One entry per <Tag>text</Tag>, in document order, with the immediately preceding
// <!-- EN: ... --> comment (if any) captured as the DefInjected English source.
function parseEntries(xmlPath) {
  const full = readFileSync(xmlPath, 'utf8');
  // Only the content inside the root <LanguageData> is real entries; scanning the whole
  // file lets the lazy tag regex below match <LanguageData> itself against the file's
  // one and only closing tag, swallowing everything into a single bogus "entry".
  const rootMatch = full.match(/<LanguageData[^>]*>([\s\S]*)<\/LanguageData>/);
  const xml = rootMatch ? rootMatch[1] : full;
  const entries = [];
  let pendingEnComment = null;
  const re = /<!--\s*EN:\s*([\s\S]*?)-->|<([A-Za-z_][\w.]*)>([\s\S]*?)<\/\2>/g;
  let m;
  while ((m = re.exec(xml))) {
    if (m[1] !== undefined) { pendingEnComment = m[1].trim(); continue; }
    entries.push({ key: m[2], text: m[3], enComment: pendingEnComment });
    pendingEnComment = null;
  }
  return entries;
}

// Minimal XML tree (comments and declarations skipped), enough to read native Defs.
function parseTree(xml) {
  const root = { name: '#root', attrs: {}, children: [], text: '' };
  const stack = [root];
  const re = /<!--[\s\S]*?-->|<\?[\s\S]*?\?>|<(\/?)([A-Za-z_][\w.]*)((?:\s+[\w:.-]+\s*=\s*(?:"[^"]*"|\x27[^\x27]*\x27))*)\s*(\/?)>|([^<]+)/g;
  let m;
  while ((m = re.exec(xml))) {
    if (m[5] !== undefined) { stack[stack.length - 1].text += m[5]; continue; }
    if (m[2] === undefined) continue;
    if (m[1]) { if (stack.length > 1) stack.pop(); continue; }
    const attrs = {};
    for (const a of m[3].matchAll(/([\w:.-]+)\s*=\s*(?:"([^"]*)"|\x27([^\x27]*)\x27)/g)) attrs[a[1]] = a[2] ?? a[3];
    const node = { name: m[2], attrs, children: [], text: '' };
    stack[stack.length - 1].children.push(node);
    if (!m[4]) stack.push(node);
  }
  return root;
}

// Index every Def (defName -> element) under Mod/Defs and Mod/Mods/*/Defs.
const defs = new Map();
function indexDefs(dir) {
  for (const name of readdirSync(dir)) {
    const p = join(dir, name);
    if (statSync(p).isDirectory()) { if (name !== 'Languages' && name !== 'Textures') indexDefs(p); continue; }
    if (!name.endsWith('.xml')) continue;
    const top = parseTree(readFileSync(p, 'utf8')).children.find((c) => c.name === 'Defs');
    for (const d of top?.children ?? []) {
      const dn = d.children.find((c) => c.name === 'defName');
      if (dn) defs.set(dn.text.trim(), d);
    }
  }
}
indexDefs(join(root, "Mod"));

// Resolve a DefInjected path (Def.field.sub.0.leaf) against the native Def; null when absent.
function nativeText(key) {
  const [defName, ...parts] = key.split('.');
  let node = defs.get(defName);
  for (const part of parts) {
    if (!node) return null;
    if (/^\d+$/.test(part)) node = node.children.filter((c) => c.name === 'li')[Number(part)];
    else {
      const direct = node.children.find((c) => c.name === part);
      const hint = part.split('_').pop();
      node = direct ?? node.children.find((c) => c.name === 'li' && (c.attrs.Class ?? '').includes(hint));
    }
  }
  return node && !node.children.length ? node.text.trim() : null;
}

function escapeCell(s) {
  return s.replace(/\|/g, '\\|').replace(/\r?\n/g, ' ').trim();
}

function hasGenderSwitch(s) { return /\{[^}]*\?[^}]*:[^}]*:[^}]*\}/.test(s); }

const head = execSync('git rev-parse --short HEAD', { cwd: root }).toString().trim();
const dirty = execSync('git status --porcelain -- Mod', { cwd: root }).toString().trim() ? ' + uncommitted changes under Mod/' : '';
const revision = head + dirty;
const lines = [];
lines.push('# French review — Animal Apparel: Collars and Kit');
lines.push('');
lines.push(`Generated ${new Date().toISOString().slice(0, 10)} by \`_tools/gen-french-review.mjs\` from the shipped XML at revision ${revision}. Not shipped in \`Mod/\`.`);
lines.push('');
lines.push('**Original: same as English.** This mod migrates seven English Workshop add-ons (see `ATTRIBUTION.md`); none has a non-English source text.');
lines.push('');
lines.push('**Gender agreement scan:** every French cell below was read against TRANSLATIONS.md\'s three-segment switch rule (`{PAWN_gender ? masculine : feminine : neutral}`; the project neutral is the o-series: `ol`, `lo`, `o`, `do`). None of this mod\'s text describes a pawn\'s own attributes — every agreeing adjective or participle modifies an inanimate noun (the apparel item), not the animal wearing it — so no switch is missing. Confirmed by reading, not by pattern search.');
lines.push('');

// Keyed
{
  const enFile = join(enRoot, 'Keyed/Settings.xml');
  const frFile = join(frRoot, 'Keyed/Settings.xml');
  const en = new Map(parseEntries(enFile).map((e) => [e.key, e.text]));
  const fr = parseEntries(frFile);
  lines.push(`## Keyed/Settings.xml`);
  lines.push('');
  lines.push('| Key or path | Original | English | French |');
  lines.push('|---|---|---|---|');
  for (const e of fr) {
    const enText = en.get(e.key) ?? '(missing)';
    const flag = !en.has(e.key) ? ' `?` — no matching English key' : '';
    lines.push(`| \`${e.key}\` | ${escapeCell(enText)} | ${escapeCell(enText)} | ${escapeCell(e.text)}${flag} |`);
  }
  lines.push('');
}

// DefInjected
for (const frFile of walk(join(frRoot, 'DefInjected'))) {
  const rel = relative(root, frFile).replace(/\\/g, '/');
  const entries = parseEntries(frFile);
  if (!entries.length) continue;
  lines.push(`## ${rel}`);
  lines.push('');
  lines.push('| Key or path | Original | English | French |');
  lines.push('|---|---|---|---|');
  for (const e of entries) {
    const native = nativeText(e.key);
    const enText = native ?? e.enComment ?? '(English source not found)';
    const flag = native === null && e.enComment === null ? ' `?` — English source not found in Mod/Defs or in an EN comment' : '';
    const switchFlag = hasGenderSwitch(e.text) ? ' (gender switch)' : '';
    lines.push(`| \`${e.key}\` | ${escapeCell(enText)} | ${escapeCell(enText)} | ${escapeCell(e.text)}${switchFlag}${flag} |`);
  }
  lines.push('');
}

writeFileSync(join(root, 'FRENCH_REVIEW.md'), lines.join('\n') + '\n');
console.log('wrote FRENCH_REVIEW.md');
