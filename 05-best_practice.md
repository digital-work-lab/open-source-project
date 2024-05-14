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
- How should we select merging strategies?

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

- Understanding of CoLRev

    - User workflow (starting point: [video](https://colrev.readthedocs.io/en/latest/))
    - Architecture (starting point: [API chart and reference](https://colrev.readthedocs.io/en/latest/dev_docs/api.html) and [modules](https://github.com/CoLRev-Environment/colrev/tree/main/colrev))
    - Package development and SearchSources (starting point: [package development resources](https://colrev.readthedocs.io/en/latest/dev_docs/packages.html), [CEP 003 - SearchSources](https://colrev.readthedocs.io/en/latest/foundations/cep/cep003_search_sources.html))

- As a team, do you know where and how to contribute your code (modules, classes to use or create)?

<!-- 
Discuss where students searched, how to proceed (do not provide easy solutions)
Ask students to explain how they currently understand the task, where they would search
Key task: self-organizing, understanding code

Encouragement: all the complexity (git, python, colrev) you have managed so far already contributes to your grade (you have to stretch, but we support you, and no group has failed to deliver so far)

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
- Skeleton (existing or new package?) - draft method signatures (e.g., accepting a dictionary, defining a dictionary at the beginning, and calling the script using __name__ == "main")
- trying options
- Split: search / load / add_endpoint
- docs


def search(self, options):
    options = {"query": "term"}
    print('Started search')


if __name__ == "main":
    search()
-->

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

Merge commits:

- Always merge ``remotes/origin/main`` into ``remotes/fork/main``. Do not commit directly to ``remotes/fork/main``. This will ensure that you will always have fast-forward merges.
- Always use merge (commits) when you work on shared branches.

Squash: 

- If you have worked on a single coherent task, which involved different commits.

Rebase:

- As "the last merge into the target branch", creating a linear history without merge commits.
- Do not rebase shared feature branches.

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