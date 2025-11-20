---
layout: default
title: Syllabus
has_toc: true
nav_order: 1
---

<style>
  p {
    text-align: justify;
  }
</style>

# Syllabus

{: .feedback }
"I liked the fact that we were able to work very freely and independently on our problem as a group, but that we were always able to make appointments with Prof. Wagner at very short notice if we had problems or questions. This gave me the impression that we were working we were working *with* the lecturer on the problem and finding the best solution rather than blindly choosing the first solution that came along. In my opinion, working independently on a complex problem is the most important skill that I improved with the help of the project."<br><br>
"The support I received throughout the project was particularly good, as was the opportunity to deal with topics that were not previously available at the university, but which can be extremely important for your professional life." \[[more](evaluations.html)\]

## Basic information

- **Title**: Digital-Work-Projekt-B: Bachelorprojekt aus der Fächergruppe Wirtschaftsinformatik
- **Credits**: 6 ECTS (180h)
- **Degree program**: Bachelor's in Information Systems, International Information Systems Management, and Applied Computer Science. Participation is also possible for degree programs such as Software Systems Science or Computing in the Humanities (Master's, module group A2) (after consultation with the examination board)
- **Format**: In-person sessions at the beginning, followed by group work, and a code review session towards the end.
- **Dates, rooms, and tasks**: Listed on the [Main page](../index.html)
- **Registration**: If you would like to participate, please attend the introductory session. Details regarding registration and topic assignment will be announced during this session.
- **Prerequisites**: We recommend participating in the project after the 3rd semester. The following courses are required: *Inf-Einf-B Einführung in die Informatik* or *DSG-EiAPS-B Einführung in Algorithmen, Programmierung und Software*, and *DSG-JaP-B Java Programmierung*.
- **Grades**: Typically one grade per group (exceptions possible).
- **Contact for administrative questions**: Prof. Dr. Gerit Wagner ( [gerit.wagner (at) uni-bamberg.de](gerit.wagner (at) uni-bamberg.de) )
- **Questions related to contents**: Please open an issue in the [CoLRev project](https://github.com/CoLRev-Environment/colrev){: target="_blank"} or your own fork and mention `@geritwagner`.

**Summary**

In software development, open source development environments and open source workflows are gaining importance and are now widely embraced by large tech companies.
Git plays a central role in this context.
Since its release in 2005, the market share of the decentralized and collaborative version control system has gained a market share of approximately 90%.
As a result, Git-based platforms such as GitHub and GitLab have largely replaced alternatives like SourceForge (Subversion), and even large projects like the development of the Windows operating system have migrated to Git.
Today, Git and open source workflows are an integral part of professional software development projects.

Against this background, the goal of this project is to understand and use Git-based open source workflows and development environments (e.g., pull requests, forks, and continuous integration).
Within the framework of an existing open source project, [CoLRev](https://github.com/CoLRev-Environment/colrev){: target="_blank"}, selected functionalities will be developed and contributed in small teams.
The sub-projects will be presented in the first session of the course, and preferences for topics will be taken into account when forming groups.

In contrast to many MOOCs and introductory programming courses—which focus primarily on basic Python syntax, libraries, and beginner-friendly exercises—this project emphasizes Python package development as a core competency.
While large-scale online courses (e.g., those on Coursera or edX) offer accessible introductions and certificate-oriented learning paths, they rarely cover topics such as dependency management, cross-platform testing, or collaborative development workflows.
Our approach fills this gap by directly integrating structured, real-world package development into the learning experience.

Python package development is valuable for several reasons.
It promotes reusability, enabling students to structure code so it can be shared and applied across multiple projects. 
It provides access to Python packaging infrastructure and ecosystems such as the PyPI.
We also touch on dependency management, including strategies for maintaining stable environments and ensuring reproducibility across Python versions and operating systems.
Finally, package development supports scalability and maintainability, making it useful to structure larger applications into modular, testable components supported by continuous integration workflows.

At the beginning of the project, three block events are planned:

- (1) an overview of the open source project and the sub-projects with subsequent topic assignments,
- (2) an introduction to Git,
- (3) an introduction to Python programming, and
- (4) a focused session on Python packages.

The subsequent work phase will be accompanied by targeted code markers for orientation in the project and by offering hacking sessions in groups.
The code review session will take place in the last weeks of the lecture period.
At that time, a completed sub-project will be reported, the results of which have been incorporated into the overarching open source project (merged or advanced pull request).

{: .info }
> **FlexNow**
>
> Registration in FlexNow is **not required** to participate in the project.
> After submitting your work, we will register you for the project and enter your grade in FlexNow.

## Instructor

My name is Gerit Wagner, and I am your instructor. I enjoy coding, solving programming puzzles, and building tools that are useful for others.
In this project, I invite you to contribute to one of my most significant packages: [CoLRev](https://github.com/CoLRev-Environment/colrev){: target="_blank"}. 

<img src="../assets/gerit_wagner.jpg" alt="Gerit Wagner (Foto: Tim Kipphan)" style="height: 220px; float: left; padding-right: 10px;">

**Gerit Wagner**  
*Assistant Professor of Information Systems*  
*Otto-Friedrich-Universität Bamberg*

<br style="clear:both">

I use the Calendly tool to schedule meetings.
It gives you an up-to-date overview of available slots in my schedule, and your reservations are immediately added to my calendar (no need to go back and forth via e-mail).
We can meet in person or online, whatever works best for you.

## Goal and learning objectives

- Use Git and GitHub to develop code in small teams
- Write Python code and contribute to a Python package
- Familiarize with open source development as a contributor and maintainer

<!-- Mention CV -->

## Course outline

We cover the following sessions and work tasks (specific dates are available on the [main page](../index.html)):

**Week 1, Session 1: Organization and topics**

- Introduction to the course and project topics.
- Tasks: Sign up for the VC course room, create a GitHub account, comment on issues.

**Week 2, Session 2: Introduction to Git**

- Overview of Git and version control practices.
- Tasks: Set up your programming environment as per CoLRev documentation.

**Week 3, Sessions 3 and 4: Introduction to Python (I, II)**

- Basics of Python programming and advanced Python concepts related to Python package development and CoLRev.
- Tasks: Contribute code to a fork, create branches, and merge code.

**Week 5, Session 5: Best practices**

- Discussion on coding standards and best practices in open source development.

**Weeks 6-11: Individual hacking sessions**

- One-on-one or group sessions to address specific issues and progress.
- Tasks: Create a pull request.

**Week 12: Session 6: Code review session**
- Review the code submitted by another group.
- Tasks: Implement feedback from the code review.

## Assessment and grading criteria

Our process is designed to ensure that all group members contribute fairly.
Typically, a single grade is given to the entire group.
However, if any issues arise, it is essential to raise any concerns early.
We reserve the right to assign different grades within the group and give extra points to those who make exceptional contributions.

**Process: Open Source practices**

- Follow established Git conventions for commit messages, branching, and pull requests.
- Actively engage in the community by reviewing code, providing and incorporating constructive feedback.

**Code: Functionality**

- Implement all required features with input validation.
- Provide unit tests that cover all critical functionality.

**Code: Quality**

- Comply with Python coding standards enforced by the repository’s pre-commit hooks.
- Include documentation, including docstrings and a README with setup and usage instructions.
- Ensure clear code structure and maintain high readability.

**Evaluation scope**

Evaluation is contingent on completing the deliverables listed [here](https://digital-work-lab.github.io/open-source-project/#deliverables){: target="_blank"}.

**Evaluation components**

- **Code submitted in the pull request (70%)**  
  Assessment of functionality, overall code quality, and implementation of feedback.

- **Code review session (30%)**  
  Focus on collaboration, version control practices, and understanding of code.

**Not considered in the evaluation**

- Training sessions (Topics, Git, Python)
- Hacking sessions

<!-- 
**Process: Open Source Practices**

- Proper use of Git conventions for commit messages and branching.
- Clear and descriptive pull requests with proper documentation.
- Properly address and incorporate feedback from code reviews.
- Code review: Participating in the community by reviewing others' code and providing constructive feedback.
- Ability to explain and defend your code.
- Responding to and incorporating feedback from the review session.
- Maintaining an active and professional presence in project discussions and issues.

## Additional Guidelines

- **Problem-Solving Mindset**: Embrace challenges and approach problems methodically, making use of available resources and seeking help when necessary.
- **Preparation and Responsibility**: Be well-prepared for meetings and reviews, understand your code, and be able to explain your approach and decisions.
- **Ethical Considerations**: Avoid the use of generative AI tools like ChatGPT for coding tasks to prevent potential copyright issues and ensure the originality of your work.
- **Open Source Approach**: Work publicly, communicate in English, and create a professional profile on platforms like GitHub.

## Student responsibilities

possibly a “how to succeed” section

- Embrace the challenge and adopt a problem-solving mindset
- Take full responsibility for setting up your programming environment
- Be prepared. Know your code, be able to explain it, and ask prepared questions (Google it, consider different options)
- Do not use generative AI such as ChatGPT because you would risk copyright infringement
- Adopt an Open Source approach (work publicly, communicate in English, create a profile)
- Reach out and schedule individual hacking sessions via [calendly](https://calendly.com/gerit-wagner/30min){: target="_blank"} to discuss challenges and get feedback
-->

## Materials

- Slides:

  - [Topics]({{ site.baseurl }}/output/01-topics.html)
  - [Git]({{ site.baseurl }}/output/02-git.html)
  - [Python 1]({{ site.baseurl }}/output/03-python_1.html)
  - [Python 2]({{ site.baseurl }}/output/04-python_2.html)
  - [Python 3]({{ site.baseurl }}/output/04-python_3.html)
  - [Best Practices]({{ site.baseurl }}/output/05-best_practice.html)
  - [Code Review]({{ site.baseurl }}/output/06-code_review.html)

- Notebooks:

  - [Git Branching]({{ site.baseurl }}/docs/week_2_git_notebook_branching.html)
  - [Git Committing]({{ site.baseurl }}/docs/week_2_git_notebook_committing.html)
  - [Git Collaborating]({{ site.baseurl }}/docs/week_2_git_notebook_collaboration.html)
  - [Git Merge Conflicts]({{ site.baseurl }}/docs/week_2_git_notebook_merge_conflict.html)
  - [Python 1]({{ site.baseurl }}/docs/week_3_python_notebook_1.html)
  - [Python 2]({{ site.baseurl }}/docs/week_3_python_notebook_2.html)
  - [Python 3]({{ site.baseurl }}/docs/week_3_python_notebook_3.html)

- Another important resource is the [documentation of CoLRev](https://colrev-environment.github.io/colrev/){: target="_blank"}, in particular the [environment setup](https://colrev-environment.github.io/colrev/dev_docs/setup.html){: target="_blank"} and the [package development](https://colrev-environment.github.io/colrev/dev_docs/packages.html){: target="_blank"} pages.

## Teaching approach

- **Complex skill development**: The project focuses on teaching complex skills necessary for modern software development.
  This includes tackling challenging problems, collaborative coding in teams, and managing a complex development environment using Python, Git, Continuous Integration, Testing Environments, and Code Quality Tools.
  To ensure a rich learning experience, we support students throughout the process by asking the right questions and providing the necessary input without removing the inherent challenges.

- **Real-world impact**: We aim to empower students to make a meaningful impact by contributing to a real-world, publicly accessible Python package.
  This hands-on experience not only enhances technical skills but also provides a sense of accomplishment and relevance.
  Additionally, students can add this valuable experience to their CV, showcasing their practical contributions and teamwork skills to potential employers.

- **Transparent evaluation and improvement**: Our [evaluation criteria](syllabus.html#assessment-and-grading-criteria), [course evaluations](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.21.evaluations.html#prior-evaluations){: target="_blank"} and [improvement efforts](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.22.improvements.html){: target="_blank"} are documented transparently.
  This ensures that students understand how their work is evaluated and how the course progresses based on feedback and ongoing refinement efforts.
  In addition, we develop peer-reviewed teaching materials to solicit feedback from educators outside our program.

- **Diversity, equity, and inclusion**: We are committed to creating a safe and inclusive learning environment where all students feel respected and valued.
  We create a positive learning atmosphere, encouraging questions and contributions from everyone.
  We promote diversity and actively work to ensure every student has equal opportunities to succeed and contribute.

<!-- - link to pedagogical foundations -->

{: .info }
> **Peer-reviewed contents and pedagogy**
>
> The Open Source Project is rooted in our own peer-reviewed contributions and pedagogical principles. This includes
>
> - our [novel approach to teaching Git](https://digital-work-lab.github.io/rethink-git-teaching/){: target="_blank"} (Wagner and Thurner, 2025),
> - an overarching pedagogical framework for teaching open source projects (Thurner and Wagner, under review), and
> - our online materials for teaching Python package development (Wagner et al., under review).

## References

<div class="references">
    <p>Hogbin Westby, E. J. (2015). Git for teams: a user-centered approach to creating efficient workflows in Git. O'Reilly Media.</p>
    <p>Luciano, R. (2015). Fluent Python: Clear, Concise, and Effective Programming. O'Reilly Media.</p>
    <p>Wagner, G., and Thurner, L. (2025) "Rethinking How We Teach Git: Recommendations and Practical Strategies for the Information Systems Curriculum". <i>Journal of Information Systems Education</i>, 36(1).</p>
    <p>Thurner, L., and Wagner, G. (under review). "CONTRIBUTE: A pedagogical framework for Open Source capstone projects". <i>Communications of the Association for Information Systems</i>.</p>
    <p>Wagner, G., Thurner, L., Tang, C., Ott, S. (under review). "Teaching Python Package Development: A structured course with learning resources and an instructor’s guide". <i>The Journal of Open Source Education</i>. <a href="https://github.com/openjournals/jose-reviews/issues/292">link</a></p>
</div>

