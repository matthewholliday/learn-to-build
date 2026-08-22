# learn-to-build

A set of Claude Code skills that teach a complete beginner to build software **by building
the thing they actually want** — no fixed curriculum, no pre-written lessons, no toy
exercises thrown away at the end.

The learner brings an idea. The system scaffolds it, teaches whatever that idea needs at the
moment it needs it, and hands over the keyboard one rung at a time.

**There are no commands to learn.** They say "it's gone blank and I don't know why" or "I
want to carry on with my game", and the right skill fires on its own.

---

## Install

```bash
git clone https://github.com/YOUR-USERNAME/learn-to-build.git
cd learn-to-build
./install.sh
```

Then restart Claude Code. Everything installs globally, so it works in every project.

The script is non-destructive: it appends to an existing `~/.claude/CLAUDE.md` rather than
overwriting it, and leaves an existing learner profile alone.

<details>
<summary>Manual install</summary>

```bash
mkdir -p ~/.claude/skills && cp -R skills/* ~/.claude/skills/
mkdir -p ~/.claude/learn && cp learn/profile.example.md ~/.claude/learn/profile.md
cp CLAUDE.md ~/.claude/CLAUDE.md   # append instead if the file already exists
```
</details>

## First session

Open a **new empty folder** in Claude Code and describe what you want to make. That's the
whole onboarding.

The first session interviews the learner about how they want to be taught, writes that to
`~/.claude/learn/profile.md`, then gets something visibly working in a browser before they
stop. Not a plan — a thing on screen that does something.

---

## How it works

Two layers, deliberately split:

**`~/.claude/CLAUDE.md` — always on.** The rules that must hold in every session whether or
not a skill fires: why before how, never quiz them, let safe things fail, hand over the
keyboard at the rung they've earned, honour "just do it for me", praise real wins only, save
at the win.

**The skills — invoked by what the learner says.** The session shapes: starting a project,
the main build loop, reading code back, debugging, getting your bearings, wrapping up.

Rules survive being one paragraph among many. Six-step procedures don't — which is why the
procedures stay in skills and get invoked properly rather than half-followed everywhere.

| What they say | What runs |
|---|---|
| "I want to make…" · opens an empty folder | `learn-start` |
| "let's carry on" · "what's next?" | `learn-next` |
| "what does this bit do?" · "I'm lost" | `learn-review` |
| "it's broken" · "I got an error" | `learn-debug` |
| "where was I?" · "what have I got?" | `learn-status` |
| "I think it's done" · "I'm stopping" | `learn-wrap` |

Each also has a slash form (`/learn-next`) as a backstop, but nothing depends on remembering it.

## What it's opinionated about

- **One HTML file** opened in a browser, splitting into separate files only when the project
  gets annoying to navigate, Node only when there's a real reason. No frameworks, no build
  tools — the cost of tooling on a beginner is enormous and mostly invisible to the teacher.
- **Never quizzing.** No "does that make sense?", no explain-back, no planted bugs.
  Understanding is *observed* — what they type unaided, what they spot before you do — never
  requested.
- **Typing before directing.** Hand-writing code first, getting good at directing AI second,
  with the second explicitly gated on the first. Invertible via the profile.
- **The escape hatch is real.** "Just do it for me" is honoured instantly, every time. The
  skipped concept goes on an internal list that ages, and after three sessions it starts
  driving what gets built next — so the hatch stays real without becoming a hole.
- **Projects are allowed to end.** Most end unfinished. `learn-wrap` banks what the learner
  demonstrated so it carries to the next project, and makes stopping a decision rather than a
  failure.
- **Sparing praise.** Real wins only. Constant enthusiasm gets discounted, including the parts
  you meant.

## What it writes

**Global** — `~/.claude/learn/`

| File | |
|---|---|
| `profile.md` | How they want to be taught. Overrides everything else. Theirs to edit. |
| `progress.md` | What they've demonstrated they can do, and the evidence. Internal. |
| `ious.md` | Concepts skipped on a tired day, with dates. Internal. |
| `projects.md` | Everything started: active / parked / finished. Safe to show them. |

**Per project**

| File | |
|---|---|
| `LEARNING.md` | The only file written for them to read. Rewritten the moment anything starts working — not at the end of a session, which may never arrive. |
| `CLAUDE.md` | Four lines pointing at the above, so any session in that folder orients itself. |

Commit messages are required to be plain-language descriptions of what the app can now do, so
`git log` works as a backup copy of `LEARNING.md` if it's ever lost.

## Customising

Three places, in order of how often you'll want them:

1. **`~/.claude/learn/profile.md`** — the learner's preferences. Outranks everything. They can
   edit it, or just tell Claude and it updates itself.
2. **`~/.claude/CLAUDE.md`** — the always-on rules.
3. **`~/.claude/skills/learn-to-build/references/doctrine.md`** — the full teaching contract.
   All six skills read it, so a change here changes every session.

Also worth knowing:
`references/concept-map.md` is the private ordering of what gets taught — never shown to the
learner, used only to break ties when several next steps are equally good.

## A note on the defaults

The shipped profile isn't invented. It's one real beginner's answers to an interview about how
they wanted to be taught — hands-on immediately, why before how, no testing of any kind, walk
me through finding it rather than telling me, real wins only. The doctrine was tuned against
those answers, which is why it's specific rather than hedged.

Your learner will answer differently. `learn-start` interviews them and writes their own
profile, and that file wins every conflict with the defaults.

## Requirements

Claude Code. Nothing else — no runtime, no package manager, no editor setup. The first
project is a single HTML file opened in a browser.
