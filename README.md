<p align="center">
    <img alt="Project Logo" src="https://raw.githubusercontent.com/digital-work-lab/open-source-project/main/assets/open-source-project.png" width="600px">
</p>

<div align="center">

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
[![Spelling Check](https://github.com/digital-work-lab/open-source-project/actions/workflows/spelling.yml/badge.svg)](https://github.com/digital-work-lab/open-source-project/actions)
![Links Fix](https://github.com/digital-work-lab/open-source-project/actions/workflows/links_fix.yml/badge.svg)
![Documentation Status](https://img.shields.io/github/actions/workflow/status/digital-work-lab/open-source-project/pages.yml?label=documentation)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)
[![DOI](https://zenodo.org/badge/697812022.svg)](https://doi.org/10.5281/zenodo.13871275)<br>
[![JISE](https://img.shields.io/badge/JISE-10.62273%2FBTKM5634-green)](https://jise.org/Volume36/n1/JISE2025v36n1pp1-12.html)
[![CAIS](https://img.shields.io/badge/CAIS-under_review-orange)](https://aisel.aisnet.org/cais/)
[![status](https://jose.theoj.org/papers/cc49b9604b9fd10bc8524d1539620be6/status.svg)](https://jose.theoj.org/papers/cc49b9604b9fd10bc8524d1539620be6)

</div>

# The Open Source Project

Welcome! The Open Source Project is organized by the digital work lab (Prof. Dr. Gerit Wagner) at Otto-Friedrich-Universität Bamberg.
You can find more information on the following pages:

- [Project page](https://digital-work-lab.github.io/open-source-project/)
- [Syllabus](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)
- [Teaching notes](https://digital-work-lab.github.io/open-source-project/docs/teaching_notes.html)

## Statement of need

A broad range of Python learning resources is accessible online, 
reflecting its prominence as a programming language across industries.
Massive Open Online Courses (MOOCs), such as those offered by Coursera and edX, 
cater to vast audiences with substantial enrollment figures.
For instance, Harvard’s CS50’s Introduction to Programming with Python 
and IBM’s Python for Data Science, AI and Development highlight beginner-friendly content, 
emphasizing foundational skills like using libraries.
These courses are frequently structured around paid certificates and follow conventional formats, 
making them popular among learners seeking basic programming knowledge or career-oriented credentials.
However, these MOOCs rarely delve into more advanced topics like Python package development, 
leaving a noticeable gap for learners aiming to contribute to the open source ecosystem.

In contrast, resources available for teaching Python package development primarily target self-learners.
Existing materials often lack the structured, interactive learning experience offered by formal courses.
Consequently, while existing resources equip individual learners with practical tools for package development, 
they do not cater to a broader audience.
Addressing this gap requires tailored educational materials that combine accessibility 
with the depth necessary to teach Python package development.

Generally, Python package development can be helpful for a range of purposes:

1. **Reusability**
  Writing Python code from scratch is time-consuming and error-prone.
  Many tasks, especially in fields like data science, web development, and automation, 
  have well-established solutions in existing Python packages.
  Learning how to develop packages enables students to make existing code available for reuse, 
  and it also develops understanding and skills related to the use of existing packages.
2. **Access to specialized functionality**
  Considering that the Python core only includes general-purpose built-in functionality, 
  packages are often required to provide specialized functionality.
  For instance, this includes tasks like machine learning (TensorFlow, Scikit-learn), 
  scientific computing (SciPy), or web development (Flask, Django).
  Understanding these packages allows students to access to a wide range of tools and resources 
  that extend Python’s functionality for specific purposes.
3. **Dependency management**
  Python packages often rely on external libraries that are updated over time 
  to introduce new features or address security vulnerabilities.
  Managing these dependencies effectively is an important skill, 
  as different packages may require specific versions of the same library, leading to potential conflicts.
  Tools like pip and virtual environments provide mechanisms for isolating dependencies, 
  but ensuring stability and reproducibility requires a more comprehensive approach.
  One element are cross-platform and cross-Python-version testing strategies 
  to verify that a Python package functions consistently across different environments. 
4. **Version control, collaborative development, and open source contribution**
  Version control systems, such as Git, are used for managing changes in Python package development.
  They allow developers to track modifications, revert to previous states, 
  and maintain a clear history of their work.
  Beyond individual use, Git facilitates collaboration by enabling multiple contributors 
  to work on the same package simultaneously while managing conflicts and merging changes. 
  Collaborative workflows, often supported by platforms like GitHub or GitLab, 
  introduce students to essential practices such as pull requests, code reviews, and issue tracking.
  These tools not only streamline teamwork but also teach students 
  how to contribute effectively to shared projects.
  By engaging in open source contributions, students gain additional experience 
  in a community-driven environment, where their work can be reused, improved, and expanded by others.
  Ideally, this exposure may foster an appreciation for collaborative coding 
  and emphasizes the importance of building packages that are maintainable, accessible, 
  and aligned with community standards.
5. **Scalability and maintainability of projects**
  As a project grows in complexity, managing code becomes difficult without proper structure.
  Packages help modularize code, separating it into manageable units, 
  and using continuous integration tools to maintain code quality.
  Understanding package development ensures that code is scalable and maintainable.
  This is essential when building large-scale applications where different parts of the software 
  can be independently developed, tested, and maintained.

Our target audience is Bachelor students in Information Systems with initial programming experience.

## Feedback

Feedback and suggestions for improvement are always welcome (see our [CONTRIBUTING.md](CONTRIBUTING.md)). Please open issues or pull requests as you see fit.

## Reusing materials (instructors)

To reuse the materials, you can copy individual elements or [fork](https://github.com/digital-work-lab/open-source-project/fork) the repository.

## Pedagogical Foundations

Wagner, G., and Thurner, L. "Rethinking How We Teach Git: Recommendations and Practical Strategies for the Information Systems Curriculum". *Journal of Information Systems Education*, 36(1). (see [summary](https://digital-work-lab.github.io/rethink-git-teaching/))

## Related resources

- [Python Programming for Data Science](https://www.tomasbeuzen.com/python-programming-for-data-science)
- [Python Packages](https://py-pkgs.org/)
- [Python: Creating a pip installable package](https://betterscientificsoftware.github.io/python-for-hpc/tutorials/python-pypi-packaging/)

## Citation

Wagner, G., Thurner, L., Tang, C., and Ott, S. (2024). The Open Source Project. Zenodo. https://doi.org/10.5281/zenodo.13871275

## License

The contents are licensed under the [CC-BY 4.0 License](https://creativecommons.org/licenses/by/4.0/).
