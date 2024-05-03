---
marp: true
header: 'Introduction to Python'
footer: 'Prof. Dr. Gerit Wagner'
theme: ub-theme
paginate: true
---

<!-- _class: lead -->

<!-- _class: centered -->

# Projekt: Einführung in Python (1)

<!--
---

# Short group sessions

- who forked/leads
- clear announcement for overbooked groups

ask: who has a working machine? -> form groups around them!

https://github.com/dirediredock/PythonWorkshop

-->

---

# Project: Groups, forks and setup

- Groups formed in the issue feeds
- Forks were created. Note: we added best practices for forks: [slide-33](https://digital-work-lab.github.io/open-source-project/output/02-git.html#33)
- Further questions related to the GitHub setup?
- Setup completed?

---

# Learning objectives:

- Familiarize with Python syntax
- Learn good debugging and development practices
- Understand how to extend a Python package (CoLRev)

<!--
- Use google/Stackoverflow on any error/challenge that comes up!
- Using Code quality checkers and tests
-->

# Groups

- Form groups of three to four, discuss your solutions, and solve problems together.

<!-- 
FIRST: Who has a working machine?
-->

---

# Python

- Supports multiple paradigms: object-oriented, procedural, or functional
- Python is an interpreted language: no need to compile (build jars) before running
- Uses indentation instead of brackets to separate blocks (such as if statements)
- Is strongly, dynamically typed
- Provides access to many packages on [PyPI](https://pypi.org/), covering machine learning, data science, web scraping, etc.

---

# Overview

![width:800px center](../assets/python_overview_1.PNG)

<!-- 
In this session (2x90 min), we will:

- [ ] Create and run a Python package command
- [ ] Create and modify a dictionary data structure
- [ ] Use an external library to read BibTeX records (as dicts)

In the following session (2x90 min), we will:

- [ ] Refactor to object-oriented code
- [ ] Switch to a real CoLRev project and load the records using the CoLRev classes
- [ ] Save changes and create commit
 -->


---

# Writing and running Python code

![width:700px center](../assets/python_code_run.PNG)

<!-- 
- Create a separate **project directory** to run the colrev commands.
- To modify colrev functionality, switch to the **colrev package directory**.

Remember: cd ..., mkdir ... (open two shells)
-->

---

# Python packages

![width:700px center](../assets/python_package.PNG)

<!--
---

To run a Python script, simply run

```
python script.py
```

When a Python package (such as CoLRev) is installed, you can call it directly through the cli (providing parameters if necessary):

```
colrev status
```

 Note : you can call installed python packages from any directory. scripts must be called by their relative/absolute path -->

---

For the tutorial, we switch to the `tutorial_2024_04` branch:

```
git clone https://github.com/CoLRev-Environment/colrev
cd colrev
pip install -e .[dev]
git fetch
git checkout tutorial_2024_04
git reset --hard ca9902e666518af1d33a368adf055c9809004433
```

- As the session progresses, you can checkout the current commits.
- Whenever you see a `git reset --hard ...` command on the following slides, you can use it to set your repository to the required state (commit).

<!-- 
All: update colrev and reinstall with pip!

explain editable installation:
pip3 install -e .

git reset --hard HEAD~5 && git pull

Remember: what does the command do?

Note: you can also continue with your version and do the reset --hard at any time.

You will have all the code available to go over again / after this session
-->
---

# Python packages: Setting up entrypoints

We implement a simple version of CoLRev that should be available through a separate command:

```
colrev run
```

- Check the last commit and the changes that were introduced. Which function does our new `run` command call?
- Create the `run` module (module: file containing Python code) and the function that should be called. The function should print `Start simple colrev run`. Note that calling `colrev.ops.run.main()` means that colrev will try to import and run the `main()` function in the `colrev/ops/run.py` module. Check the other functions in the `ui_cli/cli.py` and the other modules in the `colrev/colrev` directory if necessary.
- Create a commit once the command works.

<!-- 

explain 
__main__

-> commit: pre-commit hooks!
-> explain later (they do some formatting and warn us if there are code quality issues)

Goal: orientation/read code, try to figure out things
-->

---

# Overview

![width:800px center](../assets/python_overview_2.PNG)

---

# Data types

Dictionaries are efficient data structures, which can be used to handle bibliographic records, such as the following (in BibTex format):

```
@article{Pare2023,
  title   = {On writing literature reviews},
  author  = {Pare, Guy},
  journal = {MIS Quarterly},
  year    = {2023}
}
```

Create a dictionary containing these data fields and print it when `colrev run` is called.

Note: You can find the syntax for Python dictionaries (and many other data types) in the [W3School](https://www.w3schools.com/python/python_dictionaries.asp).

---

# Changing data

Next, we need a field indicating the record's status throughout the [process](https://colrev.readthedocs.io/en/latest/manual/operations.html).

Add a `colrev_status` field to the dictionary, and set its value to `md_imported`. Create a commit once the command prints the following:

```
Start simple colrev run
{'ID': 'Pare2023', 'title': 'On writing literature reviews', 'journal': 'MIS Quarterly', 'year': '2023', 'author': 'Pare, Guy', 'colrev_status': 'md_imported'}

```

$\hspace{8cm}$

To checkout the solution, run:
```
git reset --hard 6eb40fe1ac3a21c9be1b4d891525b6c5d78719f3
```

<!-- To reset, run: 

clarify state transitions
-->
---

# Overview

![width:800px center](../assets/python_overview_3.PNG)

---

# Finding and adding external libraries

Next, we decide to load (parse) a BibTeX file stored in the project. Search for an appropriate Python library to parse BibTeX files. Try to figure out how to install it and how to use it.

<!-- 
after 2-3 minutes: write BibtexParser on the blackboard
-->
---

We decide to use the [BibtexParser](https://github.com/sciunto-org/python-bibtexparser) package, which developed actively and available under an Open-Source license.

To install it, we could follow the instructions and run

```
pip install bibtexparser
```

To add it as a dependency of CoLRev and make it available for users of the CoLRev package, we run
```
poetry add bibtexparser
```

Check the changes and create a commit.

To checkout the solution, run:
```
git reset --hard 6b357d3cc5838e1c29ca908e5470dfd36335b9a2
pip install -e .[dev]
```

---

# Using external libraries

Go to the [bibtexparser tutorial](https://bibtexparser.readthedocs.io/) and figure out how to load a BibTeX file (**important : use v1!**). An example `records.bib` file is available [here](../assets/records.bib).

Instead of defining the dictionary in the `run.py`, use the bibtexparser to load the `records.bib` file. Remember to store the `records.bib` in the **project directory**. 

Afterwards, loop over the records (`for ...`) and print the title of each record.

Create a commit, and try to resolve linting errors (if any). We will address the [typing](https://realpython.com/python-type-checking/)-related issues together.

To checkout the solution, run:
```
git reset --hard ff2a044d2d0e535ea8814d31c962eae4eee64075
```

<!-- 
clarify:
- call by value/reference
- keyword vs positional arguments

example:
************* Module colrev.ops.built_in.search_sources.aisel
colrev/ops/built_in/search_sources/aisel.py:225:19: W3101: Missing timeout argument for method 'requests.get' can cause your program to hang indefinitely (missing-timeout)
-->
---

Next, we would like to create a function, which adds the `journal_impact_factor` based on the following table:

| journal | journal_impact_factor |
| ------- | ----------------------|
| MIS Quarterly |              8.3|
| Information & Management | 10.3 |

Add your changes to the staging area, run the pre-commit hooks, and address the warnings:

```
pre-commit run --all
```

To checkout the solution, run:
```
git reset --hard def8cd6113b9a7ded7a0d6abfd828c7735373197
```

<!-- 
Note: Pfeil-nach-oben-Taste oder bash alias nutzen!
-->

---

# Best practices

- Carefully read tutorials, vignettes, and code examples (e.g., on GitHub) 
- Start with small code segments, try whether they work, and extend them
- Add or commit working code frequently
- Use code linters to ensure high code quality (run `pre-commit run --all`)
- To debug code, check whether variables have the expected values (use assert statements)
- When exceptions are thrown, read the Traceback:

![width:500px center](../assets/python-exception-trace.png)

<!-- 
small examples: clarify the "big goal" and start with small steps
linters: already installed


Code highlighting (visual studio): functions yellow, variables light blue, instances blue, classes green, strings orange
python debuggers/plugins (for regular Python programming / special cases like memory usage or distributed systems)
-->

---

# Next steps

- Read the [package development](https://colrev.readthedocs.io/en/latest/dev_docs/packages.html) documentation.
- Study code of related CoLRev packages.
- Take notes on the CoLRev-objects or libraries that will be needed.
