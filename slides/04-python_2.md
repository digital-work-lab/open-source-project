---
marp: true
header: 'Open-Source Project: Introduction to Python'
footer: 'Prof. Dr. Gerit Wagner'
theme: ub-theme
paginate: true
---

<!-- paginate: true -->

<!-- _class: centered -->

# WI-Project: Open-Source Project

## Introduction to Python (2)

Prof. Dr. Gerit Wagner
Faculty Information Systems and Applied Computer Sciences
Otto-Friedrich-Universität Bamberg

![center width:150px](../assets/qr-open-source-project.png)

---

# Information on this session:

- Form groups of three to four participants to collaborate on the tasks, solve them together, and engage in meaningful discussions about your solutions.
- Over the course of two sessions, we will focus on refining a single module using the colrev run command, progressively enhancing it with each iteration.

---

# Start our development environment on GitHub Codespaces

Resume the [Codespace started in the previous session](https://github.com/CoLRev-Environment/colrev)

![width:700px center](../assets/python_overview_all.PNG)

---

# Package setup

To create a new Python package, you can use package and dependency management tools, such as [Poetry](https://python-poetry.org/) and `poetry init`.

If you work on existing CoLRev packages, you can extend the existing code available in the [internal packages directory](https://github.com/CoLRev-Environment/colrev/tree/main/colrev/packages).

To create a new CoLRev package, navigate to the [internal packages directory](https://github.com/CoLRev-Environment/colrev/tree/main/colrev/packages) and run

```
colrev package --init
```

This command assists you in setting up a new CoLRev package interactively.

More information on package development is available [here](../docs/week_3_python_packages) and in the [documentation](https://colrev-environment.github.io/colrev/dev_docs/packages.html).

---

# Next: Best practice and hacking sessions (per group)

- Study the [overview of Python and CoLRev packages](../docs/week_3_python_packages)
- Read the CoLRev-Enhancement Proposal on SearchSources [CEP-002](https://colrev-environment.github.io/colrev/foundations/cep/cep003_search_sources.html), and raise questions in the issue feed (if any)
- Take notes on key challenges and questions (for the best practice session)
- Schedule consultation sessions as needed via [Calendly](https://calendly.com/gerit-wagner/30min?month=2023-10)

Useful links and resources for learning Python are available [here](../docs/resources).

---

# Deliverables

Contribute code to a fork, create branches and merge code (see [deadline](index.html#deliverables)).

- The merge should be done in one of the first hacking session meetings
- Students should prepare the merge by selecting suitable branches and explaining why they should be merged
- We will complete the merge together with the students to prevent and solve problems

---

# We value your feedback and suggestions

We encourage you to share your feedback and suggestions on this slide deck:

[![width:20px height:20px](../assets/iconmonstr-pencil-lined.svg)](https://github.com/digital-work-lab/open-source-project/edit/main/slides/01-topics.md) Suggest specific changes by directly modifying the content

[![width:20px height:20px](../assets/iconmonstr-info-12.svg)](https://github.com/digital-work-lab/open-source-project/issues/new) Provide feedback by submitting an issue

Your feedback plays a crucial role in helping us align with our core goals of **impact in research, teaching, and practice**. By contributing your suggestions, you help us further our commitment to **rigor**, **openness** and **participation**. Together, we can continuously enhance our work by contributing to **continuous learning** and collaboration across our community.

Visit this [page](https://digital-work-lab.github.io/handbook/docs/10-lab/10_processes/10.01.goals.html) to learn more about our goals: 🚀 🛠️ ♻️ 🙏 🧑‍🎓️.
