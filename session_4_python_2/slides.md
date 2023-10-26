---
marp: true
header: 'Projekt'
footer: 'Prof. Dr. Gerit Wagner'
theme: ub-theme
paginate: true
---

# Projekt: Einführung in Python (2)

---

# Learning objectives:

- Familiarize with Python syntax
- Learn good debugging and development practices
- Understand how to extend a Python package (CoLRev)

# Groups

- Form groups of three, discuss your solutions, and solve problems together.

---

# Object-oriented programming and extending a Python package (CoLRev)

To use the typical CoLRev environments (objects), we switch to an existing CoLRev project:

```
cd ..
git clone git@github.com:CoLRev-Environment/example.git
cd example
colrev status
```

Briefly check the last commits of the project.

<!-- 
See how far we get...
-->

---

Our next goal is to implement the previous example (adding the journal impact factor to the records) using Python objects/methods, and using the CoLRev infrastructure.

As a first step, create the `JIFLabeler` class, instantiate an object, and add the `add_jif()` method (based on the [Python objects/methods syntax](https://www.w3schools.com/python/python_classes.asp)). Run and revise the code (if necessary).

Note: Also adapt the path of the records to `data/records.bib`. This is where CoLRev projects store the main records file.

To checkout the solution, run:
```
git reset --hard 4f164f40615485e7c8df9459d758df04519756f4
```

<!-- 
Imporant: try to program using objects (instead of procedural programming)

if record["journal"] == "MIS Quarterly":
KeyError: 'journal'
-> if statement (better: if "jounal" not in record: return)

Notice: when creating the run() method, the jif_labeler_instance switches to "self".
-->
---

To use the CoLRev infrastructure, take a look at the [API reference](https://colrev.readthedocs.io/en/latest/dev_docs/api.html) and find the classes and methods that can be used to load and save records.

<!-- 
go to API reference
navigate through the classes / dataset
-->
---

Upon instantiating the `JIFLabeler`, we would like to instantiate a `ReviewManager` object and keep it as an object variable.

When calling the main method, the records should be loaded by using the `ReviewManager`'s dataset methods.

Note: Remember to import the required modules. Test your code, run the linters, and try to address potential warnings.

To checkout the solution, run:
```
git reset --hard 091195ad2617cbc64f2dad954501550fb795fe33
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
git reset --hard 6dcb182a97b382a84321e1f349784e215789e0fa
```

<!--
run the pre-commit hooks a few times to illustrate the typing information
-->
---

Finally, we need to save the records (using the `dataset` class) and create a commit (using the `ReviewManager` class).

Review the commit and its content.

To checkout the solution, run:
```
git reset --hard 12c2d1730564b99fa11fbb618e92e2b67751e34c
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

# Resources

Introductory:

- [Python challenges](https://pythonprinciples.com/challenges/)
- [Python CheatSheets](https://quickref.me/python)
- [11 tips for Python beginners](https://realpython.com/python-beginner-tips/)
- [PEP 8 — the Style Guide for Python Code ](https://pep8.org/)

More advanced:

- [The Hitchhiker's Guide to Python](https://docs.python-guide.org/)
- [RealPython Tutorials](https://realpython.com/)
- [Python design patterns](https://refactoring.guru/design-patterns/python)

<!-- 
add resources on learning/practicing Python (introductory, advanced)
check: 
-->

---

# Next: Hacking sessions (per group)

- November - January
- Make plans on how to split and distribute tasks.
- Consultation sessions: schedule a session via [calendly](https://calendly.com/gerit-wagner/30min?month=2023-10)

<!-- 
Pair-programming

which CoLRev-objects or libraries will be needed, which steps are required

- Create a fork for the team, give access to team members, and add a note to the issue feed
- All team members: clone the fork (using `git clone git@github.com:CoLRev-Environment/colrev.git`)
- Check the resources provided with the issue, discuss the project, and make plans
-->
