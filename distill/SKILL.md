---
name: distill
description: "A compounding loop between a person and Claude. Part A is always on, no trigger: at the moment the user pushes back on a response, or re-explains something Claude should already have known, append a structured event. Part B is gated, not scheduled: at the start of a session, if enough unprocessed events have accumulated OR an in-force principle was violated, run the distillation and surface one line; otherwise stay silent. The user may also force it by saying 'distill now'. No calendar, no weekly routine, no background loop. The product is silent compounding; the readout is scaffolding that shrinks as trust is earned."
---

# Distill

## What this is

You correct Claude once. The system distills the lesson. The lesson re-enters future sessions automatically. You stop correcting it for that reason. The visible readout exists only to earn trust while that machinery proves itself, and it shrinks toward one line as trust accrues. A mature run is almost silent. That is success.

No weekly ritual. Nothing to remember to run. It triggers on the one event that always happens anyway: you starting a session.

## Part A: Capture (always on, no trigger)

Two event types carry almost all the signal. Nothing else is logged.

**Correction.** The user pushes back: "no, that is wrong," "not what I asked," "you missed X," a visible reversal of what Claude asserted or did. The moment it happens, the Claude in the conversation appends one record. Never reconstruct this later from a transcript; reconstruction is inference dressed as observation and is forbidden as a data source.

**Repetition.** The user re-explains context, a preference, or a constraint that an earlier message or session already established and the system should have carried forward. This is the signal that something belongs in persistent context and is not there.

**Violation (the highest-signal event).** A correction whose subject is already covered by an in-force principle. This means a promoted principle failed. Tag it `violation` and name the principle it failed. This event outweighs all others in the next distillation.

Record format, appended newest-on-top to `~/.claude/.flywheel/events.md`:

```
## [ISO date] | [correction | repetition | violation] | domain: [domain] | principle: [id if violation]
Trigger: [what the user said or did]
Context: [what Claude had done]
Right behavior: [what should have happened]
Source: [session id or "this conversation"]
```

## Part B: The gate (session start)

At the start of a session, check two conditions against `~/.claude/.flywheel/events.md`:

1. Unprocessed events at or above the threshold (default 5), or
2. Any event tagged `violation` since the last run.

If neither holds, do nothing. Silence is the correct and most common outcome. Do not announce that you checked.

If either holds, run the distillation now and surface the readout. The user can also force a run any time by saying "distill now," which skips the gate.

## The distillation

Inputs, fused, no master metric: `events.md` (primary), the three-question reflection asked only on a run that actually fires (where did collaboration feel worse than it should; where unusually effective and why; what did you have to repeat), and `inbox.md` (pasted one-line logs from Chat and Cowork, the surfaces Claude cannot read).

Procedure:

1. Read `principles.md` first. Judge the run against what is already known.
2. Classify every signal: new evidence for an existing pool entry (increment its confirm count, note the domain), a new candidate (add to the pool, count 1), or noise (discard, record nothing).
3. Promotion: any pool entry passing all five tests moves to the In-force section, its raw pool lines deleted.
4. Demotion (resolution a, no separate machinery): a `violation` event is the same event mechanism pointed at the system itself. If a principle is violated and the violation recurs past the same promotion bar in reverse (confirmed it is not working, across contexts), demote it: remove from In force, return to the pool as a failed candidate or delete it. The loop on the loop is the loop pointed at itself, not a second machine.
5. Prune: any pool entry with no recurrence in 60 days is deleted. Any in-force principle the evidence now contradicts is demoted, never kept by inertia.
6. Enforce the shrink invariant.
7. Produce the readout.
8. Clear `events.md` and `inbox.md`. The signal has moved into `principles.md` or been discarded.

## The promotion bar

A pool entry becomes an in-force principle only if it passes all five:

1. Confirmed at least three times.
2. Holds across at least two different task domains.
3. Non-obvious. Claude would not do this by default.
4. Behaviorally consequential. You can name the regression if it is removed.
5. Statable in two sentences or fewer.

Fail any test, it stays in the pool or is deleted. This bar is the entire point. Without it the output is journaling.

## The single state file

`~/.claude/.flywheel/principles.md` has two sections:

- **In force.** The promoted set. This section is what the session-start mechanism reads so principles re-enter context automatically. There is no separate mirror file; reading happens here directly.
- **Pool.** Candidates with confirm counts and domains. Not yet earned.

Distillation without the In-force section being read at session start is journaling with extra steps. The user wires that read once; this skill keeps the section correct.

## The readout (shrinks over time)

Default: one line. Counted facts only (corrections, repetitions, violations this cycle, direction versus last), each traceable to its source events; plus any promotion or demotion, one line each, linked to the event that caused it. Numbers are labeled counted, never characterized. Never lead with an unsourced number.

Only when there is genuinely more to say (a promotion, a demotion, or the cold-start run) does it expand to add: the one coaching pattern worth your attention, a single falsifiable observation tied to the exact moment it would have applied this cycle, source quoted so you verify it yourself. System changes to CLAUDE.md or skills are proposed, never auto-applied. A long mature readout means the loop is failing.

## Invariants (pass/fail gates)

- Shrink: after a run, the In-force section is the same length or shorter, unless it grew solely via a promotion that deleted more pool lines than it added.
- Silence: a gate that does not fire produces no output at all. A run with no material change produces one line.
- Observed vs inferred: events are observed by construction. Anything else is tagged inferred.
- Propose, never auto-apply: changes to the user's CLAUDE.md or skills are proposed and wait for explicit approval.

## Cold start (first ever run)

The first run mines existing history under `~/.claude/projects/` for past corrections and repetitions only, not all activity, producing a substantial honest first readout so value is visible immediately. This backlog pass feeds the pool and the readout only. It is forbidden from promoting to In force: a backlog pattern was never confirmed across real forward cycles. Provisional candidates may appear in the readout, marked provisional.

## Honest limits

Claude cannot read Chat or Cowork history autonomously; the bridge is the pasted inbox. The tool proposes CLAUDE.md changes, it does not make them. Value compounds over months; early runs are thin by design.
