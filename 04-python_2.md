---
marp: true
header: 'Introduction to Python'
footer: 'Prof. Dr. Gerit Wagner'
theme: ub-theme
paginate: true
---

<!-- _class: lead -->

<!-- _class: centered -->

# Project: Introduction to Python (2)

---

# Switch the data directory

To use the typical CoLRev environments (objects), we switch to an existing CoLRev project:

```
cd ~
git clone https://github.com/CoLRev-Environment/example.git
cd example
colrev status
```

Briefly check the last commits of the project.

<!-- 
See how far we get...
-->

---


## Overview of the tutorial

![width:800px center](../assets/python_overview_4.PNG)

<!-- 
In the last session, we:

- [x] Created and run a Python package command
- [x] Created and modify a dictionary data structure
- [x] Used an external library to read BibTeX records (as dicts)

In this session (2x90 min), we will:

- [ ] Refactor to object-oriented code
- [ ] Switch to a real CoLRev project and load the records using the CoLRev classes
- [ ] Save changes and create commit
-->

---


# Object-oriented programming

Our next goal is to implement the previous example (adding the journal impact factor to the records) using Python objects/methods, and using the CoLRev infrastructure.

As a first step, create the `JIFLabeler` class, instantiate an object, and add the `add_jif()` method (based on the [Python objects/methods syntax](https://www.w3schools.com/python/python_classes.asp)). Run and revise the code (if necessary).

Note: Also adapt the path of the records to `data/records.bib`. This is where CoLRev projects store the main records file.

To checkout the solution, run:
```
git reset --hard 19f283870f7abf20f7e52e1783b94cc6bcf330a6
```

<!-- 
Important: try to program using objects (instead of procedural programming)

if record["journal"] == "MIS Quarterly":
KeyError: 'journal'
-> if statement (better: if "jounal" not in record: return)

Notice: when creating the run() method, the jif_labeler_instance switches to "self".
-->
---

![width:800px center](../assets/python_overview_5.PNG)

---

# Using CoLRev infrastructure

To use the CoLRev infrastructure, take a look at the [API reference](https://colrev-environment.github.io/colrev/dev_docs/api.html) and find the classes and methods that can be used to load and save records.

<!-- 
go to API reference
navigate through the classes / dataset
-->
---

Upon instantiating the `JIFLabeler`, we would like to instantiate a `ReviewManager` object and keep it as an object variable.

When calling the `main` method, the records should be loaded by using the `ReviewManager`'s dataset methods.

Note: Remember to import the required modules. Test your code, run the linters, and try to address potential warnings.

To checkout the solution, run:
```
git reset --hard 34a59a63e0d02fa49d1963dda6f065a66e3be2cd
```

<!-- 
-> switch to review_manager ()
-->
---

Before completing the task, we need to implement two changes:

- Instead of `print()` statement, it is recommended to use the `ReviewManager`'s logger.
- Instead of using the record dicts, it is recommended to work with the `Record` class and its `update_field()` method.

To checkout the solution, run:
```
git reset --hard 0ae830b4c77d7a19d3beb7bc6b7485d3d871dbe9
```

<!--
run the pre-commit hooks a few times to illustrate the typing information
-->
---

![width:800px center](../assets/python_overview_6.PNG)

---

# Save and commit changes

Finally, we need to save the records (using the `dataset` attribute of `ReviewManager`) and create a commit (using the `ReviewManager`).

Review the commit and its content.

To checkout the solution, run:
```
git reset --hard 402d602b91e4eff1cdd1499a5fbd7b5bf816d743
```

<!-- 

TBD:
  - search: run an api-search example, examine the commit message (settings changed! -> reference implementation)
-> we add a query -> docs: interface definitions: searchsource.add_endpoint(), run_search()
  -> see interfaces (standardized function parameters/names)
  - where to find the built_in reference implementation (docs/architecture and directories), how to add/remove in the settings
  -> see package_endpoint definitions (package_manager, docs)

  continue: prep/validation

  continue to data: show advice?

later: show debugging
-->

---

![width:800px center](../assets/python_overview_6.PNG)

---

# Resources

Introductory:

- [Python challenges](https://pythonprinciples.com/challenges/)
- [Python CheatSheet](https://medium.com/@roelljr/ultimate-python-cheat-sheet-practical-python-for-everyday-tasks-c267c1394ee8)
- [11 tips for Python beginners](https://realpython.com/python-beginner-tips/)
- [PEP 8 — the Style Guide for Python Code ](https://pep8.org/)

More advanced:

- [The Hitchhiker's Guide to Python](https://docs.python-guide.org/)
- [RealPython Tutorials](https://realpython.com/)
- [Python design patterns](https://refactoring.guru/design-patterns/python)

Tip:
You can use this [tutorial](https://www.codecademy.com/catalog/language/python?g_network=g&g_productchannel=&g_adid=624888211335&g_locinterest=&g_keyword=codecademy%27s%20learn%20python&g_acctid=243-039-7011&g_adtype=&g_keywordid=kwd-2259230975260&g_ifcreative=&g_campaign=account&g_locphysical=9042755&g_adgroupid=128133971748&g_productid=&g_source={sourceid}&g_merchantid=&g_placement=&g_partition=&g_campaignid=12575778360&g_ifproduct=&utm_id=t_kwd-2259230975260:ag_128133971748:cp_12575778360:n_g:d_c&utm_source=google&utm_medium=paid-search&utm_term=codecademy%27s%20learn%20python&utm_campaign=INTL_Brand_Phrase&utm_content=624888211335&g_adtype=search&g_acctid=243-039-7011&gad_source=1&gclid=CjwKCAjwzIK1BhAuEiwAHQmU3t-FhdTeqJcFCUfaU1x1cvYdKGfh9vdxz1b8ll5Tl_2wcSc8wgMNhRoCJqoQAvD_BwE) for more insights in Python

<!-- 
add resources on learning/practicing Python (introductory, advanced)
check: 
-->

---

# Next: Best practice and hacking sessions (per group)

- Read the CoLRev-Enhancement Proposal on SearchSources [CEP-002](https://colrev-environment.github.io/colrev/foundations/cep/cep003_search_sources.html), and raise questions in the issue feed (if any)
- Take notes on key challenges and questions (for the best practice session)
- Attend consultation sessions: schedule a session via [calendly](https://calendly.com/gerit-wagner/30min?month=2023-10) (May 27-31: e-mail/remote only)

<!-- 
Pair-programming

which CoLRev-objects or libraries will be needed, which steps are required

- Create a fork for the team, give access to team members, and add a note to the issue feed
- All team members: clone the fork (using `git clone git@github.com:CoLRev-Environment/colrev.git`)
- Check the resources provided with the issue, discuss the project, and make plans
-->
