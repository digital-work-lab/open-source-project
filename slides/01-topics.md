---
marp: true
header: 'Open-Source Project: Topics'
theme: ub-theme
paginate: true
footer: "<a href='https://github.com/digital-work-lab/open-source-project/issues/new?template=Blank+issue' target='_blank'>♻️</a> <a href='https://github.com/digital-work-lab/open-source-project/edit/main/slides/01-topics.md' target='_blank'>🛠️</a>"
---

<!-- _class: centered -->

# WI-Project: Open-Source Project

## Topics

Prof. Dr. Gerit Wagner
Faculty Information Systems and Applied Computer Sciences
Otto-Friedrich-Universität Bamberg

![center width:150px](../assets/qr-open-source-project.png)

---

# Your instructor

- Prof. Dr. Gerit Wagner
- At Bamberg University since October 2022
- I have worked with Git, Python, and R since 2014
- I enjoy coding, solving programming puzzles, and building tools
- My latest and most significant project: **CoLRev**

![bg right:50% width:550px](../assets/coding_experience.png)

---

# What you will learn (I): Git/GitHub

- Use git and GitHub for versioning and collaboration
- Git quickly established itself as the most popular version control system
- As a prominent example, Microsoft has acquired GitHub and moved the source code of Windows to Git ([1](https://www.golem.de/news/gvfs-windows-team-nutzt-fast-vollstaendig-git-1705-128039.html))
- Many companies have public GitHub programs and share parts of their work as Open-Source (e.g., [Google](https://github.com/google) or [Meta](https://github.com/facebook)) 

![bg right:40% width:350px](../assets/git-diffusion.png)

---

# What you will learn (II): Python

- Write Python code and contribute to a Python package
- Python is the leading programming language in several rankings, including the [TIOBE Index](https://www.tiobe.com/tiobe-index/) and the [PYPL (PopularitY of Programming Language)](https://pypl.github.io/PYPL.html) ranking
- Job requirements for **Data Scientists**, **Full-stack Software Engineers**, **DevOps Engineers**, or **Data Engineers** commonly include Python ([1](https://de.indeed.com/jobs?q=Python))

![bg right:45% width:450px](../assets/chris-ried-ieic5Tq8YMk-unsplash.jpg)

---

# What you will learn (III): Open-Sourcing

- Open-source software plays a major role in the industry (see [HBS working paper](https://www.hbs.edu/faculty/Pages/item.aspx?num=65230)) and firms start to use open-source principles to organize their work (see [innersource](https://github.com/resources/articles/software-development/innersource))
- You will

  - Work with the Open-Source workflows of GitHub
  - Make a first contribution to a public Open-Source project
  - Adopt the role of a maintainer and review the code of your peers
  - Have an opportunity to create your *developer portfolio*

![bg right:35% width:350px](../assets/github-contributors.png)

---

# The project: CoLRev

Collaborative Literature Reviews (CoLRev) is an open-source environment for collaborative literature reviews. It integrates with different synthesis tools, takes care of the data, and facilitates Git-based collaboration.

The following features stand out:

- Supports all literature review steps: problem formulation, search, dedupe, (pre)screen, pdf retrieval, preparation, and synthesis
- An open platform based on shared data and process standards
- It builds on git and its transparent collaboration model for the entire literature review process
- Focus: command-line interface

![bg right:30% width:300px](../assets/colrev-logo.png)

---

# Agenda

<style>
    img[alt~="center"] {
        display: block;
  margin: 0 auto;
}
</style>

![width:750px center](../assets/agenda.png)

Dates and rooms are available [online](https://digital-work-lab.github.io/open-source-project/#outline).

---

# How groups will form

You **assign yourself to a group** when you contribute code, following these steps:
1. **Signal your intent** to contribute by joining the issue discussion on GitHub (in the [issue discussion](https://github.com/CoLRev-Environment/colrev/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22good%20first%20issue%22%20%20label%3Asearch_source), before the **Git Session**, for two topics at most).
2. **Organize your work**, meet potential group members, and select a project leader (in the following sessions). Keep in mind that **no more than 5 people** will be accepted per group.
3. **Officially sign up for a group** by contributing a non-trivial code part (\*). Team members' contributions must be made in separate commits. Select a project lead who sends your GitHub-ID together with a link to your code contribution, your student ID, and e-mail address to [gerit.wagner@uni-bamberg.de](mailto:gerit.wagner@uni-bamberg.de).

This process ensures that **all group members contribute fairly** abd typically **a single grade is given for the entire group**. However, if issues arise, it is essential to raise concerns early. We reserve the right to adjust the grading policy as needed, including assigning different grades within the group and awarding a bonus to those who make exceptional contributions.

> \* You can only contribute to a group if you have signalled your intent in the issue discussion before.

---

# Evaluation criteria

**Process: Open-Source practices**

- Follow established Git conventions for commit messages, branching, and pull requests.
- Actively engage in the community by reviewing code, providing and incorporating constructive feedback.

**Code: Functionality**

- Implement all required features with input validation.
- Provide unit tests that cover all critical functionality.

**Code: Quality**

- Comply with Python coding standards enforced by the repository’s pre-commit hooks.
- Include documentation, including docstrings and a README with setup and usage instructions.
- Ensure clear code structure and maintain high readability.

---

# Evaluation scope

Evaluation is contingent on completing the deliverables listed [here](https://digital-work-lab.github.io/open-source-project/#deliverables).

**Evaluation components**

- **Code submitted in the pull request (70%)**  
  Assessment of functionality, overall code quality, and implementation of feedback.

- **Code review session (30%)**  
  Focus on collaboration, version control practices, and understanding of code.

**Not considered in the evaluation**

- Training sessions (Topics, Git, Python)
- Hacking sessions
<!-- TBD: excep for cheating/ -->

---

# How you can make the project a success

- Embrace the challenge and adopt a problem-solving mindset
- Take full responsibility for setting up your programming environment
- Be prepared. Know your code, be able to explain it, and ask prepared questions (Google it, consider different options)
- Do not use generative AI such as ChatGPT (risk of copyright infringement)
- Adopt an Open-Source approach (work publicly, communicate in English, create a profile)
- Reach out and schedule individual hacking sessions via [Calendly](https://calendly.com/gerit-wagner/30min) to discuss challenges and get feedback

---

# Finding things in an open-source project

Go to the [CoLRev project repository](https://github.com/CoLRev-Ecosystem/colrev).

Form groups of three and try to find the following information in 10 minutes:

1. How many commits, contributors, and downloads does the project have? What is the test coverage?
2. How does CoLRev compare to related tools? Which tool would you choose and why?
3. Where is the documentation, and how can I install CoLRev?
4. What is the license, and where can we find information on how to contribute to the project?
5. What information should be provided for bug reports? Where can I open a feature request?
6. How many issues are open vs. closed? How many pull requests are open vs. closed?
7. How long do workflows with tests or code formatting run? When did the last one fail?
8. What is "unpaywall" used for in the project?
9. Where can we find the features planned for the next milestone?

---

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

# Until the next session

**Familiarize yourself with the CoLRev documentation**

- An overview of the [process](https://colrev-environment.github.io/colrev/manual/operations.html) and the [workflow](https://colrev-environment.github.io/colrev/manual/workflow.html) are available in the documentation.
- Watch the [demo](https://www.youtube.com/watch?v=yfGGraQC6vs) to understand the use of CoLRev.

**Find a topic**

- Go to the [issue tracker](https://github.com/CoLRev-Environment/colrev/issues) and read the open issues tagged as `#good first issue` and `#search_source` (available topics).
- Comment on the issues to find others who are interested in the same topic.

**Complete the setup**

- Register for the course on the *Virtual Campus* platform: [here](https://digital-work-lab.github.io/open-source-project/#participate) (password: OSP25#stud)
- Create a GitHub account (using your student e-mail address) to use [Codespaces](https://github.com/features/codespaces) in the next sessions
- Read [how to use Codespaces](https://digital-work-lab.github.io/open-source-project/docs/week_1_codespaces.html)

> Challenge (optional): You can **set up your programming environment** (see instructions in the [CoLRev documentation](https://colrev-environment.github.io/colrev/dev_docs/setup.html)). This requires you to install and configure Git, Docker, pre-commit hooks, and venv. It will give you more control over and a deeper understanding of your programming environment.

---

<style>
.references {
    font-size: 0.6em;
    margin-top: 0.3em;
    margin-bottom: 0.9em;
    margin-left: 4em;
}

.references p {
    text-indent: -1.5em;
    padding-left: 1.5em;
    margin: 0.5em 0;
}
</style>

# 🛠️ We work hard to improve the course for you

- We run evaluations at the end of each semester and make the results publicly available ([view results](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.21.evaluations.html#evaluation-results)).
- We document how we implement your feedback and continuously improve the course ([see ongoing updates](https://github.com/digital-work-lab/open-source-project/issues?q=is%3Aissue%20Evaluation%20)).
- We invite you to contribute directly to our teaching materials by submitting an issue ♻️ or suggesting edits 🛠️.
- We actively engage in the pedagogical discourse in Information Systems by sharing teaching tips and inviting feedback from peers:

<div class="references">
  <p>Wagner, G., and Thurner, L. 2025. "Rethinking How We Teach Git: Pedagogical Recommendations and Practical Strategies for the Information Systems Curriculum". <em>Journal of Information Systems Education</em>, 36(1). <a href="https://jise.org/Volume36/n1/JISE2025v36n1pp1-12.html">link</a></p>
  <p>Wagner, G., Thurner, L., Tang, C., Ott, S. "Teaching Python Package Development: A structured course with learning resources and an instructor's guide". Submitted to <em>The Journal of Open Source Education</em>. <a href="https://github.com/openjournals/jose-reviews/issues/275">link</a></p>
  <p>Thurner, L. and Wagner, G. "CONTRIBUTE: A pedagogical framework for Open-Source capstone projects". Under review at the <em>Communications of the Association for Information Systems</em>.</p>
</div>

We value feedback — please let us know what works and how we can improve ♡

![bg right:32% width:400px](../assets/evaluation_results.png)

<!-- 
---

# We value your feedback and suggestions

We encourage you to share your feedback and suggestions on our teaching materials. You can find the following links in the footer of each slide:

<br>

<a href="https://github.com/digital-work-lab/open-source-project/issues/new" target="_blank"> ♻️ </a> Provide feedback by submitting an issue
<a href="https://github.com/digital-work-lab/open-source-project/edit/main/slides/00-orga.md" target="_blank"> 🛠️ </a> Suggest specific changes by directly modifying the content

<br>

Your feedback plays a crucial role in helping us align with our core goals of **impact in research, teaching, and practice**. By contributing your suggestions, you help us further our commitment to **rigor**, **openness** and **participation**. Together, we can continuously enhance our work by contributing to **continuous learning** and collaboration across our community.

Visit this <a href="https://digital-work-lab.github.io/handbook/docs/10-lab/10_processes/10.01.goals.html" target="_blank">page</a> to learn more about our goals:  🚀 🛠️ ♻️ 🙏 🧑‍🎓️ . 

-->