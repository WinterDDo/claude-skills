---
name: using-superpowers
description: "[RETIRED — do NOT invoke] This skill is deprecated and intentionally inert. It carries no operative instructions. Do not select it for any task."
---

# RETIRED

This skill has been retired. Its former body — a set of always-on discipline rules that
told the agent to invoke a skill whenever one might apply — has been removed because,
shipped as live text, it caused this skill to compete with every other skill and with the
session's own skill-selection.

There is intentionally nothing to execute here. If you were routed to this skill, ignore it
and proceed with the appropriate task-specific skill instead.

> Maintainer note: if you want the old discipline rules active, wire them into a real
> SessionStart hook rather than resurrecting this body. This repo's `session-start.sh`
> only installs skills; it does not inject discipline rules.
