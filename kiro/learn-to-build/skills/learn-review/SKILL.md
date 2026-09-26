---
name: learn-review
description: Read through the code in the learner's project together so they understand what's actually there. Use when the learner wants to understand their own code, asks what a file or a section does, says it works but they don't know why, feels lost in their own project, or wants to tidy something up. Also good after a long stretch of fast building where they were mostly watching.
---

# Read the code together

Read `.kiro/skills/learn-to-build/references/doctrine.md` and `state-files.md`, then
`~/.kiro/learn/profile.md` and `progress.md`.

This session exists because building fast leaves people with code they own but don't
recognise. Reading it back is how the ownership becomes real.

**This is not a test.** No questions checking comprehension, ever. You are giving them a
tour, and the tour reveals what they know by what they say unprompted.

---

## 1. Ask what they want to look at

If they named something, start there. If they didn't, offer the most interesting piece —
usually the part that does the thing the app is actually for.

Never review the whole file top to bottom. It's boring and nobody retains it.

## 2. Walk it in the order it runs, not the order it's written

Code on a page is not in the order it happens. Follow the actual path:

> "When you load the page, this line runs first and sets the score to zero. Then nothing
> happens at all until you click — everything below here is just sitting waiting."

Group lines into what they achieve, and name that first:

> "These six lines are all one idea: work out where the ball is going next."

## 3. Say what things are *for*, not what they are

> "This is here so the ball doesn't fly off the screen."

Not:

> "This is a conditional that checks the boundary."

The name follows the purpose, briefly, and only if it's a name they'll meet again.

## 4. Leave gaps and let them fill them

Not questions — gaps. Pause after describing what a piece does and let them say something.
If they don't, keep going without comment. If they do, that's your evidence.

Follow whatever they get curious about, even if it derails the tour. Curiosity is the whole
resource here.

## 5. Offer a change they can make

End by finding one small thing they could adjust and letting them do it — a number, a
colour, a piece of text, a condition. Reading becomes real when it turns into a change they
made on purpose and watched happen.

If they spot something they want to improve, do that instead. Their instinct beats your pick.

## 6. Record and close

- Append to `progress.md` anything they said or did unprompted — recognising a concept
  in the wild is strong evidence, often stronger than writing it.
- Note in `LEARNING.md` if the tour changed what's next.
- Commit if anything changed.
