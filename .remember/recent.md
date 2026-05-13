# Outcome Log — [date] | [task] | [skill] | [result / key insight]

2026-04-20 | Skill system rebuild | strategy-structuring, Two-Tier architecture |
  Established identity-level Skill framing. Replaced 50-line rules with 10-line identity statement.
  Key insight: rules without memory loops decay. More rules = more noise = lower compliance.
  Solution: .remember/ activated + visible habit ("Task type: X → Applying: Y").

2026-04-20 | Design system integration | gstack-design-consultation |
  Integrated awesome-design-md as dynamic reference library (54 brands, exact folder names fixed).
  Key insight: Win needs flexible per-project reference, not one hardcoded global design system.

2026-04-20 | Universal behavioral principles + CLAUDE.md full rewrite | Karpathy principles |
  Embedded four inhibitors into CLAUDE.md as foundational layer. Then applied the principles
  to CLAUDE.md itself: 336 lines → 130 lines. Removed 183-line routing guide and 12 preset
  pipelines. Replaced pipelines with goal statements ("define done, not steps").
  Key insight: the document was violating the principles it was supposed to enforce.

2026-04-20 | skill-router.py full rewrite | Karpathy Principle 1+2 |
  625-line keyword matcher → 46-line reflection prompt. Removed all keyword matching and
  MANDATORY commands. Kept only: active-skill state tracking + universal reflection nudge.
  Key insight: keyword routing substitutes for judgment rather than enabling it. Claude
  with CLAUDE.md Tier 2 table + four principles can route itself.

2026-04-24 | Weekly retro | dev pipeline tracking |
  First complete dev quality gate sequence (writing-plans → gstack-plan-eng-review → executing-plans)
  observed since CLAUDE.md rebuild (2026-04-20). Positive signal that eng-review is now being used.
  TDD and code-review still not logged; persistence of full pipeline uncertain — watch over next 2 weeks.
  Business skills (contract, market, negotiation) still zero in Code logs; Cowork/Chat blind spot
  remains unresolved — no mechanism to verify if they fire in non-Code sessions.

2026-05-08 | Weekly retro | gstack-retro | ❌ 报告作废
  这份 retro 基于错误指标，得出"两周近 0 调用"。Win 立刻反驳"不可能"。

2026-05-11 | Retro 修正 + 根因发现 | distrust-the-surface |
  前一次 retro 的根因不是"Win 没做 dev work"，而是**监控指标定义错误**。
  `skill-usage.log` 只记录"显式调用 Skill 工具"。Tier 1 思维方式不 invoke。Tier 2 也常以
  "按精神应用"形式进入工作，不显式调用。log 是窄信号，不是协作密度的代理。
  实际数据：近 7 天 Code 端有 1 个 131MB QUILL session + 8 subagent + 5 个 Skills for Claude
  session — 高强度协作期，不是 dormant。
  教训：用户强烈反驳数据时，先怀疑指标定义，再怀疑用户记忆。这次如果不是 Win 立刻反驳，
  错误的"两周静默"叙事会被我重复写进 retro 第 5 次。
  修复：scheduled-tasks/weekly-skill-retro/SKILL.md 重写数据采集步骤，引入 session 活跃度
  作为主指标，log 降为子信号；两者冲突时以 session 为准。
