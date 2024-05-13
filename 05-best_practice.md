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

# Quick questions

**Do we have to change the README.md?**
- You do not have to change the top-level README.md file, but you have to update README.md files in subdirectories to document your work.

**How can I commit if the pre-commit hooks fail?**
- The pre-commit hooks can be skipped using `git commit -n -m "commit message..."`. The `-n` flag stands for `--no-verify` and skips the pre-commit hooks.
- However, pre-commit hooks should pass to ensure good code quality. Some of the failing tests have been fixed recently.

**How can I get access rights to create branches in the fork?**
- Ask the team lead to invite you to the fork (see [step 2](https://digital-work-lab.github.io/open-source-project/output/02-git.html#32)).

<!--
Packages directory: see https://colrev.readthedocs.io/en/latest/dev_docs/packages.html
Anpassung der README-Datei Teil der Aufgabe? (vermutlich bezogen auf die top-level README datei: nein, das mache ich als Maintainer. Anpassung der package-README-Datei ist Teil der Aufgabe (Dokumentation))

-->

---

# Complex questions and work status

- Why are there errors in my environment?
- How does CoLRev work?
- How can we organize and split tasks?

---

# Work status: Environment setup

- Errors may be raised only in specific settings, i.e., versions of operating systems, Python, package managers, dependencies, and CoLRev
- What we do to identify and fix errors: 

    - Run [matrix tests](https://github.com/CoLRev-Environment/colrev/actions/workflows/tests.yml) covering two operating systems, four Python versions, and the latest version of CoLRev with the pip and poetry package manager (latest vs. fixed dependencies)
    - Reduce dependencies
    - Fix errors that are reported

- What you can do to avoid errors:

    - Use supported environments, such as GitHub Codespaces or Ubuntu
    - Avoid "cutting-edge" versions (of operating systems and Python)
    - Report errors

![bg right:37% width:550px](../assets/sources-of-errors.png)

---

# Work status: Environment setup

- Are you confident with your setup (fork, local development, running your code, executing pre-commit hooks to improve code quality)?

    - What was particularly helpful (insights you can share with the other teams)?
    - What are the challenges we can discuss?

---

# Work status: Where to contribute

- As a team, do you know where and how to contribute your code (modules, classes to use or create)?

<!-- 
Discuss where students searched, how to proceed (do not provide easy solutions)
Read
- https://colrev.readthedocs.io/en/latest/dev_docs/packages.html
- https://colrev.readthedocs.io/en/latest/foundations/cep/cep003_search_sources.html
Gesamtverständnis: CoLRev (?)
-->

---

# Work status: How to organize tasks

- How did you distribute tasks in the team (who works on what, which branches did you create, does regular sync work for you)?

<!-- 

Task-Splitting strategy
- Skeleton
- trying options
- Split: search / load / add_endpoint
- docs
-->

---

# Open questions?

<!-- 
Remember: 
- Challenging task
- We recognize your efforts working in a complex environment
- We are here to help
- All groups completed their projects successfully in the last projects



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