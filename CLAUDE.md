# CLAUDE.md

> **Tenhle soubor má dvě role.** *Průvodce repozitářem* níže je pro agenty pracující **na tomhle repu**.
> *The Four Principles* na konci jsou produkt, který repo dodává — jsou zkopírované na tři místa
> a uživatelé si je stahují přímo přes `curl`.
> Pokud sis soubor zkopíroval do vlastního projektu, smaž průvodce a nech si principy.

---

# Průvodce repozitářem

## Co je tohle repo

Repo **jen s dokumentací**: žádný zdrojový kód, build, testy, linter, package manager ani CI. Celý
deliverable je jeden blok textu — čtyři behaviorální principy podle
[Karpathyho postřehů](https://x.com/karpathy/status/2015883857489522876) o chybách LLM při psaní
kódu — zabalený pro tři různé nástroje. Nic se tu nespouští, takže „správně" znamená *kopie spolu
souhlasí a metadata jsou validní*, ne *testy prošly*.

## Mapa

```
.claude-plugin/plugin.json              manifest pluginu; ukazuje na ./skills/karpathy-guidelines
.claude-plugin/marketplace.json         záznam pro marketplace obalující plugin (source: "./")
.cursor/rules/karpathy-guidelines.mdc   pravidlo pro Cursor, alwaysApply: true  ← kopie principů
skills/karpathy-guidelines/SKILL.md     Agent Skill (Claude Code + Cursor)      ← kopie principů
CLAUDE.md                               tenhle soubor; zároveň cíl raw-fetch instalace
CURSOR.md                               nastavení Cursoru + pravidlo sync pro přispěvatele
README.md / README.zh.md                úvodní stránka anglicky / čínsky
EXAMPLES.md                             dlouhé ❌/✅ příklady kódu, 2–3 na princip
```

## Jediná konvence, na které záleží: držet kopie synchronní

Text principů je ve **třech** souborech. Negenerují se — jsou to ručně udržované duplikáty
a jejich rozjetí je hlavní způsob, jak tohle repo rozbít.

| Soubor | Obsahuje |
|---|---|
| `CLAUDE.md` | principy + patičku „working if" — kanonický zdroj |
| `.cursor/rules/karpathy-guidelines.mdc` | totéž, bajtově identické od `## 1.` dál |
| `skills/karpathy-guidelines/SKILL.md` | principy **bez** patičky, jinak identické |

Po každé editaci principů ověř:

```bash
diff <(sed -n '/^## 1\./,$p' CLAUDE.md) \
     <(sed -n '/^## 1\./,$p' .cursor/rules/karpathy-guidelines.mdc)
# čekej: žádný výstup

diff <(sed -n '/^## 1\./,$p' CLAUDE.md) \
     <(sed -n '/^## 1\./,$p' skills/karpathy-guidelines/SKILL.md)
# čekej: jen závěrečné --- a patičku „working if" jako řádky navíc v CLAUDE.md
```

Pak dorovnej volné parafráze, které jsou **schválně** formulované jinak a nekopírují se mechanicky:
`README.md` („The Four Principles in Detail"), `README.zh.md` (stejné sekce čínsky) a `EXAMPLES.md`,
pokud změna zneplatnila příklad.

## Workflows

**Editace principů** — změna s největším dopadem:

```
1. Uprav CLAUDE.md              → ověř: čte se dobře, nadpisy nezměněné
2. Zrcadli do .mdc + SKILL.md   → ověř: oba diffy výše
3. Uprav prózu v README.md      → ověř: sekce popisuje nový text
4. Uprav README.zh.md           → ověř: odpovídající sekce existuje
5. Zkontroluj EXAMPLES.md       → ověř: žádný příklad principům neodporuje
```

**Editace `README.md`** — `README.zh.md` je plný překlad se sekcemi 1:1 (`## The Problems` →
`## 问题所在`). Přidání nebo odebrání sekce nechá překlad zastaralý; buď uprav obojí, nebo výslovně
řekni, že čínská verze ještě čeká.

**Metadata pluginu** — `version` je v `plugin.json` a **dvakrát** v `marketplace.json` (v `metadata`
a v `plugins[0]`); zvyš všechny tři. `name`, `description`, `author` a `keywords` jsou taky
duplikované. Před commitem prožeň oba JSONy přes `python3 -m json.tool <soubor> > /dev/null`.

**Nový skill** — `skills/<name>/SKILL.md` s frontmatterem (`name`, `description`, `license`) plus
`"./skills/<name>"` do pole `skills` v `plugin.json`. Cesta je relativní ke rootu pluginu; commity
`b26f4c3`, `3cf049f` a `68b67a5` existují jen kvůli opravě téhle cesty a schématu, tak to nehádej.

**Nevymýšlej build.** Ověřuje se čtením Markdownu, dvěma `diff` příkazy a validací obou JSONů.
Nepřidávej `package.json`, linter ani CI workflow, pokud o to nikdo nepožádá.

## Konvence psaní

- **Struktura principu:** `## N. Název` → tučná teze → odrážky → uzavírací test (`The test: …` /
  `Ask yourself: …`). Číslování a čtyři názvy drž stabilní, odkazují na ně READMEs.
- **Interpunkce a hlas:** ASCII pomlčka s mezerami („present them - don't pick silently"), `→` jen
  v transformacích cílů a blocích plánu; imperativ, druhá osoba, zákazy jako ploché „No X.".
  `EXAMPLES.md` má vlastní režim s em dashes a ❌/✅ značkami.
- **Frontmatter:** `SKILL.md` má `name`/`description`/`license`, `.mdc` `description` +
  `alwaysApply: true`; oba `description` jsou schválně stejný string.
- **Produkt je anglicky** — nový text v principech, `SKILL.md`, `.mdc` a READMEs. Česky je jen
  tenhle průvodce. Odkaz na Karpathyho je `https://x.com/karpathy/status/2015883857489522876`.

## Distribuce

Tři nezávislé instalační cesty, změna může rozbít každou:

1. **Plugin** — závisí na obou JSON manifestech a na cestě `skills/`.
2. **Raw fetch** — `curl` `CLAUDE.md` z `main` přímo do projektu, někdy připojením k existujícímu
   souboru. Proto principy musí fungovat samostatně, bez okolního kontextu repa.
3. **Cursor** — commitnutý `.cursor/rules/*.mdc`. Cursor nečte `.claude-plugin/` ani `CLAUDE.md`.

Upstream je `forrestchang/andrej-karpathy-skills`, instalační příkazy v README a `CURSOR.md` míří
tam — nepřesměrovávej je na fork, dokud o to nikdo nepožádá.

## Přispívání

Žádné CI ani PR template, review je ruční — diff je celá záchranná síť, tak drž commity na jedno
téma. Licence MIT, deklarovaná v `README.md`, `plugin.json` a frontmatteru `SKILL.md`.

---

# The Four Principles

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.
They govern work *in* this repo too — this is a repo about not overcomplicating things.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.
