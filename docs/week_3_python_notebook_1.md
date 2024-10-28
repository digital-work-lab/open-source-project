---
layout: default
title: "Week 3: Python notebook 1"
nav_exclude: true
has_toc: true
search_exclude: true
---

# Exercise notebook: Python 1

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_3_python_notebook_1.md" target="_blank">suggestions</a> on this notebook!

---

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">With this notebook, you can familiarize yourself with Python syntax, create and run a Python package command, create and modify a dictionary data structure, and use an external library to read BibTeX records as dictionaries.</p>

| Part | Label                              | Time (min) |
|------|------------------------------------|------------|
|  1   | [Setup](#setup)                    |     10     |
|  2   | [Data items](#data)                |     20     |
|  3   | [External libraries](#libraries)   |     30     |
|  4   | [Functions](#functions)            |     18     |
|      | [Wrap-up](#wrap-up)                |      2     |
|      | Overall                            |     80     |

<br>

<img src="img/python_overview_1.PNG" width="820"/>

## Part 1: Setup <a id="setup"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I write and use Python code?"</b></p>

### Switch branch

Navigate to the [CoLRev repository](https://github.com/CoLRev-Environment/colrev){: target="_blank"}, select the `tutorial_python` branch and start Codespaces.

<!-- 

For the tutorial, we switch to the `tutorial_python` branch:


```python
cd /workspaces
git clone https://github.com/CoLRev-Environment/colrev

```

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block;">
    <strong>Info</strong> The code -a ... command will reopen the codespace window and add the new project to the sidebar. You will have to navigate to this notebook again.</p>
</div>


```python
code -a /workspaces/colrev
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Navigate to the colrev directory and checkout the tutorial branch with the first commit:</p>

cd /workspaces/colrev
pip install -e .[dev]
pre-commit install
pip install poetry
colrev install all_internal_packages
git fetch
git checkout tutorial_python
-->

As a first step, we install the package dependency manager **Poetry**, which will be used in [part 3](#libraries):

```
pip install poetry
```


```python
git reset --hard c9c915792f920e7198fed463ef7199cc84bb2264
```

<div style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">
 
<ul>
<li>As the session progresses, you can checkout the current commits.</li>
<li>Whenever you see a <code>git reset --hard ...</code> command on the following slides, you can use it to set your repository to the required state (commit).</li>
</ul>

</div>

### Setting up entrypoints

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We implement a simple version of CoLRev that should be available through a separate command:</p>


```python
colrev run
```

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block;">
    <strong>Info</strong> The previous command will initially create a <code>ModuleNotFoundError</code>. We will create this module in the next step.
</div>

**Tasks:**

<div style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">
 
<ul>
<li>Check the last commit and the changes that were introduced. Which function does our new <code>run</code> command call?</li>
<li> Create the <code>run.py</code> module (module: file containing Python code) and the function that should be called. The function should print <code>Start simple colrev run</code>. Note that calling <code>colrev.ops.run.main()</code> means that colrev will try to import and run the <code>main()</code> function in the <code>/workspaces/colrev/colrev/ops/run.py</code> module.</li> 
<li>Check the other functions in the module <code>/workspaces/colrev/colrev/ui_cli/cli.py</code>, and other modules in the <code>/workspaces/colrev/colrev</code> directory if necessary.</li>
</ul>

</div>

## Part 2: Data items <a id="data"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I create and modify data items?"</b></p>

###  Data types

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In this part, we focus on the data structure of dictionaries, which are often used in CoLRev. Dictionaries are efficient data structures, which can be used to handle bibliographic records, such as the following (in BibTeX format):</p>

```Tex
@article{Pare2023,
  title   = {On writing literature reviews},
  author  = {Pare, Guy},
  journal = {MIS Quarterly},
  year    = {2023}
}
```

**Task**: Create a dictionary containing these data fields and print it when `colrev run` is called.

You can find the syntax for Python dictionaries (and many other data types) in the [W3School](https://www.w3schools.com/python/python_dictionaries.asp){: target="_blank"}.


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Challenge (optional)</b>: If you have completed the previous tasks, try to use the CoLRev constants for fields like <code>title</code>, <code>author</code>, etc.. In many cases, using constants like these is preferable to so-called "magic strings".</p>

### Changing data

Next, we need a field indicating the record's status throughout the [process](https://colrev-environment.github.io/colrev/manual/operations.html){: target="_blank"}.

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Add a <code>colrev_status</code> field to the dictionary, and set its value to <code>md_imported</code>. Create a commit once the command prints the following:</p>


```python
Start simple colrev run
{'ID': 'Pare2023', 'title': 'On writing literature reviews', 'journal': 'MIS Quarterly', 'year': '2023', 'author': 'Pare, Guy', 'colrev_status': 'md_imported'}
```

To checkout the **solution**, run:


```python
git reset --hard 98a0db7aac2ba174989362594532b2128f4167fc
```

## Part 3: External libraries <a id="libraries"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I use external libraries?"</b></p>

### Finding and adding external libraries

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Next, we decide to load (parse) a BibTeX file stored in the project. Search for an appropriate Python library to parse BibTeX files. Try to figure out how to install it and how to use it.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We decide to use the <a href="https://github.com/sciunto-org/python-bibtexparser">BibtexParser</a> package, which is developed actively and available under an Open-Source license.</p>

```python
pip install bibtexparser
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To add it as a dependency of CoLRev and make it available for users of the CoLRev package, we run</p>


```python
poetry add bibtexparser
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Check the changes and create a commit.</p>

To checkout the **solution**, run:


```python
git reset --hard 859b02536acd0173cc4263a5e97a602826d8051f
cd /workspaces/colrev
pip install -e .[dev]
```

### Using external libraries

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Go to the <a href="https://bibtexparser.readthedocs.io/">bibtexparser tutorial</a> and figure out how to load a BibTeX file. An example <code>records.bib</code> file is available <a href="../assets/records.bib">here</a>. To use the file in your codespace, it needs to be uploaded. You can simply drag and drop the <code>records.bib</code> into <code>/workspaces/colrev</code>.</p>

{: .info }
> Bibtexparser has a pre-release (version 2), but for this session, we use version 1 of bibtexparser.

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Instead of defining the dictionary in the <code>run.py</code>, use the bibtexparser to load the <code>records.bib</code> file. Remember to store the <code>records.bib</code> in the <b>project directory</b>. </p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Afterwards, loop over the records (<code>for ...</code>) and print the title of each record.</p>

### Code quality

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Create a commit, and observe how the code quality checks are triggered (<a href="https://pre-commit.com/">pre-commit hooks</a>). Remember that you have to create the commit in the colrev repository. If there are any code quality problems, these checks will fail and prevent the commit. Try to resolve linting errors (if any). We will address the <a href="https://realpython.com/python-type-checking/">typing</a>-related issues together.</p>

To checkout the **solution**, run:


```python
git reset --hard f07be92d3c51ab8421caf57b77895dcb35395709
```

## Part 4: Functions <a id="functions"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Next, we would like to create a function, which adds the <code>journal_impact_factor</code> based on the following table:</p>

| journal | journal_impact_factor |
| ------- | ----------------------|
| MIS Quarterly |              8.3|
| Information & Management | 10.3 |

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Add your changes to the staging area, run the pre-commit hooks, and address the warnings:</p>


```python
pre-commit run --all
```

To checkout the **solution**, run:


```python
git reset --hard f07be92d3c51ab8421caf57b77895dcb35395709
```

---

## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Python commit notebook - good work! 🎈🎉

In this notebook, we have learned to

- Write and execute Python code in Python packages and modules
- Create and modify data items, such as dictionaries
- Install and use external libraries
- Write modular code by using functions

To continue using your work in the next session, <b>stop</b> your Codespace [here](https://github.com/codespaces){: target="_blank"}.
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In contrast to deleting a Codespace (which removes all files, changes, settings, etc.), stopping the Codespace preserves the current state of your work and does not consume computational resources.</p>

<img src="img/codespace-stop.gif"  loop="1" width="800"/>
