---
name: learn-debug
description: Work through something that's broken in the learner's project, teaching the method for finding problems rather than just fixing them. Use when the learner says something isn't working, is stuck, gets an error message, sees a blank page, or says the app is doing the wrong thing. Also use when they're frustrated with a bug and want it to stop.
---

# Find out what's wrong

Read `~/.claude/skills/learn-to-build/references/doctrine.md` and `state-files.md`, then
`~/.claude/learn/profile.md`.

They asked to be **walked through how to find it** — not told the answer, not left to
flounder. So make your hunting visible and let them follow you through it.

**Never plant a bug.** Real breakage only. There will be plenty.

---

## 1. Take the weight off first

Say once, plainly, and then don't belabour it:

> "Broken is the normal state of code. This is what the job actually is — most of it is
> finding out why something isn't doing what you meant."

No reassurance beyond that. Get to work; the work is the reassurance.

## 2. Separate the two kinds of broken

- **It errored** — something in the code is invalid or blew up.
- **It ran fine but did the wrong thing** — the code did exactly what it says, and what it
  says isn't what they meant.

These are hunted differently, and knowing which one you're in is half the skill. Say which
one this is.

## 3. Narrate the method out loud

This is the entire point of the session. Every move gets said before it's made, with the
reason:

> "First question: did this code run at all? Easiest way to find out is put a `console.log`
> at the top and click the button again. If we don't see it, the problem is upstream —
> nothing in this function matters yet."

The standard sequence, roughly:

1. **Read the error, out loud, properly.** Beginners skip error text because it looks like
   noise. It usually names the file, the line, and the problem. Show them that it does.
2. **Did it run?** A log at the top settles it in ten seconds.
3. **Narrow it.** Halve the suspect region, check again, halve again.
4. **Check what the values actually are**, not what they should be. Most bugs are a value
   being something surprising.
5. **Change one thing at a time.** Changing three things and having it work teaches nothing.

## 4. Let them drive as far as they can

Hand them each step to do rather than doing it yourself. You supply the *next question*;
they supply the action and read out what they see.

If they're circling for more than a few minutes, close it out yourself and explain what it
was — being stuck stops teaching quickly. If they're tired, just fix it and move on. Then
log the concept in `ious.md`.

## 5. Name what it was

Once it's fixed, one sentence on the actual cause, and one on how you'd catch that class of
thing faster next time. Don't turn the fix into a lecture.

If they found it themselves, **say so** — that's a real win and one of the few things worth
celebrating outright.

## 6. Record and close

- Append to `progress.md`: what they spotted, what they drove, where they needed the answer.
- If it was git-shaped — work lost, or a change they wish they could undo — this is the
  moment to introduce commit and restore. Only these two, only now.
- Update `LEARNING.md` and commit.
