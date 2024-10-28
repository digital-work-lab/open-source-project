---
layout: default
title: "Week 3: Python 2"
nav_exclude: true
has_toc: true
search_exclude: true
---

# Week 3: Python 2 (Teaching notes)

| Time (start)   | Duration  | Topic                                | Additional materials                                              |
|----------------|-----------|--------------------------------------|-------------------------------------------------------------------|
| 00:00          | 20        | Session 2: [Introduction](#intro_2)  | Concepts                                                          |
| 00:20          | 80        | Session 2: [Notebook 2](#notebook_2) | [notebook 2](week_3_python_notebook_2.html){: target="_blank"}    |
| 01:40          | 10        | Session 2: [Wrap-up](#wrap-up_2)     |                                                                   |

{: .objective }
> - TODO

{: .info }
> Have students start the codespaces on Github from colrev/tutorial branch (see notebook)

<div class="page-break"></div>

# Python session 2

run the pre-commit hooks a few times to illustrate the typing information

## Object-oriented programming

Important: try to program using objects (instead of procedural programming)

if record["journal"] == "MIS Quarterly":
KeyError: 'journal'
-> if statement (better: if "journal" not in record: return)

Notice: when creating the run() method, the jif_labeler_instance switches to "self".

![Solution](../assets/python_solution_5.png)

## Using CoLRev infrastructure

go to API reference
navigate through the classes / dataset


TBD:
  - search: run an api-search example, examine the commit message (settings changed! -> reference implementation)
-> we add a query -> docs: interface definitions: searchsource.add_endpoint(), run_search()
  -> see interfaces (standardized function parameters/names)
  - where to find the built_in reference implementation (docs/architecture and directories), how to add/remove in the settings
  -> see package_endpoint definitions (package_manager, docs)

  continue: prep/validation

  continue to data: show advice?


# Next: Best practice and hacking sessions (per group)

Pair-programming

which CoLRev-objects or libraries will be needed, which steps are required

- Create a fork for the team, give access to team members, and add a note to the issue feed
- All team members: clone the fork (using `git clone git@github.com:CoLRev-Environment/colrev.git`)
- Check the resources provided with the issue, discuss the project, and make plans

## Resources

- [Python programming for data science](https://www.tomasbeuzen.com/python-programming-for-data-science/README.html){: target="_blank"} with Python basics (and **unit tests**)
- [Welcome to Python Packages](https://py-pkgs.org/){: target="_blank"}
