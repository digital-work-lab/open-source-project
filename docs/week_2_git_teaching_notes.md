---
layout: default
title: "Week 2: Git (teaching notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 2: Git (Teaching notes)

| Time (start)   | Duration  | Topic                                     | Additional materials                                                                                                     |
|----------------|-----------|-------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| 00:00          | 90        | [Branching](#branching)                   | Concepts + Hands-on practice ([branching notebook](week_2_git_notebook_branching){: target="_blank"})                    |
| 01:30          | 5         | Break                                     |                                                                                                                          |
| 01:35          | 40        | [Committing](#committing)                 | Concepts + Hands-on practice ([committing notebook](week_2_git_notebook_committing){: target="_blank"})                  |
| 02:15          | 5         | Break                                     |                                                                                                                          |
| 02:20          | 25        | [Transfer: Conflicts](#transfer-conflicts)| Conflict resolution task ([conflict-resolution notebook](week_2_git_notebook_merge_conflict){: target="_blank"})         |
| 02:45          | 5         | Break                                     |                                                                                                                          |
| 02:50          | 15        | [Collaborating](#collaborating)           | Concepts + Group practice (do at home) ([collaborating notebook](week_2_git_notebook_collaboration){: target="_blank"})  |
| 03:00          | 10        | [Wrap-up](#wrap-up)                       |                                                                                                                          |

<div class="page-break"></div>

{: .info }
> - Check-in: Group formation (any challenges?)
> - Ask students to sit in groups of three and work together/help each other
> - Start the timer at the beginning
> - Suggest creating a cheatsheet on the important commands

## Learning objectives

Today, we want to understand how to use Git for software development in teams.
This session is divided into three parts.

{: .objective }
>- We will start with **branching**, then move on to **committing**, and finally, we'll look at **collaborating**.
> - Each of these parts includes **concepts** that will be discussed, along with **related exercises**.

- Our goal is to figure out how to accomplish the tasks. The instructions are more detailed at the beginning, you need to remember the commands/use and annotate the git cheatsheet. You will have to use the commands again, know what they do, and how the changes and commands are situated in the three areas.
- We work with the CLI.

<div class="page-break"></div>

## Part 1: Branching <a id="branching"></a>

### Commits

- Snapshot of the whole project
- Identifying objects with SHA fingerprints
- Commit: Contents (tree), Metadata (message, author/committer, date, parent) and SHA

<!--
Demo:

- setup a git repository, create a file (explain the working directory), add the changes (explain the staging area), create a commit
- inspect the commit (the internal git objects / history):
git log
- commit ID (sha)
- HEAD points to the main branch. (aha)
git cat-file -p ENTER_COMMIT
- go through the information (if any of that information changes, the fingerprint of the commit changes)
- you see that git handles all objects (files, trees, commits) by their fingerprint.
git cat-file -p (TREE)
git cat-file -p (FILE)


- if git handles everything through fingerprints, it checks whether the file or tree is already in the database.

- file handling based on hashes/fingerprints. If one Bit changes, the hash changes completely
- illustrate in a commit-chain (all child commits change - problematic if we want to work on the same tree)
- internal file handling: get ae9d898d7fa...
- growth: adding a new commit/branch requires very little additional storage
-->

**Illustration on the whiteboard**

Working in parallel (not just in the linear history)

If we now imagine a larger software project, for example the Linux kernel, then new versions are created almost every second. If we stick to a linear version history, it quickly becomes chaotic.
Example: I change the USB drivers, you change a transport protocol and you work on a new file system. If all of this is randomly mixed up, there are dependencies and errors that we want to avoid. Ideally, we want to work on our code without someone else inserting changes that have nothing to do with our work.
Git gives us the option of working with branches, i.e. separate development branches. I can open a branch for my USB drivers, you work separately on the transport protocol. The changes are only ever added to our branch and do not affect the other developers (ILLUSTRATE: I have a usb-drivers branch, you have a transport-protocol branch, my changes are added here, your changes here).

- Branches are local and efficient (to create a branch, Git saves one line - old version control systems copied the entire project)
- Explain HEAD (TO WHICH BRANCH should commits be added?) and git switch branch_name
- Explain merge (common ancestor required, ideally: fast-forward (very efficient compared to other systems), otherwise: raise merge conflict)

### The DAG, branches, and HEAD

DAG: Commits can have multiple parents, each commit can have multiple children (branch / merge commits) - but there are no circles!

- Development typically focuses on the **main branch**, which often contains the latest stable version of the project
- The **git switch** command moves the **HEAD** pointer to the selected branch and copies its contents to your project directory
- Commits and their parent links form a directed acyclic graph (DAG)
Branches are useful for developing features, testing code, or fixing bugs without interfering with the main branch
- Branches are highly efficient: It only takes a few bytes to create a branch of a large repository 

- Connection to **parent commits**: create "lines of development"
- Branches are basically **two commits that have the same parent**
- Merge: one commit has **two parents**
-> DAG (we don't travel back in time - so there are no cycles)

Branches: pointers (more efficient than referring to sha-commit-ids)
-> allow us to separate development (typically: main/dev/features; but: very flexible)

{: .info }
> - Have students start the [codespace in colrev repo](https://github.com/CoLRev-Environment/colrev){: target="_blank"} and open the [Jupyter notebook](week_2_git){: target="_blank"}.
> - Briefly explain how to navigate the Codespace.

<div class="page-break"></div>

## Part 2: Committing <a id="committing"></a>

**Interactively develop the conceptual chart on the blackboard (explain to students which operations lead to transitions between the states)**

Highlight: we focus on local repositories only in this part!

As soon as we have a git repository, we can see and modify everything in our copy.

ASK for concentration

- How should a versioning system look like? - Area where you have the project files that you work with, and a separate "version database". Git calls it the "working directory" and the git directory. It has operations to create new versions from the files in your working directory. And it also has operations to retrieve files from the "version database" or the "history". That's what we will focus on for now (local operations). [Draw the three AREAS]
- There is also a staging area [DRAW IN THE CENTER]. 
- Now imagine that we have created our Git project, so there is the working directory and the git directory. And we have now created various files, e.g. program code, tests, documentation, and notes. [ADD FILES TO WORKING DIRECTORY].
- The first question that arises is: how do I create a new version? We want to have the program code and the tests in the new version. The documentation is not yet ready and the notes should not be included in the version. And this is where the staging area comes into play. Everything that is to be included in the next version must first be placed in the staging area, marked for the next version or the next commit.
- So: all files are initially in the working directory and you can select what you want to include in the staging area. This is the “git add ...” command. So you enter “git add code.py” and “git add tests.py” and then the current version of the selected files moves to the staging area [MOVE COPY OF FILES and WRITE GIT ADD ON ARROW].
- To create a commit from the files in the staging area, we simply enter “git commit” [COMBINE FILES INTO ONE COMMIT]. The process is as simple as that. You will see that the STAGING AREA is empty again and that you still have the same files in the working directory. So now there is no difference between the three areas.
- Let's take another look at the staging area. What is the staging area useful for? I could simply say that the files should be committed immediately. [IDEAS?] - the staging area gives us the opportunity to select specific file changes. For example, we also had the notes and the unfinished documentation here. They are in the same folder, but should not be included in the next commit. If we execute git add ... we have the option of adding individual files to the staging area. With programming projects in particular, you often try out different implementations and some work and others don't work. And if you have that moment during programming when you say - Yess! now it finally works! Then add your changes to the staging area. So git add.
Then you might take care of the code formatting, the associated tests and the documentation and add this step-by-step to the staging area. This means that if you are working on a specific functionality, you can spend a few hours filling the staging area. And when you have the feeling - now it's perfect, now it works reliably, the tests and the documentation fit, then go to git commit. The staging area can therefore help you to write high-quality code. It also makes it much easier to leave file changes that are not part of the problem in the working directory and not include them in the new version.
- So we have looked at the three areas and how to transfer file changes to the staging area and create a new commit. Are there any questions?
- Next, let's look at the opposite direction.
- If you have changes in the working directory that you no longer need, simply say “git restore file”. You will then get the version that is currently in the staging area. If you want to reset changes in the staging area, enter “git restore --staged file”. You will then get the last current version from the git repository and the changes from the staging area will only be in the working directory. [DRAW ARROWS AND OPERATIONS].
- Now we know the operations in both directions: git add and commit or git restore and git restore --staged.
- Let's take a closer look at the Git repository, i.e. the version history.
- We have already created the first commit once and if we continue to develop, we can create another commit. In each commit, it is always recorded which commit was the predecessor. In other words, the “parent” commit. If you use a Git client, you are typically not shown the complete content of each commit, but the changes, i.e. the delta to the predecessor. You can see this on Github [show], for example. You can also see that Git can manage many versions efficiently.


Recap: i.e. we have now seen that files or file changes can be in three states: in the working directory, in the staging area, and in the Git repository. You know the operations with which we can mark changes for the next version and create the new version (git add and commit).
We have also looked at the opposite way - git restore and git restore --staged.

Note: when explaining the git committing, it could be helpful to illustrate the process
-> git add creates git objects from files/trees, git commit adds the time/author/predecessor

- explicitly show how git status displays information on the three areas
- you wouldn't want to version binary/media files.
- no need to connect to a central server: can create versions, branches etc. (share if we decide to do so)

Hogbin-Westby:

- working directory: what can be seen (in the file explorer)
- staging area: the difference of what is stored and what is seen (WHAT HAS BEEN MARKED FOR THE NEXT COMMIT)
- repository: what is stored

## Undoing committed changes

Clean working directory required!

To **undo committed changes**, there several options (some are available in gitk):

- Revert the commit, i.e., create a new commit to undo changes: `git revert COMMIT_SHA --no-edit`
- Undo the commit and leave the changes in the staging area: `git reset --soft COMMIT_SHA` (*)
- Stage changes, and run `git commit --amend` to modify the last commit (*)

If you have the time, try the different undo operations in the session.

(*) Important: only amend commits that are not yet shared with the team. Otherwise, revert is preferred.

{: .info }
> Notebook: [committing](week_2_git_notebook_committing){: target="_blank"} and [notebook: merge-conflicts](week_2_git_notebook_merge_conflict){: target="_blank"}

{: .warning }
> The **complex merge conflict** is optional (it can be a *do-at-home* exercise or we can cover it in the best-practice session). Check whether it can be completed in 2:30 h.

<div class="page-break"></div>

## Part 3: Collaborating <a id="collaborating"></a>

-> this notebook is optional to do as a "homework"

- In the fork, it is recommended to create working branches instead of committing to the `main` branch.
- It is good practice to regularly **sync** the `main` branches (on GitHub), and merge the changes into your working branches (locally or on GitHub).
- Syncing changes may be necessary to get bugfixes from the original repository, and to prevent diverging histories (potential merge conflicts in the pull request).

{: .info }
> Notebook: [collaborating](week_2_git_notebook_collaboration){: target="_blank"}

### Best practice branching strategy:

This will ensure that you will always have fast-forward merges.
It will also keep the upstream/origin work separate from your work (in the feature branch)

<!-- 
### Additional notes

Explain "bullwhip" effect based on this and the previous slide (why rewriting history should be avoided)

-> what would happen if we go to an early commit and change some of its content?
-> the content, the blob/tree-hash change, the commit hash change, the commit-ids of all following commits change
-> AVOID rewriting history (especially when commits/branches are shared)

Show the contents of git objects: `git cat-file -p sha`

Demonstrate the low memory footprint of branches
git clone https://github.com/CoLRev-Environment/colrev
cd colrev
du -hs .
for branch in alpha{1..500}; do git checkout -b $branch; done;
du -hs .

Resources:

- https://swcarpentry.github.io/git-novice/
- https://librarycarpentry.org/lc-git/
- Write yourself a Git! (Challenge) https://wyag.thb.lt/
-->

### Until the next session

To prepare for the next sessions, please set up your programming environment (see [instructions](https://colrev-environment.github.io/colrev/dev_docs/setup.html){: target="_blank"} in the CoLRev documentation)  ([deadline](../index.html#deliverables)).
