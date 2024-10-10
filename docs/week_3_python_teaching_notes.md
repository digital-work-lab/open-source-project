---
layout: default
title: "Week 3: Python"
nav_exclude: true
has_toc: true
---

# Week 3: Python (Teaching notes)

# Preparation

```
git checkout tutorial_python
git rebase -i HEAD~16
# edit the "update click" commit (before the tutorial starts) with the latest pyproject.toml / poetry update to update poetry.lock
git rebase main
git push -f
```

Solution note: [sheet](../assets/python-tutorial-notes.odt)

- update git-commit SHAs?
- checkout tutorial2 branch (tutorial branch should be available as a backup)

- before switching to tutorial/after the tutorial:
run pip3 install -e . (to take code from the right repository)

- print the diffs (python-tutorial-notes.odt) for the commits on paper (to facilitate my life-coding)
-. At the end: run pip install e in your project (otherwise, you will run the tutorial Version. 


# Short group sessions

- who forked/leads
- clear announcement for overbooked groups

ask: who has a working machine? -> form groups around them!



# Python

Object-oriented
Procedural
Functional

Interpreted language: unlike Java which requires us to compile the jar file 


- Strongly typed: Explicit conversion required
- Python fails at runtime when asked to multiply/divide strings and strings. If you need the numbers stored inside a string variable, you need to cast it explicitly (`int_var = int("99")`).
- dynamically typed: typing information is only evaluated when running code (e.g., string * string in if-statement that is not evaluated does not fail)

Example:

```
Java: 
int count = 2;

Python:
count = 2
# type(count) = class:int (everything is an object)
word = "test"
count*word = "testtest"
word+count # raises TypeError (searches for addition-operation for two strings and fails)
word+str(count) + "test2"
# think: count = "2"
if False:
  cound+word # not error - never executed (dynamically typed, i.e., only evaluated at runtime)
if True:
  cound+word # error
```

<!-- https://www.futurelearn.com/info/courses/python-in-hpc/0/steps/65121#:~:text=Python%20is%20both%20a%20strongly,is%20determined%20only%20during%20runtime. -->


Our focus: using the programming language to build things (not to understand the programming language)

# Important

Students should not set up their machines during the session.
Ask students to complete the tutorial on github codespaces

setup for the data directory:
```
shell:
cd ..
mkdir data
Datei: Ordner zum Arbeitsbereich hinzufügen (select workspace/data)
open two separate shells
```

# Entrypoint

- Explain `__main__`

-> commit: pre-commit hooks!
-> explain later (they do some formatting and warn us if there are code quality issues)

Goal: orientation/read code, try to figure out things

# Creating dictionaries

Optional additional challenge: use the constants as keys (package development docs)

# External libraries

after 2-3 minutes: write BibtexParser on the blackboard

# JIF labeler:

Remember:

- Call-by-value: for "simple data types" (str, int, float)
- Call-by-reference: for mutable objects (list, dict, object)

```
# Starting point: add_journal_impact_factor(record: dict) changes the values of the dictionary outside the function (without an explicit return/assignment)

def change_journal(journal: str) -> None:
  journal = "Nature"

journal = "MIS Quarterly"
change_journal(journal)
print(journal) # prints MIS Quarterly (not nature) due to call-by-value for simple/immutable data types in Python
```

Show input() when iterating over the results

Google
- "mypy no-untyped-def"
- "mypy no-untyped-def"
- "pylint missing-function-docstring"

Explain difference between positional and keyword arguments

Note: it can be helpful to make mistakes on purpose (e.g., indentation, etc.) to read and interpret the error messages with students.

Pylint example.

example:
************* Module colrev.ops.built_in.search_sources.aisel
colrev/ops/built_in/search_sources/aisel.py:225:19: W3101: Missing timeout argument for method 'requests.get' can cause your program to hang indefinitely (missing-timeout)


# Python session 2 (end)

run the pre-commit hooks a few times to illustrate the typing information

## Object-oriented programming

Important: try to program using objects (instead of procedural programming)

if record["journal"] == "MIS Quarterly":
KeyError: 'journal'
-> if statement (better: if "journal" not in record: return)

Notice: when creating the run() method, the jif_labeler_instance switches to "self".

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