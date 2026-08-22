---
name: learn-wrap
description: Close out a project properly — finished, parked, or set down for good — banking what the learner demonstrated so it carries to their next project. Use when the learner says a project is done, wants to stop working on something, has lost interest in it, wants to start something else instead, asks what to do with an old project, or is deciding whether an untouched project is worth coming back to.
---

# Wrap up a project

Read `~/.claude/skills/learn-to-build/references/doctrine.md` (especially §11) and
`state-files.md`, then `~/.claude/learn/profile.md`, `progress.md`, `projects.md`, and the
project's `LEARNING.md`.

Projects end. Most of them end without being finished, and that is completely normal — a
learner with four half-built things has learned more than one with a single perfect app.
The job of this session is to make sure nothing they *learned* is lost when a project stops,
and to make stopping feel like a decision rather than a failure.

---

## 1. Find out which kind of ending this is

Ask plainly, with no correct answer implied:

- **Finished** — it does what they wanted. Rare and worth marking.
- **Parked** — they might come back. Genuinely might; not a polite no.
- **Set down** — they're done with it. It served its purpose and its purpose was learning.

If they're unsure between parked and set down, park it. It costs nothing and reversing it
later is one sentence.

Do not talk them out of stopping. Do not suggest "just one more feature". Do not ask what
went wrong. If they volunteer why, listen and take it as data about the teaching, not about
them — and if the reason is that it got too hard, that's a step-size failure on your side.
Note it in `progress.md`.

## 2. Bank what they demonstrated

This is the actual work of the session, and the reason it exists.

Go through `progress.md` for this project and make sure every rung-3 and rung-4 observation
is recorded as **theirs**, not as the project's. A concept they can use is a concept they
keep, whether or not the app it lived in was ever finished.

Check `ious.md` too: anything they picked up on the way clears now, and anything still open
carries forward to the next project rather than dying with this one.

Then tell them what they can now do, in plain terms, without listing concepts:

> "You've got a game that runs, and along the way you started writing your own if/else
> without being walked through it. That was the hard part, and it comes with you."

Only claim things they actually did unaided. Inflating this is the fastest way to make the
whole picture untrustworthy.

## 3. Leave the project findable

1. Final pass on `LEARNING.md`: what it is, what works, how to run it, and — if parked — the
   one thing they'd pick up first. Write it so a stranger could start it, because in three
   months that's who they'll be.
2. Final commit.
3. Update their line in `~/.claude/learn/projects.md`: status, date, one sentence on what it
   ended up being.

## 4. If it's finished, and only if it's finished

Mark it properly — this is one of the few things worth celebrating outright.

Then offer, once, to put it online so they can send someone the link. Don't push it. A live
URL is the single biggest motivator available at this stage, and also completely optional.

If they say yes, that's Tier 6 territory and a normal build session — treat it as one.

## 5. Point at what's next, lightly

Ask whether they've got another idea brewing. If they have, `/learn-start`. If they haven't,
say that's fine and leave it — the next idea usually arrives on its own, and pressure is the
thing most likely to stop it.

> "Whenever something comes to you, open a new folder and say `/learn-start`. Everything you
> picked up here comes with you."
