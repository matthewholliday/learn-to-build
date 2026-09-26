---
name: learn-status
description: Show the learner where they left off, or list everything they've got on the go. Use when the learner asks where they got to, what's next, what they've learned so far, what projects they have, or comes back after time away and needs their bearings. Also use if they seem unsure what state a project is in, or aren't sure which project to work on.
---

# Where we left off

Read `.kiro/skills/learn-to-build/references/state-files.md`, then
`~/.kiro/learn/projects.md`, `progress.md` and `profile.md`, plus the current project's
`LEARNING.md` if there is one.

Sessions are long and far apart. This is the on-ramp — it needs to be short and it needs to
end with them able to start.

---

## First: are they inside a project, or between projects?

**If the current folder has a `LEARNING.md`** — they want to pick this project back up. Do
the four things below.

**If it doesn't** — they're between projects and probably asking "what have I got?". Show
them `projects.md`: active first, then parked, then finished. This file is theirs and safe to
show. Say what each one is in their own words, and how long it's been.

Then ask which they want, and hand them the move:

> "Open that folder and tell me you want to carry on — or say you'd rather begin something
> new."

Don't nudge them toward the parked ones. A parked project they're not excited about is worth
less than a new idea they are. If nothing appeals, starting fresh in a blank folder is always
a fine answer.

---

## Inside a project: say four things, briefly

1. **What the project is** — one sentence, in their words from `LEARNING.md`.
2. **What it does right now** — a short list of what actually works. This is the part that
   makes coming back feel good, so be concrete: "arrow keys move the paddle" beats
   "input handling".
3. **Where we stopped** — including anything left mid-flight.
4. **The one thing that's next** — one, not a roadmap.

Then open the app and run it, so they see it rather than read about it.

## If they ask what they've learned

Translate `progress.md` out of concept names and into things they can do:

> "You can make things appear on a page, style them, and make them react when you click.
> You've written your own if/else and you fixed the scoring bug yourself last time."

Only list rung-4 items — things they've done unaided. Claiming credit for things they
watched you do will ring false and they'll trust the whole picture less.

**Never** show them the tiers, the rungs, the concept map, `progress.md`, or `ious.md`.
No percentages, no progress bars, no "you're 40% through". This isn't a course.
(`projects.md` is the exception — that's their own work and they should see it.)

If a concept first appeared in an earlier project and turned up again in this one, that's the
strongest thing you can tell them, and it's worth saying out loud:

> "You wrote that from scratch this time, in a completely different app. That's the bit that
> means it's actually yours."

## If `LEARNING.md` is stale or missing

This will happen — sessions end by crashing or by the laptop closing. It is recoverable, and
it is not theirs to solve.

1. Read `git log`. Commit messages are written in plain language for exactly this reason; in
   order, they are a history of what the app learned to do.
2. Read the code for anything committed but not described.
3. Cross-check `progress.md` for what was being worked on.
4. Rewrite `LEARNING.md` from that, then carry on.

Tell them plainly that the notes were behind and you've caught them up. Don't apologise at
length, and don't turn it into a lesson.

## End by handing them the next move

> "Just tell me when you want to pick up the ball movement, and we'll carry on."
