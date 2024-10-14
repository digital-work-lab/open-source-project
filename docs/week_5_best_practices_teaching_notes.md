---
layout: default
title: "Week 5: Best practices (teaching notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 5: Best practices (teaching notes)

## Preparation

We should take notes on the work status discussion

## Introduction

Verbally (learning objectives): we encourage you to share challenges/errors/lessons-learned (without evaluation or judgment)
- we will not hold errors against you - on the contrary, it we recognize it as a contribution if you articulate challenges, or share solutions

## Organizing work

Discuss where students searched, how to proceed (do not provide easy solutions)
Ask students to explain how they currently understand the task, where they would search
Key task: self-organizing, understanding code

## Task-Splitting strategy

- Skeleton (existing or new package?) - draft method signatures (e.g., accepting a dictionary, defining a dictionary at the beginning, and calling the script using __name__ == "main")
- trying options
- Split: search / load / add_endpoint
- docs

```
def load(self, options) -> dict:
    options = {"query": "term"}
    print('Started search')

    return {...}


if __name__ == "main":
    search()
```

## Merging strategies

- Ask students to complete the commands and draw each Git graph on paper (with commit ID and message)

## Encouragement

Remember: 

- Challenging task
- We recognize your efforts working in a complex environment
- We are here to help
- All groups completed their projects successfully in the last projects

## TO DO after the session

Groups to "fix" main (git reset --hard && git push -f): ADD_HERE


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

Use [colrev-template](https://github.com/CoLRev-Environment/colrev-template){: target="_blank"} in GitHub codespaces
Plan: 45 min

-> continue with the setup in https://github.com/CoLRev-Environment/colrev  (including alias etc.)
Plan: 45 min

Fragen: 30-40 min

Test and practice merge/merge conflict