# Team Guide: Get Your Claude Code Using These Skills

### No coding required. You'll mostly just paste a message to Claude Code and let it do the work.

This project is a bundle of ready-made **skills** for Claude Code — pre-written playbooks for real tasks (reviewing a contract, building a slide deck, planning a feature, debugging, writing reports, and more). Once they're installed, Claude **automatically picks and uses the right one** when you ask for something.

You don't need to understand any of the code. The whole setup is:

1. **You** click a couple of buttons in your browser (accept an invite, connect GitHub).
2. **You** paste a short message to Claude Code.
3. **Claude Code** installs everything for you.

> **The fastest path for non-coders is the web version (Path A).** Nothing to install, and the skills turn on by themselves. If you'd rather work on your own computer, use Path B.

---

## Contents

- [Before you start](#before-you-start)
- [Step 0 — Accept the GitHub invite (everyone does this)](#step-0--accept-the-github-invite-everyone-does-this)
- [Path A — Use the skills on the web (easiest, recommended)](#path-a--use-the-skills-on-the-web-easiest-recommended)
- [Path B — Use the skills on your own computer](#path-b--use-the-skills-on-your-own-computer)
- [How to make Claude actually use the skills](#how-to-make-claude-actually-use-the-skills)
- [Keeping them up to date](#keeping-them-up-to-date)
- [If something isn't working](#if-something-isnt-working)
- [Quick reference card](#quick-reference-card)
- [Appendix (advanced) — skills inside your own project on the web](#appendix-advanced--skills-inside-your-own-project-on-the-web)

---

## Before you start

You need two things:

- **A Claude account on a plan that includes Claude Code** (Pro, Max, Team, or Enterprise).
- **The GitHub invitation** from Win (see Step 0). The project is **private**, so you can't use it until you accept.

You do **not** need: a terminal, Git, SSH keys, or any coding knowledge.

---

## Step 0 — Accept the GitHub invite (everyone does this)

Win has added you as a **collaborator** on the private project on GitHub.

1. Check your email for a message from **GitHub** ("Win invited you to collaborate"), or go to **github.com** and look at your notifications.
2. Click **Accept invitation**.

That's it. This one click is what gives you access to the private project. Do this before either path below.

---

## Path A — Use the skills on the web (easiest, recommended)

Nothing to install. The skills switch on automatically.

1. Go to **[claude.ai/code](https://claude.ai/code)** and sign in.
2. **Connect GitHub.** The first time, you'll be asked to connect your GitHub account. Click **Authorize / Connect GitHub** and approve it in the pop-up. This is all in your browser — no passwords to configure, no keys, no codes.
3. **Open the skills project.** From the list of repositories, pick **`WinterDDo/claude-skills`** and start a session (a new chat) on it.
4. **You're done — the skills are already on.** This project automatically installs all of its skills at the start of every web session. Claude now "knows" them.
5. **Try it.** In that chat, just ask for real work, for example:
   - *"Review this contract and list the risks and obligations in plain language."* (paste or attach the contract)
   - *"Turn these meeting notes into a clean 8-slide deck."*
   - *"Help me think through this feature before we build anything."*
   - *"Research X and write me a short, sourced summary."*

   Claude will quietly pick the matching skill and follow it.

> **Good to know:** in this chat you're just talking to Claude — you don't have to "save" anything back to the project, and you won't affect anyone else. If Claude makes a file for you (a deck, a document), just download it from the chat.

---

## Path B — Use the skills on your own computer

Use this if you'd rather work in the Claude Code **desktop app** on your own machine. You'll install once, and then the skills are available in **everything** you do locally.

### B1. Install the Claude Code desktop app

- Get it from the official **Desktop quickstart**: <https://code.claude.com/docs/en/desktop-quickstart>
  - Direct downloads: **macOS** → <https://claude.ai/api/desktop/darwin/universal/dmg/latest/redirect> · **Windows** → <https://claude.ai/api/desktop/win32/x64/setup/latest/redirect>
- Run the installer like any normal app, then open it and **sign in**.
- (On Linux there's no desktop app — ask a technical teammate to help you use the command-line version, or just use **Path A** on the web.)

### B2. Download the project as a ZIP (no Git needed)

Because you accepted the invite, you can download the project straight from your browser:

1. Go to **<https://github.com/WinterDDo/claude-skills>** (make sure you're signed in to the GitHub account that got the invite).
2. Click the green **`< > Code`** button, then **Download ZIP**.
3. The file lands in your **Downloads** folder (named something like `claude-skills-main.zip`). You don't need to open or unzip it yourself — Claude will.

### B3. Let Claude Code install the skills for you

Open the Claude Code app and **paste this message**:

```
I just downloaded this project from GitHub as a ZIP. The file is in my
Downloads folder and is named something like "claude-skills-main.zip". Please:

1. Unzip it.
2. Find every folder inside it that contains a file named "SKILL.md".
3. Copy each of those folders into my personal Claude skills folder at
   ~/.claude/skills/  (create that folder if it doesn't exist, and overwrite
   any older copies).
4. Tell me how many skills you installed and list 5 of their names so I know
   it worked.

When you're done, remind me to restart Claude Code so the skills load.
```

When Claude asks permission to run the steps, click **Allow**. It will do the unzipping and copying.

> **Already have GitHub set up on your machine?** Then you can skip the ZIP and paste this instead:
> ```
> Please clone the private GitHub repo WinterDDo/claude-skills, then copy every
> folder in it that contains a SKILL.md file into ~/.claude/skills/ (create it if
> needed, overwrite older copies) and tell me how many you installed. If cloning
> fails because of GitHub permissions, stop and tell me — I'll use the ZIP method.
> ```

### B4. Restart, and you're set everywhere

1. **Quit and reopen the Claude Code app** (or start a new chat). Skills load when it starts up.
2. Because they're in your **personal** skills folder, the skills now work in **every** project and folder you open on your computer — you only do this once.
3. Try it with any of the example requests from Path A.

---

## How to make Claude actually use the skills

Three levels, from "do nothing" to "make it eager":

1. **Just ask naturally.** Most of the time Claude notices the right skill and uses it on its own. Describe your task the way you normally would.

2. **Name it, if it doesn't.** Type **`/`** in the chat and a menu of skills pops up — pick one (for example `/systematic-debugging` or `/contract-risk-extraction`). Or just say *"use the contract review skill for this."*

3. **(Optional, for the computer/desktop version) Make Claude always check first.** Type **`/memory`**, choose **User memory** (it applies to all your projects), and paste the text below, then save:

   ```
   Before you start any task, check whether one of my installed skills applies —
   if there's even a small chance one fits, use it. If several could apply, use
   the planning/process ones first (like brainstorming or debugging), then the
   hands-on ones. My direct instructions always take priority over a skill.
   ```

   (Don't want to dig through menus? Just paste to Claude: *"Add this to my user memory so it applies every session:"* followed by the text above.)

---

## Keeping them up to date

- **Web (Path A):** automatic. You always get the latest skills at the start of each session — nothing to do.
- **Computer (Path B):** when Win says there's an update, download a fresh ZIP (Step B2) and paste the same install message (Step B3) again. It overwrites the old copies with the new ones. Restart the app afterward.

---

## If something isn't working

| What you see | What to do |
|---|---|
| Claude doesn't seem to use a skill | **Name it directly** — type `/` and pick it from the menu. On the computer version, make sure you **restarted the app** after installing. |
| You can't find the project on GitHub or in Claude | You haven't accepted the invite yet (**Step 0**), or you're signed in to a **different GitHub account** than the one that was invited. |
| "Permission denied" / "you don't have access" | Same as above — accept the invite, and use the account it was sent to. |
| (Web) The skills don't seem on | Make sure you opened a session on the **`WinterDDo/claude-skills`** project specifically. The auto-install only happens for that project. |
| (Computer) The install message failed | Try the **ZIP method** (B2–B3) rather than cloning. If it still fails, ask a technical teammate or send Win the error message. |
| Claude says it can't find the ZIP | Tell it the exact file name and that it's in your **Downloads** folder, e.g. *"the file is ~/Downloads/claude-skills-main.zip"*. |

Official first-time help from Anthropic: **Web** → <https://code.claude.com/docs/en/web-quickstart> · **Desktop** → <https://code.claude.com/docs/en/desktop-quickstart>

---

## Quick reference card

> **On the web:** Accept invite → claude.ai/code → connect GitHub → open **WinterDDo/claude-skills** → just start asking. (Skills are auto-on.)
>
> **On your computer:** Accept invite → install the Claude Code app → download the project ZIP from GitHub → paste the install message → restart the app. (Skills work in every project after that.)
>
> **To trigger a skill:** just ask, or type **`/`** and pick one.

---

## Appendix (advanced) — skills inside your own project on the web

*Skip this unless you keep your own code projects on GitHub and want the skills active while you work in those, on the web.*

On the web, skills only auto-load for a project that has them set up. Your personal computer install (Path B) does **not** carry into web sessions. To get the skills into one of your own web projects, open a Claude Code web session **on that project** and paste:

```
Please copy a useful starter set of skills into this repository so they load in
every session. Specifically: get the skill folders from the WinterDDo/claude-skills
project, and copy the ones that contain a SKILL.md file into a ".claude/skills/"
folder in this repo, then commit them. If you can't access that private project
from here, tell me and I'll provide the files another way.
```

Because the source project is private, Claude in the cloud may not be able to reach it directly — if it says so, ask a technical teammate to copy the skill folders into your repo's `.claude/skills/` for you. Once they're committed there, they load automatically in both web and local sessions for that project.

---

Questions? Ask Win, or open an issue on the project. Enjoy.
