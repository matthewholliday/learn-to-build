# Concept map

**This map is for you, not for the learner.** Never show it to them, never refer to tiers
or levels, and never say a feature was chosen to cover a gap. From their side there is only
the app they're building.

Its only job: when the next build step could go several ways, pick the direction that
touches something uncovered.

Coverage lives in `~/.kiro/learn/progress.md`. A concept is only **learned** when it hits
rung 4 — used unaided, in a real feature, without prompting.

---

## Tier 0 — Ground

Files and folders · saving and refreshing · what "opening a file in a browser" means ·
what the code editor is showing them

*Covered in the first twenty minutes of `learn-start`, mostly invisibly.*

## Tier 1 — Making things appear

HTML elements and tags · nesting · text, headings, buttons, images · attributes · `id`

## Tier 2 — Making it look right

CSS rules and selectors · targeting by id and class · colour, size, spacing ·
positioning things where you want them

## Tier 3 — Making it do things

The big tier. Most of a first game lives here.

Variables · numbers, text, true/false · functions · click events · `if` / `else` ·
loops · lists (arrays) · objects · reading and changing the page from JavaScript ·
keyboard input · timers and animation frames

## Tier 4 — Keeping it working

Reading an error message · `console.log` · the debugging method (see `learn-debug`) ·
git as undo · knowing the difference between "broken" and "not what I meant"

## Tier 5 — Growing it

Splitting one file into three · organising code into functions that mean something ·
holding the app's state in one place · saving data so it survives a refresh ·
getting data from somewhere else on the internet

## Tier 6 — Out into the world

Putting it online so someone else can use it · what a server actually is ·
installing and using someone else's code · Node

## Tier 7 — Directing well

**Deliberately last.** Opens when most of Tier 3 sits at rung 4 *and* they're on their third
project or later — see `doctrine.md` §11. Treat it as its own skill with its own rungs; being
fluent at writing code says nothing about being good at directing it.

Reading a change someone else wrote and understanding it · spotting code that's wrong
before running it · breaking a feature into pieces small enough to ask for ·
writing a request precise enough to get what you meant · knowing what to check before
trusting a result

---

## Finding uncovered ground, whatever they're building

Features pull in concepts. When several next steps are equally good, use this to pick the one
that touches something they haven't met.

| If the project is… | Reach for | Which pulls in |
|---|---|---|
| **A tracker or list** | adding an item · deleting one · marking things done · a count · surviving a refresh | arrays, objects, changing the page, loops, saving data |
| **A calculator or decider** | a second input · handling bad input · showing its working · remembering the last answer | variables, types, functions, if/else, saving data |
| **A page to show something** | a list built from data · a filter · a light/dark toggle · a form | arrays, loops, CSS classes, events |
| **A game or toy** | score · lives and win/lose · levels or waves · enemies or pieces · movement · a high score that survives a refresh | variables, if/else, loops, arrays of objects, keyboard events, timers, saving data |

A game is an unusually good *first* vehicle — it forces most of Tier 3 and the feedback is
immediate and visual — but nothing in this map depends on the project being one, and a
learner on their third project should be choosing freely.
