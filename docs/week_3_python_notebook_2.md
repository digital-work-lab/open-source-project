---
layout: default
title: "Python session 2"
parent: "Week 3: Python"
nav_order: 3
has_toc: true
---

# Python session 2

![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="../assets/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_3_python_notebook_2.md" target="_blank">suggestions</a> on this notebook!

---

With this notebook, you can refactor to object-oriented code, switch to a real CoLRev project and load the records using the CoLRev classes, and save changes to create a commit.  Specifically, we will cover the following learning objectives:

{: .objective } 
> - Learn how to write object-oriented code
> - Learn how to use CoLRev infrastructure
> - Learn how to save and commit changes

📑 Session Slides
➡️ [![View online](https://img.shields.io/badge/View-Slides-orange?logo=html5)](../output/04-python_2.html){: target="_blank"} · ⬇️ [![Download PDF](https://img.shields.io/badge/Download-PDF-orange?logo=adobe)](../output/04-python_2.pdf){: target="_blank"}


| Part      | Label                                                        | Time (min) |
|-----------|--------------------------------------------------------------|------------|
|           | Setup                                                        | 10         |
| Part 1    | [Object-oriented programming](#object)                       | 30         |
| Part 2    | [Programmatic use of CoLRev](#colrev)                        | 40         |
| Part 3    | [Save and commit changes](#save-commit)                      | 30         |
|           | Wrap-up                                                      | 10         |
|           | Overall                                                      | 120        |

<br>

{: .info }
> Continue working on your [Codespace](https://github.com/codespaces){: target="_blank"} started in the previous session.

Resume the codespace as follows:

<img src="../assets/codespace-start.gif"  loop="1" width="800"/>

To select the **starting point** (commit), run:

```python
git reset --hard f859208f8ddaf5651f5c2b378e7e07543ca7cdd1
```

## Part 1. Object-oriented code <a id="object"></a>

### Object-oriented programming

Our next goal is to implement the previous example (adding the journal impact factor to the records) using Python objects/methods, and using the CoLRev infrastructure.

**Task**: Create the `JIFLabeler` class, instantiate an object, and add the `add_jif()` method (based on the [Python objects/methods syntax](https://www.w3schools.com/python/python_classes.asp){: target="_blank"}). Run and revise the code (if necessary).

**Hint** Also adapt the path of the records to `data/records.bib`. This is where CoLRev projects store the main records file.

To select the **solution**, run:

```python
git reset --hard 670c56408684f8b3b466c22f25a62fe2bed88bd1
```

## Part 2: Programmatic use of CoLRev <a id="colrev"></a>

### Using CoLRev infrastructure

In the following, we start to work with the CoLRev library. To install it, run

```
uv install colrev
```

To use the CoLRev infrastructure, take a look at the [API reference](https://colrev-environment.github.io/colrev/dev_docs/api.html){: target="_blank"} and find the classes and methods that can be used to load and save records.

**Task**: Rewrite the code in `run.py` to use CoLRev classes and methods. Upon instantiating the `JIFLabeler`, instantiate a `ReviewManager` object and keep it as an object variable. When calling the `main` method, the records should be loaded by using the `ReviewManager`'s dataset methods.

**Hint**: Remember to import the required modules. Test your code, run the linters, and try to address potential warnings.

To select the **solution**, run:

```python
git reset --hard 29e5cf28e3c96940e19e5af470977092ef3b8d47
```

## Optional challenge

To improve the code, try to implement these two changes:

- Instead of using `print()` statements, it is recommended to use the `ReviewManager`'s logger.
- Instead of using the record dicts, it is recommended to work with the `Record` class and its `update_field()` method.

To select the **solution**, run:

```python
git reset --hard 8a4d064771f2b527b6479ac967bde0a5aabd9b19
```

## Part 3: Save and commit <a id="save-commit"></a>

### Save and commit changes

**Task**: Save the records (using the `dataset` attribute of `ReviewManager`) and create a commit (using the `ReviewManager`).

Review the commit and its content.

To select the **solution**, run:

```python
git reset --hard 99f4477aabd4dfd5eaec7ddefefab2b632ef95e0
```

---

## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Python commit notebook - good work! 🎈🎉

In this notebook, we have learned to

- Write object-oriented code in Python
- Use CoLRev programmatically
- Save and commit changes in a CoLRev project
- Use stop and resume in GitHub Codespaces

Remember to delete your [codespace](https://github.com/codespaces){: target="_blank"} after the session.
