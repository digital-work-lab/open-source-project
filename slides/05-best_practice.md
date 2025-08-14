---
marp: true
header: 'Open Source Project: Best-practice session'
theme: ub-theme
paginate: true
footer: "<a href='https://github.com/digital-work-lab/open-source-project/issues/new?template=Blank+issue' target='_blank'>♻️</a> <a href='https://github.com/digital-work-lab/open-source-project/edit/main/slides/05-best_practice.md' target='_blank'>🛠️</a>"
---

<!-- _class: centered -->

# WI-Project: Open Source Project

## Best Practice Session

Prof. Dr. Gerit Wagner
Faculty Information Systems and Applied Computer Sciences
Otto-Friedrich-Universität Bamberg

![center width:150px](../assets/qr-open-source-project.png)

---
<!-- paginate: true -->

# Learning objectives

Our objectives for today are to discuss and overcome current challenges related to:

- [Technical setup](#technical-setup): Git, Codespaces, or local setup
- [Programming](#programming): Python, Python packages, and CoLRev
- [Teamwork](#teamwork): Task distribution, forks, branches, and roles in the team

<!-- 
- Discuss current challenges and how they can be addressed
- Facilitate the practical application of Git commands and Python coding from previous sessions -->

The focus is on **helping teams organize their work effectively**. To this end, we

- Encourage you to share challenges, errors or lessons learned
- Do not introduce new commands, except when you ask for them or when they are useful for your work

![bg right:33% width:320px](../assets/puzzle.png)

---

# Technical setup

- Does everyone have a working setup?
- Are you working on Codespaces or in a local environment?
- What are the errors and challenges that came up?

<!-- 
- What are your best practices for the setup?

Summarize the work status per group:

- What are the challenges we can discuss?
- What was particularly helpful? Are there any insights you can share with the other teams?
 -->

---

# Technical setup: Sources of errors

- Errors may be raised only in specific settings, i.e., versions of operating systems, Python, package managers, dependencies, and CoLRev
- What we do to identify and fix errors: 

    - Run [matrix tests](https://github.com/CoLRev-Environment/colrev/actions/workflows/tests.yml) covering 16 different environments
    - Reduce dependencies
    - Fix errors that are reported

- What you can do to avoid errors:

    - Use supported environments, such as GitHub Codespaces
    - Avoid outdated and cutting-edge versions (of operating systems and Python)
    - Report errors

![bg right:37% width:550px](../assets/sources-of-errors.png)

---

# Technical setup: Best practices

- Use Codespaces with the pre-installed setup
- Carefully select changes (`git add -p`) and review changes before creating a commit
- Commit often
- Synchronize regularly in your fork and with `remotes/upstream`

---

# Technical setup: Open questions

Raise them directly or add them below (anonymously):

<iframe src="https://rustpad.io/#5YH3Wq" width="100%" height="400px" style="border:none;"></iframe>

---

# Programming

- Are you confident with your programming environment, i.e., do you know how to modify and run your code?
- Do you know how to execute pre-commit hooks to evaluate and improve code quality?
- Do you know where and how to contribute your code, i.e., the modules, classes to use or create?
- Are there any questions related to Python packages or CoLRev?

---

# Programming: Best practices

- [Search](https://github.com/search), [read](https://www.turing.com/kb/start-reading-code-the-right-way) and understand your code and the code in related projects
- Check and fix code quality regularly (at least: before creating a commit):

```
pre-commit run --all
```

- Understanding of CoLRev

    - **User workflow**: Start with the [video](https://colrev-environment.github.io/colrev/) and check ``gitk`` after each step
    - **Architecture**: Starting point: [API chart and reference](https://colrev-environment.github.io/colrev/dev_docs/api.html) and [modules](https://github.com/CoLRev-Environment/colrev/tree/main/colrev)
    - **Package development and SearchSources**: Starting point: [package development resources](https://colrev-environment.github.io/colrev/dev_docs/packages.html), [CEP 003 - SearchSources](https://colrev-environment.github.io/colrev/foundations/cep/cep003_search_sources.html)


---

# Programming: Open questions

Raise them directly or add them below (anonymously):

<iframe src="https://rustpad.io/#2Nra6z" width="100%" height="400px" style="border:none;"></iframe>

---

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

# Teamwork

- How can we split and distribute tasks?
- Which branches should we set up?
- Does everyone contribute fairly? (\*)

> \* Normally, we give **one grade per group**. We will check individual Git contributions. We can assign different grades for group members, with a **bonus** for those who contribute more.

<!-- 
- Which roles should exist?

- **Which roles should exist?**: Discuss and clarify roles within the team.

- **What are our key challenges?**: As a group, articulate the challenges and let us know - we may be able to help.

- **Do all team members contribute fairly?**: Normally, we give **one grade per group**. We will check individual Git contributions. As a last resort, we can assign different grades for group members, with a **bonus** for those who contribute more.

- How did you distribute tasks in the team?
- Who works on what, which branches did you create, does regular sync work for you?
-->

---

# Teamwork: Best practices (branch setup)

<!-- - Follow the [branching strategy](https://digital-work-lab.github.io/open-source-project/output/02-git.html#25) 
**Which branching / merging strategy should we select?**
-->

Recommended branch setup in your fork:

1. Work on a shared **feature branch**, such as ``unpaywall_search``. This is where your latest, working version is developed
2. Do not commit directly to ``remotes/fork/main``. This branch should be kept in-sync with ``remotes/origin/main``
3. Regularly merge ``remotes/origin/main`` into ``remotes/fork/main`` and ``remotes/fork/main`` into your feature branch using merge commits (i.e., [sync](https://digital-work-lab.github.io/open-source-project/output/02-git.html#work-in-a-forked-repository), which will fast-forward, ``git fetch``, ``git switch feature_branch`` and ``git merge main``)

<!-- Note: the branching strategy is part of the best-practice session because it is useful when students have already thought about how to organize tasks. In the Git session, it would be too early in the group formation process. -->

Optional: Merging into a target branch, i.e., your shared feature branch:

- Squash if you have worked on a single coherent task, which should be combined in a single commit
- Rebase if you would like to preserve a simple linear history
- Merge commit otherwise

Optional: When tasks are distributed, and you work alone, work in local non-shared branches (e.g., ``api_retrieval``):

- Rebase on (parent) feature branch to keep your branch "up-to-date" (``git rebase unpaywall_search``)
- Once the branch is online, use merge commits

---

# Teamwork: Open questions

Raise them directly or add them below (anonymously):

<iframe src="https://rustpad.io/#WjqD80" width="100%" height="400px" style="border:none;"></iframe>

<!-- 

---

# Quick warm-up questions

**Do we have to change the README.md?**
- You do not have to change the top-level README.md file, but you have to update README.md files in subdirectories to document your work.

**How can I commit if the pre-commit hooks fail?**
- The pre-commit hooks can be skipped using `git commit -n -m "commit message..."`. The `-n` flag stands for `--no-verify` and skips the pre-commit hooks.
- However, pre-commit hooks should pass to ensure good code quality. Some of the failing tests have been fixed recently.

**How can I get access rights to create branches in the fork?**
- Ask the team lead to invite you to the fork (see [step 2](https://digital-work-lab.github.io/open-source-project/output/02-git.html#32)).
-->

---

# Group work phase

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

After the introductory sessions, the stage is yours.

- You have six weeks to complete the project
- Remember: We are here to support you! 
- To discuss your plans, current challenges, and next steps, schedule a hacking-session:

<br>

<div style="text-align: center;">
  <a href="https://calendly.com/gerit-wagner/30min" 
     style="display: inline-block; background-color: #28a745; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;" 
     target="_blank">
    Schedule a meeting
  </a>
</div>

<br><br>

🚀 **Let's build something great together!**

![bg right:50% width:500px](../assets/mimi-thian--VHQ0cw2euA-unsplash.jpg)

> In the last semesters, each group scheduled 3-5 hacking sessions.
