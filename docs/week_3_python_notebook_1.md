---
layout: default
title: "Python session 1"
parent: "Week 3: Python"
nav_order: 2
has_toc: true
---

# Python session 1

![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="../assets/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_3_python_notebook_1.md" target="_blank">suggestions</a> on this notebook!

---

With this notebook, you can familiarize yourself with Python syntax, create and run a Python package command, create and modify a dictionary data structure, and use an external library to read BibTeX records as dictionaries.

{: .objective } 
> - Learn how to write and use Python code
> - Create and modify data items
> - Learn how to use external libraries
> - Learn how to use functions

<br>

📑 Session slides: ➡️ [View online](../output/03-python_1.html){: target="_blank"} · ⬇️ [Download PDF](../output/03-python_1.pdf){: target="_blank"}

<br>

| Part       | Label                              | Time (min) |
|------------|------------------------------------|------------|
|  Part 1    | [Setup](#setup)                    |     25     |
|  Part 2    | [Data items](#data)                |     30     |
|  Part 3    | [External libraries](#libraries)   |     30     |
|  Part 4    | [Functions](#functions)            |     60     |
|            | [Wrap-up](#wrap-up)                |      2     |
|            | Overall                            |    174     |

<br>

{: .info }
> Start a Codespace in the [colrev-python-tutorial](https://github.com/CoLRev-Environment/colrev-python-tutorial){: target="_blank"} repository.

## Part 1: Setup <a id="setup"></a>

**"How do I write and use Python code?"**

As a first step, we install the package dependency manager **uv**, which will be used in [part 3](#libraries):

```
pip install uv
```

Next, we reset the state of the repository to the beginning of the tutorial:

```bash
git reset --hard f0a13be2494181d56eb71a2f1aee8b4511f65919
```

- As the session progresses, you can select the current commits.
- Whenever you see a `git reset --hard ...` command on the following slides, you can use it to set your repository to the required state (commit).

### Setting up a Python script

We implement a simple Python script, `run.py`, which should be available through the following command:

```
python run.py
```

**Task**: Create the script, have it print "Hello World," and test the `python run.py` call.

```bash
git reset --hard 1778473e75718277ad2a1b623cde99c4fff674c0
```

## Part 2: Data items <a id="data"></a>

**"How do I create and modify data items?"**

### Data types

In this part, we focus on the data structure of dictionaries, which are often used in CoLRev. Dictionaries are efficient data structures that can be used to handle bibliographic records, such as the following (in BibTeX format):

```Tex
@article{Pare2023,
  title   = {On writing literature reviews},
  author  = {Pare, Guy},
  journal = {MIS Quarterly},
  year    = {2023}
}
```

**Task**: Create a dictionary containing these data fields and print it when `python run.py` is called.

You can find the syntax for Python dictionaries (and many other data types) in the [W3Schools](https://www.w3schools.com/python/python_dictionaries.asp){: target="_blank"}.

**Challenge (optional)**: If you have completed the previous tasks, try to use the CoLRev constants for fields like `title`, `author`, etc. In many cases, using constants like these is preferable to so-called "magic strings."

### Changing data

Next, we need a field indicating the record's status throughout the [process](https://colrev-environment.github.io/colrev/manual/operations.html){: target="_blank"}.

Add a `colrev_status` field to the dictionary, and set its value to `md_imported`. Create a commit once the command prints the following:

```python
Start simple colrev run
{'ID': 'Pare2023', 'title': 'On writing literature reviews', 'journal': 'MIS Quarterly', 'year': '2023', 'author': 'Pare, Guy', 'colrev_status': 'md_imported'}
```

To select the **solution**, run:

```bash
git reset --hard 728a2dbe5a3c0f15e989eac4faab7b877b2f3a0c
```

## Part 3: External libraries <a id="libraries"></a>

**"How do I use external libraries?"**

### Finding and adding external libraries

Next, we decide to load (parse) a BibTeX file stored in the project. Search for an appropriate Python library to parse BibTeX files. Try to figure out how to install it and how to use it.

We decide to use the [BibtexParser](https://github.com/sciunto-org/python-bibtexparser){: target="_blank"} package, which is actively developed and available under an open source license.

```python
pip install bibtexparser
```

### Using external libraries

Go to the [bibtexparser tutorial](https://bibtexparser.readthedocs.io/){: target="_blank"} and figure out how to load a BibTeX file. An example `records.bib` file is available [here](../assets/records.bib). To use the file in your Codespace, it needs to be uploaded. You can simply drag and drop the `records.bib` into `/workspaces/colrev-python-tutorial`.

{: .info }
> Bibtexparser has a pre-release (version 2), but for this session, we use version 1 of bibtexparser.

Instead of defining the dictionary in `run.py`, use bibtexparser to load the `records.bib` file.

Afterward, loop over the records (`for ...`) and print the title of each record.

To select the **solution**, run:

```bash
git reset --hard a84c9be1fb215f9cda8920bcdb86ff529bfc83d2
```

## Part 4: Functions <a id="functions"></a>

Next, we would like to create a function that adds the `journal_impact_factor` based on the following table:

| journal                  | journal_impact_factor |
| ------------------------ | ----------------------|
| MIS Quarterly            |                    8.3|
| Information & Management |                  10.3 |

To select the **solution**, run:

```bash
git reset --hard bc94da869184485f7805dba2b9f8e32af0ff2dfb
```

---

## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Python commit notebook - good work! 🎈🎉

In this notebook, we have learned to

- Write and execute Python code in a Python script
- Create and modify data items, such as dictionaries
- Install and use external libraries
- Write modular code by using functions

To continue using your work in the next session, <b>stop</b> your Codespace [here](https://github.com/codespaces){: target="_blank"}.
In contrast to deleting a Codespace (which removes all files, changes, settings, etc.), stopping the Codespace preserves the current state of your work and does not consume computational resources.

<img src="../assets/codespace-stop.gif"  loop="1" width="800"/>

{: .info } 
> **Stop your Codespace**
> Remember to stop your [Codespace](https://github.com/codespaces){: target="_blank"} after the session. This will preserve your data without consuming computational resources.
