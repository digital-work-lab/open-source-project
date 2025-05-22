---
layout: default
title: "Week 5: Best Practices (Teaching Notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 5: Best Practices (Teaching Notes)

| Time (start) | Duration | Topic                 | 
|--------------|----------|-----------------------|
| 00:00        | 10       | Introduction          |
| 00:10        | 20       | Technical setup       |
| 00:20        | 20       | Programming           |
| 00:30        | 20       | Teamwork              |
| 01:10        | 10       | Wrap-up               |
| 01:10        | 80       | Overall               |

{: .info }
> - We should take notes on the work status discussion
> - Rationale to proceed from technical to teamwork: Helping students overcome technical issues is one of the preconditions to working together in a team.

Approach:

- Discuss where students searched, and how to proceed (do not provide easy solutions)
- Ask students to explain how they currently understand the task, and where they would search
- Key task: facilitate self-organizing, understanding code

<div class="page-break"></div>

## Introduction

- We encourage you to share challenges/errors/lessons-learned (without evaluation or judgment)
- We will not hold errors against you - on the contrary, we recognize it as a contribution if you articulate challenges or share solutions

## Technical setup

Address questions as they come up (extend this part of the documentation for recurring issues).

{: .info }
> **Open questions**
> 
> See rustpad suggestions

## Programming

- A walk-through explaining colrev search and SearchSources (showing the changes in settings and records retrieved), and guidelines in testing code would be helpful.

{: .info }
> **Open questions**
> 
> See rustpad suggestions

## Teamwork

- pre-commit hooks (code quality) and tests (check whether it runs on all branches)
- Commit practices (atomic, no unrelated materials)
- Remember to sync regularly between remotes/origin and your fork
- Refresh skills related to Git, gitk, fork, using of branches/pull-requests, issues, and merging.

**Branching strategy**

Task-Splitting strategy

- Skeleton (existing or new package?) - draft method signatures (e.g., accepting a dictionary, defining a dictionary at the beginning)
- Use branches to test different options
- Possible task splitting strategy: search / load / add_endpoint
- Update the docs

```python
class XY:

    def __init__(self, ...):
        ...

    def add_endpoint(self, ...):
        ...
    
    def load(self, options) -> dict:
        options = {"query": "term"}
        print('Started search')
    
        return {...}
    
    def search(self, ...) :
    
        ...
    
    if __name__ == "main":
        search()
```

{: .highlight }
> Call the module as a script using `__name__ == "main"` and `python module_name.py`

**Problems within teams**

- No clear roles - which roles should exist?
- Ask for challenges, offer help
- Mention that we will check Git contribution (fair effort of all team members)
- Usually, we give one grade per group, but groups can raise challenges (allow us to help - last resort: different grades for group members, giving a bonus to those who do more)

{: .info }
> **Open questions**
> 
> See rustpad suggestions

## Wrap-up

Encouragement (remember):

- Challenging task
- We recognize your efforts working in a complex environment
- We are here to help
- All groups completed their projects successfully in the last projects

## TO DO after the session

Help groups to "fix" main when necessary, using `git reset --hard` and `git push -f`
