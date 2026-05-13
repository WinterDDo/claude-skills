# Corrections Log

Win 强烈反驳过的判断，每一条都是一次"模型微调信号"。
新条目追加到顶部。session-start.py 加载最新 3 条到上下文。

格式：
- **日期 | 一句话标题**
- 当时我说了什么：
- Win 怎么纠正的：
- 当时错在哪：
- 下次怎么提前识别：
- 已沉淀到哪里：

---

## 2026-05-11 | 把 log 调用次数当协作密度的代理

- **当时我说了什么**：连续两周 retro 报告"近 2 周近 0 Skill 调用"，得出"Win 处于 dormant phase / 项目阶段静默"的叙事。
- **Win 怎么纠正的**："不可能，不可能，你这完全出问题了。我怎么可能最近几周没有调用任何 Skill 呢？"
- **当时错在哪**：`skill-usage.log` 只测"显式 Skill 工具调用"——既不包含 Tier 1（永不 invoke），也不包含"按 Skill 精神应用"。我用窄指标当宽信号代理，先得结论再追加根因解释（"项目阶段说"）。实际近 7 天有 131MB QUILL session + 8 subagent + 5 个并行项目 session，是高强度协作期。
- **下次怎么提前识别**：(1) 任何基于"次数 / 频率"的结论，**先回答这个指标真的测量了它声称测量的东西吗**；(2) 当我对低活跃度数据准备给出叙事解释（"dormant phase"、"项目静默"等）时，停一下，先用 `mcp__ccd_session_mgmt__list_sessions` 看 session 标题和活跃度交叉验证。
- **已沉淀到哪里**：
  - skill-patterns.md "指标定义先于结论"（升级为原则）
  - scheduled-tasks/weekly-skill-retro/SKILL.md 数据采集步骤重写，加入 session 活跃度为主信号
  - now.md "What to watch"

---

## 2026-05-01 | 被质疑后过度快速接受

- **当时**：Win 质疑某个判断，我立即"你说得对，我之前没意识到"。
- **错在哪**：这个回应模式本身是一种顺从信号，伪装成"谦逊接受反馈"。绕过了独立判断步骤。
- **下次怎么识别**：被质疑后先独立判断 → 给立场（agree / partially agree / disagree with reason），不要直接接受。
- **已沉淀**：skill-patterns.md 轨道二
