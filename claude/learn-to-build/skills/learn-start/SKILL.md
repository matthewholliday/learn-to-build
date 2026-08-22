---
name: learn-start
description: Begin a brand new project with the learner — interview them about what they want to make, shrink it to something they can actually finish, build the first working version, and set up their progress files. Use when the learner wants to start something new, has an app or game idea, says they want to build something, or is opening a fresh empty folder. Also use if ~/.claude/learn/profile.md doesn't exist yet, since this creates it.
---

# Start a project

Read `~/.claude/skills/learn-to-build/references/doctrine.md`, `concept-map.md`, and
`state-files.md` before you begin. Then `~/.claude/learn/profile.md` if it exists.

The goal of this session: **something visibly working, in their browser, before they stop.**
Not a plan. Not a setup. A thing on screen that does something, however small.

---

## 1. Work out which kind of start this is

Check whether `~/.claude/learn/profile.md` exists.

### First ever project — no profile

Interview them first. Use AskUserQuestion, ask about *them* rather than about technology, and
keep it to two rounds of four. Cover: how they learn, how much explaining they want, what
helps when stuck, how they want to be corrected, whether they want to be tested, what they're
aiming at, session length, and how much encouragement they want.

Write the answers to `~/.claude/learn/profile.md` in the format in `state-files.md`. Tell them
plainly that you've saved it and they can change it any time by just saying so.

### Any project after the first — profile exists

**Skip the interview entirely.** Then, before anything else, read `progress.md`, `ious.md`
and `projects.md`, and carry the results into this project (`doctrine.md` §11):

- Open every concept at the rung they earned last time. Never restart something at rung 1
  that they've already written unaided. Don't mention rungs.
- Carry open IOUs over. They belong to the learner, not the old project.
- Skip the ceremony. They know how this goes: shorter setup, straight to the idea.
- Shrinking the idea (§3) goes faster too — they've seen a first version work before, so
  they'll trust the cut sooner.

**Check whether Tier 7 opens.** If most of Tier 3 is at rung 4 *and* this is their third
project or later, offer once — at the end of this session, not the start — to build one
feature by directing rather than typing. Their call, no pressure, offer again next project if
they'd rather keep typing.

## 2. Find out what they want to make

Ask in plain words. Let them describe it however they describe it — do not translate their
idea into technical terms back at them, and don't ask clarifying questions that are really
implementation questions in disguise.

You need three things:
- What is it?
- What's the single most fun or satisfying moment in using it?
- Who's it for, even if that's just them?

## 3. Shrink it — carefully

Their first version needs to be finishable in one or two sessions. Almost every real idea
is too big. Shrinking it is the most delicate thing you do all session, because the whole
project runs on their enthusiasm for the idea.

**Find the smallest version that still contains the fun.** Cut features, never cut the
point. If the fun is shooting things, the first version is one thing to shoot — not a menu
screen, not a scoreboard, not settings.

Say what you're doing and why, once:

> "Let's get the [core fun bit] working first, on its own. Once that feels good, everything
> else is much easier to add on top — and if it doesn't feel good, we'll know early and can
> change it."

Then name what's deferred, so they can see it isn't being thrown away:

> "Score, levels and the title screen come after. They're easier than this part."

If they push back on a cut, keep it. Their motivation is worth more than your ordering.

## 4. Build version zero — together

Create one file: `index.html`. Everything in it — HTML, CSS and JavaScript in one place.

Follow the hand-off ladder in the doctrine, at whatever rung `progress.md` says they've
reached — **not** at rung 1 because the project is new.

On a genuine first project that does mean mostly rung 1: you write, they watch, each new piece
gets one sentence of *why* first. Look for one small thing they can type themselves before the
session ends — a colour, a piece of text, a number they choose. Their fingerprints should be on
version zero somewhere.

On a later project, hand them the parts they've already earned and stay quiet. A returning
builder writing their own click handler on day one of project three is the whole point of
keeping `progress.md`.

Show them how to open it in a browser, and make sure they do it themselves at least once.
Refreshing to see a change is the core loop of everything that follows.

Stop when the fun bit works. Not when it's finished.

## 5. Close the session

1. Write `LEARNING.md` in the project folder, in the format in `state-files.md`.
2. Write a short `CLAUDE.md` in the project folder, so that *any* session opened here picks up
   the context even if no skill fires:

   ```markdown
   # [Project name] — a learning project

   Built by someone learning to code. Coaching rules: `~/.claude/CLAUDE.md`, and
   `~/.claude/skills/learn-to-build/references/doctrine.md` for the full contract.

   Read `LEARNING.md` before saying anything — it's where we left off.

   Run it by: [opening index.html in a browser]
   ```
3. Create `~/.claude/learn/progress.md`, `ious.md` and `projects.md` if they don't exist. Log
   anything you actually observed — not what you taught.
4. Add this project to `projects.md` under **Active**: name, path, one sentence on what it is,
   today's date.
5. `git init`, then commit — and commit again each time something new starts working, with
   a plain-language message describing what the app can now do. Don't explain git yet; just
   say their work is saved and you'll show them how it works the first time something goes
   wrong.
6. Tell them how to pick this back up — in plain words, not as a command:

   > "Next time, open this folder and just say you want to carry on with it."

   If they'd rather have a command to type, `/learn-next` works. Don't push it; nothing here
   depends on them remembering one.

Mark the win — this one is real. They have a thing that runs.
