---
title: "Teaching Python package development: A structured course with learning resources and an instructor's guide"
tags:
  - Python
  - Packages and libraries
authors:
  - name: Gerit Wagner
    orcid: 0000-0003-3926-7717
    affiliation: 1
  - name: Laureen Thurner
    orcid: 0009-0000-5716-5816
    affiliation: 1
  - name: Carlo Tang
    affiliation: 1
  - name: Stella Ott
    affiliation: 1
affiliations:
 - name: Otto-Friedrich Universität Bamberg
   index: 1
date: 10 September 2024
bibliography: paper.bib
---

# Summary

Although there are many open online courses aimed at teaching Python programming, 
few educational resources focus on the specific skills required for understanding and developing Python packages.
Existing materials typically emphasize programming basics, but the development of Python packages, an essential skill for contributing to the open source community 
requires deeper knowledge of packaging infrastructure, dependency management, development environments, and best coding practices. 
This gap leaves learners unprepared for the practicalities of structuring packages, managing dependencies, implementing version control, and ensuring code quality.

To address these topics, we present a collection of educational resources designed to teach Python package development.
Our materials include a course plan, detailed syllabus, slides, 
and practice notebooks that cover introductory sessions on Git and Python, 
an initial session on identifying project topics, a session on best practices, and a code review session.
Additionally, we provide a detailed playbook for instructors to guide course delivery.
Informed by iterations and refinements over four semesters, 
these resources provide a well-structured and engaging learning experience.

The course materials were developed as part of the "Open Source Project" 
offered by the Digital Work Lab at Otto-Friedrich-Universität Bamberg.
The [course repository](https://github.com/digital-work-lab/open-source-project) consists of a Jekyll-based website, 
featuring course pages, instructor notes, slides, and practice notebooks.
A preconfigured development setup is offered for GitHub Codespaces, 
ensuring that the required development environment is pre-installed.
The course resources are hosted on GitHub and designed to be fully modular for reuse and adaptation.

# Statement of need

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

In contrast, the limited resources available for teaching Python package development primarily target self-learners.
Materials like those offered by [PyOpenSci](https://www.pyopensci.org/) 
or the book of @BeuzenTimbers2020 provide valuable insights into creating reusable, distributable Python libraries.
However, these materials often lack the structured, interactive learning experience offered by formal courses.
Consequently, while existing resources equip motivated individuals with practical tools for package development, 
they do not cater to a broader audience.
Addressing this gap requires tailored educational materials that combine accessibility 
with the depth necessary to teach Python package development.

\begin{table}[htbp]
\centering
\renewcommand{\arraystretch}{1.5}
\caption{Overview of selected Python courses \label{tbl:overview_courses}}
\scriptsize
\begin{tabular}{p{3.2cm}p{2.3cm}p{1.6cm}p{1.5cm}rp{1.2cm}}
\hline
\textbf{Course Title}                                         & \textbf{Provider}                     & \textbf{Target} & \textbf{Duration}           & \textbf{Enrollment} & \textbf{Libraries} \\ \hline
Python for Data Science, AI and Development                   & IBM (via Coursera)                    & Beginner        & 25h                         & 37,000              & Using libraries    \\
Python for Everybody Specialization                           & Univeristy of Michigan (via Coursera) & Beginner        & 2 months at 10 hours a week & 212,000             &                    \\
CS50's Introduction to Programming with Python                & Harvard University (via edX)          & Beginner        & 10 weeks                    & 1,086,875           & Using libraries    \\
Introduction to Computer Science and Programming Using Python & MIT (via edX)                         & Beginner        & 9 weeks                     & 1,718,898           &                    \\
CS50's Introduction to Artificial Intelligence with Python    & Harvard University (via edX)          & Beginner        & 7 weeks                     & 1,132,411           & Using libraries    \\
Machine Learning with Python: A Practical Introduction        & IBM (via edX)                         & Beginner        & 5 weeks                     & 178,346             & Using libraries    \\
Programming for Everybody (Getting Started with Python)       & University of Michigan (via edX)      & Beginner        & 7 weeks                     & 581,247             &                    \\
Applied Data Science with Python Specialization               & Univeristy of Michigan (via Coursera) & Intermediate    & 4 months at 10 hours a week & 26,000              & Using libraries    \\
CS50's Web Programming with Python and JavaScript             & Harvard University (via edX)          & Intermediate    & 12 weeks                    & 1,482,100           &                    \\ \hline
\end{tabular}
\end{table}

The overview of selected Python courses in Table 1 illustrates the popularity and scope of beginner-friendly MOOCs,
and highlights the gap in resources for advanced Python package development.

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

# Learning objectives and outline

The specific learning objectives for the capstone project are:

1. **Understand the fundamentals of Python package structure and distribution**
  Students will learn how to design, organize, and structure a Python package according to best practices, 
  including creating modular code, setting up essential files (e.g., `pyproject.toml`), 
  and distributing the package using PyPI.
2. **Implement version control and dependency management**
  Students will develop skills in managing package dependencies and versioning, 
  using tools like virtualenv and poetry for isolated environments, 
  and ensuring compatibility across various project setups.
  This includes understanding the role of code quality tools, the importance of semantic versioning, 
  and maintaining stable software releases.
3. **Contribute to open source Python packages and collaborate in package development**
  Students will gain hands-on experience contributing to open source Python projects 
  by collaborating on GitHub, creating pull requests, resolving issues, 
  and following community-driven development standards.
  They will also learn how to write documentation and test their packages to ensure quality and usability.

Figure 1 provides an overview of the course timeline, 
showcasing sessions and group work activities that facilitate a step-by-step progression through Python package development concepts. 
The timeline emphasizes iterative learning, with early sessions focused on foundational skills, 
followed by group work phases that foster collaboration and practical application.
During this time, students are encouraged to iterate between individual coding, group sessions, 
and hacking sessions with the instructor to discuss current challenges and next steps.

In addition, a *Best Practices* session is offered at the beginning of the group work phase.
Toward the end of the course, students will open a pull request with their work 
and participate in a code review session in which they adopt the perspective of a maintainer 
and evaluate the code of another group.
Code improvements are implemented within a week, 
and student reflections are discussed at the end.
When merging the contributions, we include students as contributors of the package.

![Course timeline with sessions and group work activities](figures/TeaPaD.png)

# Teaching materials

The delivery of the course is designed to foster active learning 
through a blend of in-person sessions, individual group work, and interactive hacking sessions, 
all facilitated by the instructor.
This approach emphasizes collaboration and hands-on practice, 
enabling students to engage deeply with Python package development in a supportive environment.
The materials are structured for complex and integrated learning activities, 
with a strong focus on Git-based collaboration.
Students work together on shared repositories, 
navigating real-world workflows such as branching, merging, and resolving conflicts, 
which mirror professional development environments.
The Git component of the course builds on the work of @WagnerThurner2025 
to ensure a robust foundation in version control 
while emphasizing practical applications that enhance both technical skills and teamwork.

\begin{table}[htbp]
\centering
\renewcommand{\arraystretch}{1.5}
\caption{Materials \label{tbl:materials}}
\normalsize
\begin{tabular}{p{3cm}p{9cm}}
\hline
\textbf{Resource}                                                                                   & \textbf{Description and focus}                                                                                                                      \\ \hline
\href{https://digital-work-lab.github.io/open-source-project/}{Landing page}                        & Provides an accessible overview of the course, aimed to engage students.                                                                            \\
\href{https://digital-work-lab.github.io/open-source-project/docs/syllabus.html}{Syllabus}          & Offers a structured, detailed overview of course objectives, content, and pedagogical approach, complementing the landing page with broader course context. \\
\href{https://digital-work-lab.github.io/open-source-project/docs/syllabus.html#materials}{Slides}  & Slides in Markdown (Marp) format.                                                                                                                   \\
\href{https://digital-work-lab.github.io/open-source-project/docs/syllabus.html#materials}{Notebooks} & Designed to engage directly with the Python package, using \texttt{git reset} to access solutions, supporting a smooth, practical learning flow.    \\
\href{https://digital-work-lab.github.io/open-source-project/docs/teaching_notes.html}{Teaching notes} & The teaching notes contain preparation checklists, scheduled mailings, session readers, and a concept.                                              \\ \hline
\end{tabular}
\end{table}

# Pedagogical considerations

Teaching Python package development requires a structured approach that balances simplicity with depth, ensuring students build a solid foundation before progressing to more advanced topics. 
The course design is informed by key pedagogical principles:

1. **Select and Simplify**
To reduce cognitive overload, we prioritize simplicity in tools and workflows. 
For example, we use GitHub Codespaces to standardize setups, eliminating issues related to different operating systems and environment configurations. 
A focused approach aligns with cognitive load theory [@Sweller1988], helping students concentrate on core concepts.

2. **Gradually Progress in Complexity**
Starting with basic Python and Git skills, the material builds incrementally, introducing concepts like dependency management and package distribution after foundational skills are mastered. 
This approach reduces the risk of overwhelming learners [@Anderson2001].

3. **Learn interactively and in groups**
Interactive and collaborative learning plays a crucial role in student engagement and knowledge retention [@Guzdial1998].
The course incorporates live coding sessions, and group-based exercises to make practices as accessible as possible 
and encourage active participation [@VialNegoita2018].
We build on the principles of active learning to promote deeper understanding through hands-on practice and peer collaboration.
In particular, group problem-solving can foster a collaborative environment where learners can exchange ideas, 
learn from one another, and build confidence in their coding skills [@Freeman2014].

# Development environment

Our recommended setup for Python package development is GitHub Codespaces, 
a cloud-based development solution featuring a graphical interface of VisualStudio Code 
as well as a full Python environment with pre-installed dependencies and configuration[^1].
With Codespaces, students can start their work directly from a browser, 
where all necessary dependencies are automatically configured. 
GitHub Codespaces offers several key advantages for Python package development. 
Offloading all computational tasks to remote servers eliminates the performance issues 
that often arise when running development environments on local machines. 
Additionally, the environment is fully standardized, 
meaning every student works with the same configuration, 
reducing the variability and potential issues seen in local setups. 
The Codespaces startup scripts effectively allow us to set up the development environment automatically and without user interaction. 
This approach not only saves time but also mirrors the benefits described by @Malan2024, 
where containerization minimized technical challenges and enhanced the learning experience.

For students who prefer a local development setup, 
we also offer options like Windows Subsystem for Linux (WSL) for Windows users, 
ensuring they can work with a Linux-like environment while still on their native operating system. 
This provides flexibility while maintaining the core benefits of a standardized development environment. 
By enabling students to work in a consistent environment regardless of their operating system, 
we ensure that everyone has access to the same tools, configurations, and workflows. 
It also ensures equal opportunities, 
as students are not disadvantaged by their choice of operating system and can collaborate effectively without technical barriers.

# Reuse and modification of materials

The materials provided in this course are designed for easy reuse and modification by other instructors.
While the course uses the CoLRev Python package [@WagnerPrester2024] as the example context, the materials allow instructors to adapt the content to focus on different Python packages.
The learning environment, hosted on GitHub and built with the Just-the-Docs framework, can be cloned, enabling instructors to replicate the entire setup.
All instructional content, including slides and practice notebooks, are automatically generated and updated via GitHub Actions, ensuring the materials remain up-to-date.

# Story of the project

This project was developed at Otto-Friedrich-Universität of Bamberg, where Gerit Wagner initiated a new team-based course to provide students with hands-on experiences in programming and software development.
While other project courses in the program had a stronger focus on management topics, this initiative—launched in 2023—was designed to help students engage with realistic open source software engineering practices.
The goal was for participants not merely to write short, standalone Python scripts, but to contribute collaboratively to public, functional, maintainable, and open source software packages.

Building on Gerit's role as lead developer of the CoLRev open source environment, the course adopted CoLRev as a learning platform.
Students developed small extensions or plugins for the system, allowing them to reuse existing functionality (e.g., for loading bibliographic data or interacting with APIs) and extend it by implementing new features such as API wrappers or automation tools.
This setup provided an authentic context for learning how to organize projects in teams using Git and GitHub, manage dependencies, write tests, and produce corresponding documentation.

Over time, the course evolved substantially through iterative refinement based on student feedback.
Early cohorts found the technical scope challenging, prompting the integration of more scaffolding, structured guidance, and formative feedback.
Since then, the course has grown into a well-established project with high student satisfaction and recommendation rates.
Five cohorts of students have contributed to CoLRev and related open source packages, many continuing their engagement through bachelor’s theses on extensions such as the search-query [@EckhardtEtAl2025] or bib-dedupe [@Wagner2024] packages.

[^1]: Local VirtualBox images were too slow on most student machines, and resources for self-hosted virtual machines were not available.

# References
