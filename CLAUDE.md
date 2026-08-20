# CLAUDE.md

> **This file has two jobs.** The **Repository Guide** below orients agents working *on this repo*.
> **The Four Principles** at the bottom are the product this repo ships — they are copied verbatim
> into three places and fetched raw by downstream users.
> If you copied this file into your own project, delete the Repository Guide and keep the principles.

---

# Repository Guide

## What this repo is

A **documentation-only** repo. There is no source code, no build, no test suite, no linter, no
package manager, no CI. The entire deliverable is one block of prose — four behavioral principles
derived from [Andrej Karpathy's observations](https://x.com/karpathy/status/2015883857489522876)
on LLM coding pitfalls — packaged for three different agent tools.

Nothing here executes. "Correctness" means *the copies agree and the metadata is valid*, not
*the tests pass*.

## Repository map

```
.claude-plugin/
  plugin.json          Claude Code plugin manifest; points at ./skills/karpathy-guidelines
  marketplace.json     Marketplace listing that wraps the plugin (source: "./")
.cursor/rules/
  karpathy-guidelines.mdc   Cursor project rule, alwaysApply: true  ← copy of the principles
skills/karpathy-guidelines/
  SKILL.md             Agent Skill (Claude Code + Cursor)           ← copy of the principles
CLAUDE.md              This file; also the raw-fetch target for per-project install
CURSOR.md              Cursor setup instructions + the contributor sync rule
README.md              English landing page: problem statement, principles, install
README.zh.md           Simplified Chinese translation of README.md
EXAMPLES.md            Long-form ❌/✅ code examples, 2–3 per principle
```

## The one convention that matters: keep the copies in sync

The principles text lives in **three** files. They are not generated — they are hand-maintained
duplicates, and drift is the main failure mode of this repo.

| File | Contains | Notes |
|------|----------|-------|
| `CLAUDE.md` | Full principles + the "working if" footer | Canonical source |
| `.cursor/rules/karpathy-guidelines.mdc` | Full principles + footer | Byte-identical from `## 1.` onward |
| `skills/karpathy-guidelines/SKILL.md` | Full principles, **no** footer | Otherwise byte-identical |

Verify after any edit to the principles:

```bash
diff <(sed -n '/^## 1\./,$p' CLAUDE.md) \
     <(sed -n '/^## 1\./,$p' .cursor/rules/karpathy-guidelines.mdc)
# expect: no output

diff <(sed -n '/^## 1\./,$p' CLAUDE.md) \
     <(sed -n '/^## 1\./,$p' skills/karpathy-guidelines/SKILL.md)
# expect: only the trailing --- + "working if" footer as CLAUDE.md-only lines
```

Then update the prose restatements, which are *deliberately* worded differently and must not be
mechanically copied: `README.md` ("The Four Principles in Detail"), `README.zh.md` (same sections
in Chinese), and `EXAMPLES.md` if the change invalidates an example.

## Workflows

**Editing the principles** — the high-blast-radius change:

```
1. Edit CLAUDE.md          → verify: reads cleanly, headings unchanged
2. Mirror into .mdc + SKILL.md → verify: both diff commands above
3. Update README.md prose  → verify: section still describes the new text
4. Update README.zh.md     → verify: matching section exists (see below)
5. Check EXAMPLES.md       → verify: no example now contradicts the principles
```

**Editing `README.md`** — `README.zh.md` is a full translation with a 1:1 section mapping
(`## The Problems` → `## 问题所在`, `## Install` → `## 安装`, etc.). A README change that adds or
removes a section leaves the translation stale; either update both or say explicitly that the
Chinese version still needs it. Precedent: commit `2c60614` synced the Cursor section into `README.zh.md`
one commit after `fb7a22c` added it.

**Changing plugin metadata** — `version` appears in `.claude-plugin/plugin.json` and twice in
`.claude-plugin/marketplace.json` (once in `metadata`, once in the `plugins[0]` entry). Bump all
three together. `name`, `description`, `author`, and `keywords` are also duplicated across the two
files. Validate before committing:

```bash
python3 -m json.tool .claude-plugin/plugin.json > /dev/null
python3 -m json.tool .claude-plugin/marketplace.json > /dev/null
```

**Adding a skill** — create `skills/<name>/SKILL.md` with YAML frontmatter (`name`, `description`,
`license`) and add `"./skills/<name>"` to the `skills` array in `plugin.json`. The path is relative
to the plugin root; earlier commits (`b26f4c3`, `3cf049f`, `68b67a5`) exist purely to fix this path
and the manifest schema, so get it right rather than guessing.

**Verification, generally** — there is nothing to run. Verify by reading the rendered Markdown,
running the two `diff` commands, and validating the two JSON files. Do not invent a build step,
add a `package.json`, or introduce a linter or CI workflow unless asked.

## Writing conventions

Match the existing text exactly; it is stylistically consistent on purpose.

- **Structure per principle:** `## N. Title` → bold one-line thesis → bullet list → a closing
  "test" line (`The test: ...` / `Ask yourself: ...`). Keep the numbering and the four titles stable —
  external links and the READMEs reference them.
- **Punctuation:** ASCII hyphen with spaces for asides inside the principles
  ("present them - don't pick silently"); `→` only inside the goal-transformation examples and plan
  blocks. `EXAMPLES.md` uses em dashes freely — that file has its own register.
- **Voice:** imperative, second person, no hedging. Short declarative sentences. Prohibitions are
  stated as flat "No X." bullets.
- **Frontmatter:** `SKILL.md` uses `name` / `description` / `license`; the `.mdc` rule uses
  `description` / `alwaysApply: true`. The two `description` values are intentionally the same string.
- **Markers:** `EXAMPLES.md` uses `**❌ What LLMs Do**` / `**✅ What Should Happen**` and separates
  major sections with `---`. Keep it.
- **Attribution:** the Karpathy link is
  `https://x.com/karpathy/status/2015883857489522876` — reuse it, don't paraphrase the source.

## Distribution surfaces

Three independent install paths; a change can break any of them:

1. **Plugin** — `/plugin marketplace add forrestchang/andrej-karpathy-skills` then
   `/plugin install andrej-karpathy-skills@karpathy-skills`. Depends on both JSON manifests and the
   `skills/` path.
2. **Raw fetch** — users `curl` `CLAUDE.md` from `main` straight into their project, sometimes
   appending it to an existing file. This is why the principles must stand alone without the
   surrounding repo context.
3. **Cursor** — the committed `.cursor/rules/*.mdc`, or copied into another project's
   `.cursor/rules/`. Cursor does not read `.claude-plugin/` or `CLAUDE.md`.

The upstream repo is `forrestchang/andrej-karpathy-skills`; install strings in `README.md`,
`README.zh.md`, and `CURSOR.md` point there. Leave them pointing upstream unless asked to re-point
a fork.

## Contributing

No CI, no PR template, no `.github/` directory — review is by hand, so the diff is the whole safety
net. Keep commits scoped to one concern (the history is one-liners: "add cursor support",
"Fix plugin structure for Claude Code compatibility"). License is MIT, declared in `README.md`,
`plugin.json`, and the `SKILL.md` frontmatter.

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
