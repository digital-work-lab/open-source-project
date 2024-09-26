---
layout: default
title: "Week 5: Best practices (teaching notes)"
has_toc: true
nav_exclude: true
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
