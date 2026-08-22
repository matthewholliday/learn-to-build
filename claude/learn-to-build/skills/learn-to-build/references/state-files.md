# State files

Five files. Keep them small — a bloated log is worse than no log, because you stop reading it.

---

## Global — travels with the learner across every project

### `~/.claude/learn/profile.md`
Who they are and how they want to be taught. Written once by `learn-start`, changed only
when they say something that contradicts it. **Overrides the doctrine on any conflict.**

```markdown
# Learner profile

- Learns by: getting hands on it immediately; needs the *why* before the *how* lands
- Explaining: just enough to keep moving
- When stuck: walk me through how to find it, don't hand me the answer
- When I'm wrong: let me try and find out
- Testing: none — no quizzes, no explain-back, no planted bugs
- Goal: write code by hand first, then get good at directing AI. Aiming at a better job.
- Also: wants to stop feeling shut out of code
- Sessions: long stretches, irregular. Needs a note on where we left off.
- Frustration: make the step smaller, quietly
- Encouragement: mark the real wins only
```

### `~/.claude/learn/progress.md`
Concept coverage and the evidence for it. Append-only, one line per observation. Never shown
to the learner.

```markdown
# Progress

## Learned (rung 4 — used unaided)
- click events — 2026-08-16, added the restart button without being asked how

## In progress
- arrays — rung 2, filled in the gap line for the enemy list
- if/else — rung 3, wrote the win condition, needed a nudge on the comparison

## Not yet touched
- objects, loops, saving data
```

### `~/.claude/learn/ious.md`
Concepts skipped when they used the escape hatch. Never mentioned to them. Every line needs
a **date** and a **hook**, so you can tell how stale it is and what would bring it back
naturally.

```markdown
- 2026-08-16 · **comparing positions** — I wrote the collision check while they were tired.
  Comes back with: anything that needs to know whether two things are touching.
```

A line clears only when you observe them using that concept at rung 3 or above. Re-teaching
does not clear it. See `doctrine.md` §6 for the aging rules — at 3+ sessions old an entry
starts driving what you choose to build next.

### `~/.claude/learn/projects.md`
Everything they've built or started. This is what makes the whole thing a set of tools rather
than one project's scaffolding — without it, a project outside the current folder is invisible.
Created by `learn-start`, touched at the end of every session, closed by `learn-wrap`.

```markdown
# Projects

## Active
- **Asteroid game** · `~/projects/asteroids` · dodge rocks, get a score · last touched 2026-08-16

## Parked
- **Reading tracker** · `~/projects/books` · logs what I've read · parked 2026-07-02 —
  picking back up at: showing the list on the page

## Finished
- **Birthday countdown** · `~/projects/bday` · counts down to a date · finished 2026-06-20
```

Unlike `progress.md` and `ious.md`, this one is **safe to show them** — it's a list of their
own work, and seeing it grow is one of the few honest motivators available.

---

## Per project — lives in the project folder

### `LEARNING.md`
**The only file the learner reads.** Written in plain language, addressed to them, and
updated the moment anything starts working — not at the end of a session, which may never
arrive. This is how they walk back in after three weeks away.

```markdown
# [Project name]

## What this is
One or two sentences, in their words.

## Where we left off
The last thing that started working, and what was being attempted when we stopped.
Write the attempt here *before* starting it, so an interrupted session still leaves a trail.

## What it does right now
- A short list of what actually works.

## What's next
The one thing to pick up first. Not a roadmap — one thing.

## How to run it
Literally which file to open, or which command to run.
```

---

## Rules

- Update `LEARNING.md` **every time something starts working**, not at the end of the
  session. Sessions get interrupted; wins don't un-happen. Commit at the same moment, with a
  plain-language message, so `git log` can rebuild this file if it is ever lost.
- Append to `progress.md` when you observe evidence, not when you teach something. Teaching
  is not learning.
- Update the project's line in `projects.md` at the end of every session — just the date is
  enough. A stale index is worse than none, because `learn-status` trusts it.
- Create `~/.claude/learn/` if it doesn't exist.
- If `profile.md` is missing, don't guess — run `learn-start`.
