---
layout: default
title: "Week 5: Best Practices (Teaching Notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 5: Best Practices (Teaching Notes)

| Time (start) | Duration | Topic                 | Additional materials                                              |
|--------------|----------|-----------------------|-------------------------------------------------------------------|
| 00:00        | 10       | Introduction          |                                                                   |
| 00:10        | 10       | Warm-up questions     |                                                                   |
| 00:20        | 10       | Environment setup     |                                                                   |
| 00:30        | 10       | Branching strategy    |                                                                   |
| 00:40        | 10       | How to organize       |                                                                   |
| 00:50        | 10       | Best practices        |                                                                   |
| 01:00        | 10       | Open questions        |                                                                   |
| 01:10        | 10       | Wrap-up               |                                                                   |
| 01:10        | 80       | Overall               |                                                                   |

{: .info }
> - We should take notes on the work status discussion

<div class="page-break"></div>

Problems with group/team

- no clear roles - which roles should exist?
- ask for challenges, offer help
- mention that we will check Git contribution (fair effort of all team members)
- usually, we give one grade per group, but groups can raise challenges (allow us to help - last resort: different grades for group members, giving a bonus to those who do more)

## Introduction

- We encourage you to share challenges/errors/lessons-learned (without evaluation or judgment)
- we will not hold errors against you - on the contrary, it we recognize it as a contribution if you articulate challenges, or share solutions

## Warm-up questions

- Discuss where students searched, how to proceed (do not provide easy solutions)
- Ask students to explain how they currently understand the task, where they would search
- Key task: facilitate self-organizing, understanding code

## Environment setup

TBD.

## Branching strategy

Task-Splitting strategy

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

## How to organize

TBD.

## Best practices

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

## Open questions

- See rustpad suggestions

## Wrap-up

Encouragement (remember):

- Challenging task
- We recognize your efforts working in a complex environment
- We are here to help
- All groups completed their projects successfully in the last projects

## TO DO after the session

Groups to "fix" main (git reset --hard && git push -f): ADD_HERE