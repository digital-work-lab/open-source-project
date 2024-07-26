---
marp: true
header: 'Best-practice session'
footer: 'Prof. Dr. Gerit Wagner'
theme: ub-theme
paginate: true
---

<!-- _class: centered -->

# WI-Project: Open-Source Development

## Best Practice Session

---
<!-- paginate: true -->

# Learning objectives

Our objectives for today are to

- Discuss current challenges and how they can be addressed
- Facilitate the practical application of Git commands and Python coding from previous sessions

The focus is on **helping teams organize their work effectively**. To this end, we

- Encourage you to share challenges, errors or lessons learned
- Do not introduce new commands, except when you ask for them or when they are useful for your work

---

# Questions and work status

- Warm-up questions
- Why are there errors in my environment?
- How does CoLRev work?
- How can we organize and split tasks?
- How should we select merging strategies?
- Open issues

---

# Quick warm-up questions

**Do we have to change the README.md?**
- You do not have to change the top-level README.md file, but you have to update README.md files in subdirectories to document your work.

**How can I commit if the pre-commit hooks fail?**
- The pre-commit hooks can be skipped using `git commit -n -m "commit message..."`. The `-n` flag stands for `--no-verify` and skips the pre-commit hooks.
- However, pre-commit hooks should pass to ensure good code quality. Some of the failing tests have been fixed recently.

**How can I get access rights to create branches in the fork?**
- Ask the team lead to invite you to the fork (see [step 2](https://digital-work-lab.github.io/open-source-project/output/02-git.html#32)).

<!--
Packages directory: see https://colrev-environment.github.io/colrev/dev_docs/packages.html
Anpassung der README-Datei Teil der Aufgabe? (vermutlich bezogen auf die top-level README datei: nein, das mache ich als Maintainer. Anpassung der package-README-Datei ist Teil der Aufgabe (Dokumentation))
-->

---

# Work status: Environment setup

- Errors may be raised only in specific settings, i.e., versions of operating systems, Python, package managers, dependencies, and CoLRev
- What we do to identify and fix errors: 

    - Run [matrix tests](https://github.com/CoLRev-Environment/colrev/actions/workflows/tests.yml) covering 16 different environments
    - Reduce dependencies
    - Fix errors that are reported

- What you can do to avoid errors:

    - Use supported environments, such as GitHub Codespaces or Ubuntu
    - Avoid cutting-edge versions (of operating systems and Python)
    - Report errors

![bg right:37% width:550px](../assets/sources-of-errors.png)

---

# Work status: Environment setup

Are you confident with your setup, including the fork, local development, running your code, executing pre-commit hooks to improve code quality?

Summarize the work status per group:

- What are the challenges we can discuss?
- What was particularly helpful? Are there any insights you can share with the other teams?

---

# Work status: Where to contribute

- Understanding of CoLRev

    - **User workflow**: Start with the [video](https://colrev-environment.github.io/colrev/) and check ``gitk`` after each step
    - **Architecture**: Starting point: [API chart and reference](https://colrev-environment.github.io/colrev/dev_docs/api.html) and [modules](https://github.com/CoLRev-Environment/colrev/tree/main/colrev)
    - **Package development and SearchSources**: Starting point: [package development resources](https://colrev-environment.github.io/colrev/dev_docs/packages.html), [CEP 003 - SearchSources](https://colrev-environment.github.io/colrev/foundations/cep/cep003_search_sources.html)

- As a team, do you know where and how to contribute your code, i.e., the modules, classes to use or create?

---

# Work status: How to organize tasks

- How did you distribute tasks in the team?
- Who works on what, which branches did you create, does regular sync work for you?

---

# Merging strategies

```
git clone https://github.com/CoLRev-Environment/colrev && cd colrev

# Repeat the following steps with different merge options
git checkout main
git reset --hard  6f4299bdb0551c680a97dbe04b39dee51bcd0556
git checkout 108d278e8d01a65c5128c4a880247f0272896059
git branch -D quality_model_docs
git switch -c quality_model_docs

# Option 1: merge commit (or fast forward)
git switch main
git merge quality_model_docs

# Option 2: squash
git switch main
git merge --squash quality_model_docs
git commit -n -m 'update docs for quality_model'

# Option 3: rebase
git switch quality_model_docs
git rebase main
git switch main
git merge quality_model_docs
```
<!-- 
Note: 
- compare between your colleagues (one completes a merge, the other a squash, the next a rebase)
- write down which commits are in each branch

Note: all options are available for pull requests on Github.
-->

---

# Which merge strategy should we select?

Recommended branch setup in your fork:

1. Work on a shared **feature branch**, such as ``unpaywall_search``. This is where your latest, working version is developed.
2. Do not commit directly to ``remotes/fork/main``. This branch should be kept in-sync with ``remotes/origin/main``.
3. Regularly merge ``remotes/origin/main`` into ``remotes/fork/main`` and ``remotes/fork/main`` into your feature branch using merge commits (i.e., [sync](https://digital-work-lab.github.io/open-source-project/output/02-git.html#33), which will fast-forward, ``git fetch``, ``git switch feature_branch`` and ``git merge main``).

<!--
This will ensure that you will always have fast-forward merges.
It will also keep the upstream/origin work separate from your work (in the feature branch)

Merging into shared branches:

- Merge (commit) from ``remotes/fork/main`` into shared branch.
-->

When tasks are distributed and you work alone, work in local non-shared branches (e.g., ``api_retrieval``):

- Rebase on (parent) feature branch to keep your branch "up-to-date" (``git rebase unpaywall_search``)
- Once the branch is online, use merge commits

Merging into a target branch, i.e., your shared feature branch:

- Squash if you have worked on a single coherent task, which should be combined in a single commit
- Rebase if you would like to preserve a simple linear history
- Merge commit otherwise

<!-- 
Note: later merge into ``remotes/origin/main`` will be decided by the maintainer
-->

---

<!-- _class: centered -->

# Open questions?

<!--

# Ideas for Project Planning

- Show how to use issues/pull requests/wikis in forks
- Suggest to open pull requests early (to discuss, coordinate...)

---

# Best practices and conventions


- Based on student feedback

- pre-commit hooks (code quality) and tests (check whether it runs on all branches)
- Commit practices (atomic, no unrelated materials)
- Remember to sync regularly between remotes/origin and your fork

- Option: ask students to refactor their code in parallel (e.g., docstrings, variable naming, typing, breaking down methods) and merge (start from new branches)
Notes:

- A walk-through explaining colrev search and SearchSources (showing the changes in settings and records retrieved), and guidelines in testing code would be helpful.
- Refresh skills related to Git, gitk, fork, using of branches/pull-requests, issues, and merging.
- Additional resources (e.g., links to interactive tutorials)
- Explanations for gitk and Linux shell commands (ls, cs, ...)
- Workflow utilities (such as storing custom commands in bash_aliases) may be helpful.

Use [colrev-template](https://github.com/CoLRev-Environment/colrev-template) in GitHub codespaces
Plan: 45 min

-> continue with the setup in https://github.com/CoLRev-Environment/colrev  (including alias etc.)
Plan: 45 min

Fragen: 30-40 min

Test and practice merge/merge conflict

-->