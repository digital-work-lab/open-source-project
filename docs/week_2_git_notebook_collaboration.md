---
layout: default
title: "Git collaborating"
parent: "Week 2: Git"
nav_order: 4
has_toc: true
---

# Exercise notebook: Git collaborating

[![Offered at: Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-the%20Digital%20Work%20Lab%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

<img src="img/iconmonstr-certificate-6.svg" alt="Edit" width="16" height="16">  The notebook builds on our peer-reviewed <a href="iconmonstr-certificate-6.svg">pedagogical foundations</a>.

We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/practice-git/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/practice-git/edit/main/notebooks/git_merge_conflicts.ipynb" target="_blank">suggestions</a> on this notebook!

---

<div style="border-left: 4px solid #026e57; background-color: #d0f0e4; padding: 15px; margin: 10px 0; color: #026e57; border-radius: 5px; width:800px;">
    <strong>Concepts: Git collaborating</strong> <br><br>The slides explaining Git collaborating are <a href="https://digital-work-lab.github.io/open-source-project/output/02-git.html#18" target="_blank">here</a>.
</div>

<br>

<br>

With this notebook, we practice collaborating with Git in small groups.

| Practice | Label                                                   | Time (min) |
|----------|---------------------------------------------------------|------------|
|  1       | [Work in a shared repository](#simple)                  |  5         |
|  2       | [Work in a fork](#fork)                                 | 13         |
|  3       | [Wrap-up](#wrap-up)                                     |  2         |
|          | Overall                                                 | 20         |

<img src="img/iconmonstr-help-6.svg" alt="Edit" width="12" height="12"> We are here to help if errors or questions come up!

<br>

---

Form small groups of 3-5 students and solve the following tasks together. 

## Part 1: Work in a shared repository <a id="simple"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;">In the first part, we will create a simple <b>shared repository</b> setup. Every team member will have access to the same repository, committing directly to <code>main</code>, or creating branches and pull-requests. We will not download the repository, but <a href="https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files">edit the files directly on GitHub</a> instead.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Task</b>: Select one <b>maintainer</b>, who creates a new remote repository on <a href="https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository">GitHub</a> and <a href="https://docs.github.com/en/issues/planning-and-tracking-with-projects/managing-your-project/managing-access-to-your-projects">invites</a> the other team members as contributors. You can work on a public or private repository. In addition, the maintainer creates a <code>README.md</code> file, chosing a project name and creating a contributor section similar to the following:</p>

<h2 style="margin-bottom: 3px; font-family: monospace; font-size: 1em;">README.md</h2>

<div style="border: 2px solid white; padding: 20px; color: black; max-width: 760px; text-align: left; background-color: #eee; font-family: monospace;">
  <h1 style="margin: 0 0 20px; font-size: 1.2em; color: black;"># TeamPlay - A Prototype</h1>

  <h2 style="margin: 0 0 20px; font-size: 1.1em; color: black;">## Contributors</h2>

  <p style="margin: 10px 0; color: black;">Anna Maintainer</p>
</div>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Task</b>: Next, each team member edits the <code>README.md</code> directly on GitHub (on the <b>main</b> branch), adding her/his name.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;">After creating the <code>README.md</code>, the team decides to add more contents, working in parallel branches, and using pull-requests to discuss and integrate the changes.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Task Contributor A</b>: Create a branch <code>license</code>, adding the <a href="https://choosealicense.com/licenses/mit/">MIT License</a> in a file named <code>LICENCSE</code>.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Task Contributor B</b>: Create a branch <code>contributing</code>, adding the <a href="https://github.com/CoLRev-Environment/colrev/blob/main/CONTRIBUTING.md">contributing guidelines</a> in a file named <code>CONTRIBUTING.md</code>.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Task Contributor C</b>: Create a branch <code>code_of_conduct</code>, adding the <a href="https://github.com/CoLRev-Environment/colrev/blob/main/CODE_OF_CONDUCT.md">code of conduct</a> in a file named <code>CODE_OF_CONDUCT.md</code>.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;">Afterwards, each contributor opens a pull-request to integrate the changes. Review each other's changes, add a commend to confirm whehter the changes are adequate and merge them using the rebase option.</p>

## Part 2: Work in a fork <a id="fork"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;">In this part, we work with a fork of an existing project. The <a href="https://github.com/CoLRev-Environment/colrev">CoLRev</a> repository serves as the <b>upstream/origin</b>. Your group creates a <b>fork</b> and edits the data on Codespaces (or a local repository).</p>

<img src="img/git-remote-fork.png" style="width: 500px;">

<table style="width: 760px; border-collapse: collapse; margin: 20px; border: 1px solid #ddd; text-align: left;">
  <thead>
    <tr style="background-color: #f4f4f4;">
      <th style="border: 1px solid #ddd; padding: 8px;">Term</th>
      <th style="border: 1px solid #ddd; padding: 8px;">Definition</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px;"><strong>remote/origin</strong></td>
      <td style="border: 1px solid #ddd; padding: 8px;"><code>origin</code> is the default name Git gives to the remote repository when it's cloned. It typically refers to the source repository from which your local repository is cloned.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px;"><strong>upstream</strong></td>
      <td style="border: 1px solid #ddd; padding: 8px;"><code>upstream</code> refers to the primary repository from which a fork is created. It is the main project that your local or forked repository is tracking.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px;"><strong>fork</strong></td>
      <td style="border: 1px solid #ddd; padding: 8px;">A <code>fork</code> is a copy of a repository that is created under a different user's account. It allows you to freely experiment with changes without affecting the original repository.</td>
    </tr>
  </tbody>
</table>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 1: Maintainer Forks the Project</b>: The maintainer forks the <a href="https://github.com/CoLRev-Environment/colrev">CoLRev repository</a>, creating their own copy of the project. They invite contributors to collaborate on this fork.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 2: Contributors Open the Project in Codespaces</b>: Contributors open the maintainer's forked repository in GitHub Codespaces. This action effectively clones the remote repository to a development environment. Contributors can now work on this forked version directly.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 3: Implement Changes on Branches</b> Contributors create new branches in Codespaces to implement changes. Branching ensures that any new features or bug fixes are isolated from the main codebase until they are fully tested and reviewed.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 4: Push Changes and Open a Pull Request</b>: Once changes are implemented, contributors push their branch to the remote repository (the fork). After pushing, contributors open a pull request (PR) to propose that the maintainer review and merge their changes into the fork's main branch.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 5: Maintainer Merges Changes to the Fork</b>: The maintainer reviews the pull requests, and if everything looks good, merges the changes into the forked repository's main branch. The fork is now updated with the new contributions.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 6: Synchronize Codespaces with the Main Branch</b>: After the maintainer merges changes, contributors need to sync their Codespace environment with the latest version of the fork's main branch. This ensures that they are working with the most up-to-date version of the project.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify; width: 800px;"><b>Step 7: Maintainer Opens Pull Request to Original Repository</b>: Once the fork has accumulated significant changes, the maintainer opens a pull request from the fork to the original <a href="https://github.com/CoLRev-Environment/colrev">CoLRev repository</a>, proposing that the updates in the fork be integrated into the main project. After review, the pull request is either merged or closed.

<!--
<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block; width: fit-content;  width: 800px;">
    <strong>Info</strong> The last command will reopen the codespace window and add the new project to the explorer sidebar. You will have to navigate to this notebook again.
</div>
-->


## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Git collaborating notebook - good work! 🎈🎉

In this notebook, we have learned about

- The role of remote repositories and forks
- The synchronization using `git pull`, `git push`, and **pull requests**
- The different permissions when working in a shared repository or contributing through forks.