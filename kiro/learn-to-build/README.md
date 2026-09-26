# learn-to-build — Kiro

A set of Kiro coaching artifacts that teach a complete beginner to build software **by
building the thing they actually want** — no fixed curriculum, no pre-written lessons, no toy
exercises thrown away at the end.

The learner brings an idea. The system scaffolds it, teaches whatever that idea needs at the
moment it needs it, and hands over the keyboard one rung at a time.

**There are no commands to learn.** They say "it's gone blank and I don't know why" or "I
want to carry on with my game", and the right skill fires on its own. A session-start hook
puts Kiro into teaching mode the moment they open the workspace.

---

## Install

```bash
git clone https://github.com/matthewholliday/learn-to-build.git
cd learn-to-build/kiro/learn-to-build
./install.sh /path/to/your/project    # defaults to the current directory
```

On Windows, use the PowerShell installer instead:

```powershell
git clone https://github.com/matthewholliday/learn-to-build.git
cd learn-to-build\kiro\learn-to-build
.\install.ps1 C:\path\to\your\project   # defaults to the current directory
```

The script is non-destructive: it never overwrites an existing steering file, skill, hook, or
learner profile — anything already there is left alone.

<details>
<summary>Manual install</summary>

Copy the coaching artifacts into your project's workspace `.kiro/`, and seed the global
learner state:

```bash
# per-workspace artifacts
mkdir -p <workspace>/.kiro/steering <workspace>/.kiro/skills <workspace>/.kiro/hooks
cp steering/learn-to-build.md        <workspace>/.kiro/steering/
cp -R skills/*                       <workspace>/.kiro/skills/
cp hooks/learn-to-build.kiro.hook    <workspace>/.kiro/hooks/

# global learner state (shared across every project)
mkdir -p ~/.kiro/learn
cp learn/profile.example.md ~/.kiro/learn/profile.md   # skip if it already exists
```
</details>

## First session

Open the project in Kiro and describe what you want to make. That's the whole onboarding.

The session-start hook loads the teaching contract and checks for a learner profile. On the
first ever session it interviews the learner about how they want to be taught, writes that to
`~/.kiro/learn/profile.md`, then gets something visibly working in a browser before they stop.
Not a plan — a thing on screen that does something.

---

## How it works

Three Kiro surfaces, deliberately split:

**Steering — always on.** `.kiro/steering/learn-to-build.md` (`inclusion: always`) carries the
rules that must hold in every session whether or not a skill fires: why before how, never quiz
them, let safe things fail, never build ahead of them, hand over the keyboard at the rung
they've earned, honour "just do it for me", praise real wins only, save at the win. It is the
floor, not the whole contract.

**Skills — invoked by what the learner says.** The six `learn-*` skills carry the session
shapes: starting a project, the main build loop, reading code back, debugging, getting your
bearings, wrapping up. Each skill's description lists the phrasings that make it fire.

**A hook — enters teaching mode automatically.** `.kiro/hooks/learn-to-build.kiro.hook` fires
on `SessionStart` and puts Kiro straight into coaching mode, so the learner never has to ask
to be taught or type a command.

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

**Global** — `~/.kiro/learn/` (shared across every project, so skills carry between them)

| File | |
|---|---|
| `profile.md` | How they want to be taught. Overrides everything else. Theirs to edit. |
| `progress.md` | What they've demonstrated they can do, and the evidence. Internal. |
| `ious.md` | Concepts skipped on a tired day, with dates. Internal. |
| `projects.md` | Everything started: active / parked / finished. Safe to show them. |

**Per project** — in the project's workspace

| File | |
|---|---|
| `LEARNING.md` | The only file written for them to read. Rewritten the moment anything starts working — not at the end of a session, which may never arrive. |
| `.kiro/steering/learn-to-build-project.md` | A few lines pointing at the above, so any Kiro session opened in that folder orients itself. |

Commit messages are required to be plain-language descriptions of what the app can now do, so
`git log` works as a backup copy of `LEARNING.md` if it's ever lost.

## The state split, and why

The coaching **artifacts** (steering, skills, hook) install per workspace, under `.kiro/`. The
learner **state** is split on purpose:

- Cross-project state — `profile.md`, `progress.md`, `ious.md`, `projects.md` — lives global
  at `~/.kiro/learn/`, so a learner opening a brand new folder still arrives with their
  profile, their earned rungs, and their open IOUs. This is the "skills carry between projects,
  projects don't" model.
- Per-project state — `LEARNING.md` and the project orientation steering file — lives in the
  project folder, because it belongs to that one project.

## Customising

Three places, in order of how often you'll want them:

1. **`~/.kiro/learn/profile.md`** — the learner's preferences. Outranks everything. They can
   edit it, or just tell Kiro and it updates itself.
2. **`.kiro/steering/learn-to-build.md`** — the always-on rules.
3. **`.kiro/skills/learn-to-build/references/doctrine.md`** — the full teaching contract.
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

Kiro. Nothing else — no runtime, no package manager, no editor setup. The first project is a
single HTML file opened in a browser.
