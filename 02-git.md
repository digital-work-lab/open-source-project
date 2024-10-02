---
marp: true
header: 'Introduction to Git'
theme: ub-theme
paginate: true
---

<!-- _class: lead -->

<!-- _class: centered -->

# Introduction to Git

---

# Check-in: Group formation

- [Milestone](https://github.com/CoLRev-Environment/colrev/milestones)
- Anyone not yet part of an issue discussion?
- Challenges related to the setup?

![bg right width:500px](../assets/group-formation.png)

---

# Git: A distributed version control system

Advantages:

- Every repository has a full version history
- Most operations run locally
- Reliable data handling, ensuring integrity and availability
- Efficient data management for versions and branches
- Scalable collaboration mechanisms for large teams and complex projects

Caveats:

- Need to learn and understand the underlying model
- Not built for binary files or large media files

![bg right:35% width:300px](../assets/git_logo.png)

---

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

# Learning objectives

Understand and use git to develop software in teams.

**Part 1**: Branching
**Part 2**: Committing
**Part 3**: Collaborating

Each part starts with the **concepts** before the **practice** session.

In the practice sessions:

- Form groups of two to three students
- Work through the exercises
- Create a *cheat sheet* summarizing the key commands

![bg right:45% width:620px](../assets/reorder.png)

> \* Note: This session is based on our [unique and peer-reviewed approach](https://digital-work-lab.github.io/rethink-git-teaching/).

<!--

Goal: figure out how to accomplish the tasks (the instructions are more detailed at the beginning, you need to remember the commands/use and annotate the git cheatsheet. You will have to use the commands again, know what they do and how the changes and commands are situated in the three areas)

groups: help each other!

-> cheatsheet: how you would internalize it. Ask yourself: if you were to answer the tasks without having the slide/explanation, what should you have on your brief cheatsheet/what should you be able to reproduce from memory? 

GW: Write the slide numbers on the board and help students who have not reached that number

we work with the cli!

https://swcarpentry.github.io/git-novice/
https://librarycarpentry.org/lc-git/
-->

---

<!-- _class: centered -->

# Part 1: Branching

<!-- 
Wenn wir uns jetzt ein größeres Softwareprojekt vorstellen, also beispielsweise den Linux-Kernel, dann werden da fast im Sekundentakt neue Versionen angelegt. Wenn wir da bei einer linearen Versionsgeschichte bleiben, dann wird das schnell chaotisch.
Beispiel: Ich ändere die USB-Treiber, Sie Ändern ein Transportprotokoll, und Sie arbeiten an einem neuen Dateisystem. Wenn das wahllos durcheinander läuft dann gibt es Abhängigkeiten und Fehler, die wir vermeiden wollen. Idealerweise wollen wir an unserem Code arbeiten, ohne, dass jemand anders uns da Änderungen einfügt, die gar nichts mit unserer Arbeit zu tun haben.
Dafür gibt Git uns die Möglichkeit, mit Branches zu arbeiten, also mit separaten Entwicklungszweigen. Ich kann einen Branch für meine USB-Treiber aufmachen, Sie arbeiten separate am Transportprotokoll. Die Änderungen werden immer nur in unserem Branch hinzugefügt und betreffen die anderen Entwickler nicht (ILLUSTRIEREN: ich habe einen usb-drivers branch, Sie einen transport-protocol branch, meine Änderungen werden hier hinzugefügt, Ihre Änderungen hier). 
- Branches sind lokal und effizient (um einen Branch anzulegen speichert Git eine Zeile - alte Versionskontrollsysteme haben gleich das gesamt Projekt kopiert)
- Explain HEAD (TO WHICH BRANCH should commits be added?) and git switch branch_name
- Explain merge (common ancestor required, ideally: fast-forward (very efficient compared to other systems), otherwise: raise merge conflict)
-->

---

# Commits

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

- A **commit** refers to a snapshot (version) of the whole project directory, including the meta data and files
- Commits are identified by the **SHA** fingerprint of their meta data and content\*, e.g., `98ca9`
- Commits are created in a sequence, with every commit pointing to its **parent** commit(s)
- The **tree** object contains all files (and non-empty directories); it is identified by a SHA hash
- Commits are created by the **git commit** command

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
-->

![bg right:45% width:230px center](../assets/git-commit.png)

> \* If any of the meta data or content changes, the SHA will be completely different.

<!--
Author/date/message
Parent(s)
Tree-hash

-> file handling based on hashes/fingerprints. if one bit changes, the hash changes completely
-> illustrate in a commit-chain (all child commits change - problematic if we want to work on the same tree)
-> internal file handling: get ae9d898d7fa...
-> growth: adding a new commit/branch requires very little additional storage

Discuss/provide solutions for atomic commits

As soon as we have a git repository, we can see and modify everything in our copy.

Break
-->

---

<style>
blockquote {
    border-top: 0.1em;
    font-size: 60%;
    margin-top: auto;
}
</style>

# The DAG, branches, and HEAD

- Commits form a **directed acyclic Graph (DAG)**, i.e., all commits can have one or more children, and one or more parents (except for the first commit, which has no parent). Closed directed cycles are not allowed.
- With the **git branch \<branch-name\>** command, a separate line of commits can be started, i.e., one where different lines of commits are developed from the same parent. The branch pointer typically points at the latest commit in the line.
- With the **git switch \<branch-name\>** command, we can select the branch on which we want to work. Switch effectively moves the HEAD pointer, which points to a particular branch and indicates where new commits are be added.
- With the **git merge \<other-branch\>** command, separate lines of commits can be brought together, i.e., creating a commit with two parents. The *merge commit* integrates the contents from the *\<other-branch\>* into the branch that is currently selected. The *\<other-branch\>* is not changed. 
- Per default, Git sets up a branch named "main".

<!-- - Development typically focuses on the **main branch**, which often contains the latest stable version of the project -->

> Note: Arrows point from children to parent commits.

<!--
- The **git switch** command moves the **HEAD** pointer to the selected branch and copies its contents to your project directory

- Commits and their parent links form a directed acyclic graph (DAG)
Branches are useful to develop features, test code, or fix bugs without interferring with the main branch
 - Branches are highly efficient: It only takes a few bytes to create a branch of a large repository -->

![bg right:32% width:300px](../assets/git-dag.png)

---

# Practice: Branching

Open the notebook for practicing Git branching:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=digital-work-lab/practice-git)

---

<!-- _class: centered -->

# Part 2: Committing

<!-- 
- most prevalent version control system, rapid adoption over the last decade
- large tech companies use git (e.g., Windows migrated)
- if you want to develop software today, there is no way around git.

you wouldn't want to version binary/media files.

no need to connect to a central server: can create versions, branches etc. (share if we decide to do so)

Create a cheat sheet

Examples:
https://github.com/git/git
https://github.com/tensorflow/tensorflow


# DEMO

figure displaying the git commit content (tree, ...): show at the end of practice session 1 (not at the beginning)


**TODO : interactively develop the conceptual chart at the blackboard (explain to students which operations lead to transitions between the states)**

Highlight: we focus on local repositories only in this part!

ASK for concentration

- How should a versioning system look like? - area where you have the project files that you work with, and a separate "version database". Git calls it the "working directory" and the git directory. It has operations to create new versions from the files in your working directory. And it also has operations to retrieve files from the "version database" or the "history". That's what we will focus on for now (local operations). [AREAS AUFZEICHNEN]
- Zusätzlich gibt es noch eine Staging Area [IN DER MITTE  EINZEICHNEN]. 
- Stellen Sie sich jetzt vor, dass wir unser Git-Projekt angelegt haben, es gibt also das working directory und das git directory. Und wir haben jetzt verschiedene Dateien erstellt, zB. Programmcode, tests, dokumentation, und notizen. [ADD FILES TO WORKING DIRECTORY].
- Die erste Frage, die sich stellt ist: wie lege ich eine neue Version an? Wir wollen also den Programmcode und die Tests in der neuen Version haben. Die Dokumentation ist noch nicht fertig und die Notizen sollen auch nicht in die Version. Und da kommt die Staging Area ins Spiel. Alles was in die nächste Version aufgenommen werden soll muss vorher in die Staging area, sozusagen markiert für die nächste Version bzw. den nächsten Commit.
- Also: alle Dateien sind erst einmal im Working directory und Sie können auswählen, was Sie in die Staging Area übernehmen. Das ist der "git add ..." befehl. Sie geben also "git add code.py" und "git add tests.py" ein und dann wandert die aktuelle Version der ausgewählten Dateien in die Staging area [KOPIE DER DATEIEN VERSCHIEBEN und GIT ADD AUF PFEIL SCHREIBEN].
- Um dann einen Commit aus den Dateien in der Staging Area zu erstellen geben wir einfach "git commit" ein [DATEIEN IN EINEN COMMIT KOMBINIEREN]. So einfach ist der Ablauf. Sie sehen, dass die STAGING AREA wieder leer ist und dass Sie die gleichen Dateien immer noch im Working Directory haben. Also gibt es jetzt keinen Unterschied zwischen den drei Bereichen.
- Sehen wir uns noch einmal die Staging Area an. Wofür ist die Staging Area nützlich? Ich könnte ja auch einfach sagen dass die Dateien gleich committed werden sollen. [IDEEN?] - die Staging Area gibt uns die Möglichkeit, Dateiänderungen gezielt auszuwählen. Wir hatten hier zB. auch die Notizen und die unfertige Dokumentation. Die liegen im gleichen Ordner, sollen aber nicht in den nächsten Commit. Wenn wir git add ... ausführen haben wir also die Möglichkeit, einzelne Dateien in die Staging Area aufzunehmen. Gerade bei Programmierprojekten probiert man ja häufig verschiedene Implementierungen aus und manche funktionieren und andere funktionieren nicht. Und wenn Sie beim Programmieren den Moment haben, wo Sie sagen - Yess! jetzt funktioniert es endlich! Dann sagen fügen Sie Ihre Änderungen in die Staging Area ein. Also git add.
- Dann kümmern sie sich vielleicht um die Codeformatierung, die zugehörigen Tests und die Dokumentation und fügen das auch step-by-step in die Staging area ein. Dh. wenn Sie an einer bestimmten Funktionalität arbeiten können Sie auch gut ein paar Stunden die Staging Area befüllen. Und wenn Sie dann das Gefühl haben - jetzt ist es perfekt, jetzt funktioniert es zuverlässig, die Tests und die Doku passt, dann gehen Sie auf git commit. Die Staging Area kann Ihnen also helfen, Code mit hoher Qualität zu schreiben. Außerdem wird es so auch viel einfacher, Dateiänderungen, die nicht zu dem Problem gehören, im working directory zu belassen und nicht in die neue Version aufzunehmen.
- Wir haben uns also die drei Bereiche angesehen und wie man Dateiänderungen in die Staging area übernimmt und einen neuen Commit anlegt. Gibt es dazu Fragen?
- Als nächstes sehen wir uns die entgegengesetzte Richtung an.
- Wenn Sie Änderungen im Working directory haben, die Sie nicht mehr brauchen sagen Sie einfach "git restore file". Dann bekommen Sie die Version, die aktuell in der Staging Area liegt. Wenn Sie Änderungen in der Staging Area zurücksetzen möchten, geben Sie "git restore --staged file" ein. Dann bekommen Sie den letzten aktuellen Versionsstand aus dem git repository und die Änderungen aus der Staging Area sind nur noch im Working Directory. [PFEILE UND OPERATIONS EINZEICHNEN].
- Jetzt kennen wir hier die Operationen in beide Richtungen: git add und commit bzw. git restore und git restore --staged.
- Sehen wir uns das Git repository, also die Versionshistorie genauer an.
- Wir hatten den ersten Commit schon einmal angelegt und wenn wir jetzt weiter entwickeln können wir einen weiteren Commit anlegen. In jedem Commit wird auch immer gleich festgehalten, welcher Commit der Vorgänger war. Also der "Parent" commit. Wenn Sie einen Git Client nutzen, dann wird Ihnen zu jedem Commit typischerweise nicht der vollständige Inhalt angezeigt, sondern die Änderungen, also das Delta zum Vorgänger. Das sehen Sie bspw. auf Github [zeigen]. Sie sehen auch, dass Git sehr viele Versionen effizient verwalten kann.

Recap: d.h. wir haben jetzt gesehen, dass Dateien oder Dateiänderungen in drei Zuständen sein können: im Working Directory, in der Staging area, und im Git repository. Sie kennen die Operationen, mit denen wir Änderungen für die nächste Version markieren können und die neue Version anlegen können (git add und commit).
Wir haben uns auch den entgegengesetzten Weg angesehen - git restore und git restore --staged.
-->

---

# The working directory and .git repository

All working file contents reside in the working directory; staged and committed file contents are stored in the `.git` directory (a subfolder of the working directory).

Git allows us to stage (select) specific file contents for the next commit.

- With **git add \<file-name\>**, contents of an *untracked or modified* file are copied to the `.git` repository and added to the staging area, i.e., explicitly marked for inclusion in the next commit.
- With **git commit**, *staged* files contents are included in a *commit*.

The **git init** command creates the `.git` directory.

![bg right:38% width:500px](../assets/git-areas-1.png)

---

# The three states of a file

Files in the working directory can reside in three states:

- New files are initially **untracked**, i.e., Git does not include new files in commits without explicit instruction.
- With *git add*, file contents are staged and the file is tracked. Given that the file in the working directory is identical with the staged file contents, the file is **unmodified**.
- When users change a file, it becomes **modified**, i.e., the file in the working directory differs from the file contents in the staging area.
- With *git add*, the file contents are staged again, and the file becomes **unmodified**.
- With *git rm*, files are no longer tracked.

Note: *git add* and *git rm* do not change the contents of the file in the working directory.

![bg right:38% width:500px](../assets/git-areas-2.png)

<!-- 
Note: there are very few reasons to checkout a commit

This is the most important thing to know about Git!

Hogbin-Westby:
- working directory: what can be seen (in the file explorer)
- staging area: the difference of what is stored and what is seen (WHAT HAS BEEN MARKED FOR THE NEXT COMMIT)
- repository: what is stored
-->

---

# Resetting changes

To undo changes that are not yet committed, it is important to understand whether they are staged or unstaged:

- If changes are not yet staged, the file is currently *modified*. A **git restore \<file-name\>** replaces the file in the working directory with the staged version. As a result, the file is *unmodified* because it corresponds to the staged file.
- If the file is currently *unmodified*, a **git restore --staged \<file-name\>**, Git discards the staged changes by using the last committed version. The file contents in the working directory do not change, but the file becomes *modified* because it differs from the staged version.

![bg right:38% width:500px](../assets/git-reset.png)

<!-- 
TODO : better explain this with a git graph displayed like here:

https://stackoverflow.com/questions/3528245/whats-the-difference-between-git-reset-mixed-soft-and-hard

# Undoing committed changes

Clean working directory required!

To **undo committed changes**, there several options (some are available in gitk):

- Revert the commit, i.e., create a new commit to undo changes: `git revert COMMIT_SHA --no-edit`
- Undo the commit and leave the changes in the staging area: `git reset --soft COMMIT_SHA` (*)
- Stage changes, and run `git commit --amend` to modify the last commit (*)

If you have the time, try the different undo operations in the session.

(*) Important: only amend commits that are not yet shared with the team. Otherwise, revert is preferred.

-->

---

# Practice: Committing

Open the notebook for practicing Git committing:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=digital-work-lab/practice-git)

---

# Transfer challenges I 

1. Consider how the **git switch** (or the revert/pull/checkout) command affects the git areas. How does it affect the working directory?

<!--
Do you see any challenges?
- Try to reproduce the situation
(stash) -->

2. Git provides the option to edit prior commits using an interactive rebase, such as the **git rebase -i**. How would that affect the following commits?

<!-- 
git questions: understand linearized git history displayed on github / reading gitk DAG

Illustrate on the whiteboard : new/alternative commit with the same parent, all following commits are applied on top of the new commit
- commit shas change!
- Refer to the slide on commits
- Maybe even illustrate 
-->

---

# Practice: Merges

Open the notebook for practicing Git merges:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=digital-work-lab/practice-git)

---

<!-- _class: centered -->

# Part 3: Collaborating

---

# Collaborating

- The distributed model of Git means that every repository has a full version history, (almost) all operations can be completed locally, and every repository can be developed autonomously.
- To collaborate, a *remote* repository is needed, initially named "origin"
- If the remote repository exists, the **git clone** command retrieves a local copy
- To create a remote repository (named "origin"), and push a specific branch:

```
git remote add origin REMOTE-URL
git push origin main
```

<!-- - If the remote repository does not exist, you have to add the remote origin and push the repository -->

![bg right:30% width:300px](../assets/git-remote.png)

---

# Collaborating on branches

- To retrieve changes, use the **git pull** command
- To share changes, use the **git push** command

- Most remote operations, including pull, push, pull requests refer to branches
- In some cases, **branches must be selected explicitly**, and in other cases, git automatically selects branches, i.e., it remembers the typical branch to pull or push


![bg right:40% width:300px](../assets/git-remote-branch.png)

---

# Collaborating with forks

This model works if you are a maintainer of the remote/origin, i.e., if you have write access.

- In Open-Source projects, write-access is restricted to a few maintainers
- At the same time, it should be possible to integrate contributions from the community
- **Forks** are remote copies of the upstream repository
- Contributors can create forks at any time and push changes
- Contributors can open a **pull request** to signal to maintainers that code from the fork can be merged
- Pull requests are used for code review, and improvements before code is accepted or rejected

<!-- 

- In the fork, it is recommended to create working branches instead of committing to the `main` branch.
- It is good practice to regularly **sync** the `main` branches (on GitHub), and merge the changes into your working branches (locally or on GitHub).
- Syncing changes may be necessary to get bugfixes from the original repository, and to prevent diverging histories (potential merge conflicts in the pull request).
-->

![bg right:40% width:450px](../assets/git-remote-fork.png)

---

# Fork, invite, clone, and pull-request on GitHub

![bg center width:600px](../assets/fork-invite-clone-pull.png)

---

# Work in a forked repository

![bg right:50% width:500px](../assets/fork-sync.png)

- In the fork, it is recommended to create working branches instead of committing to the `main` branch.
- It is good practice to regularly **sync** the `main` branches (on GitHub), and merge the changes into your working branches (locally or on GitHub).
- Syncing changes may be necessary to get bugfixes from the original repository, and to prevent diverging histories (potential merge conflicts in the pull request).

---

# Remotes and branches

- Most remote operations, including pull, push, pull requests refer to branches
- In some cases, **branches must be selected explicitly**: pull requests, or pulling new branches
- In other cases, git automatically selects branches, i.e., it remembers the typical branch to pull or push

![bg right:45% width:500px](../assets/git-remote-branch.png)

<!-- 
---

# Practice session

The open-source collaboration game: [link](https://github.com/geritwagner/open-source-collaboration-game)


DEMO (go back to the commit slide)
- parents: lines of development
- branches: two commits have the same parent
- merge: one commit has two parents
-> DAG (we don't travel back in time - so there are no cycles)

Branches: pointers (more efficient than referring to sha-comit-ids)
-> allow us to separate development (typically: main/dev/features; but: very flexible)

git branch (overview) / git checkout -b feature (-b not necessary for existing branches)
-> we can do "git checkout commit-id" (-> "detached head" state - we have not branch/name for the commits that would be created)

git merge

checkout: select a commit or branch and set the working directory accordingly (working directory should be clean)

-> HEAD to point to the currently selected branch/commit (easier: commit / merge without selecting the "reference branch")

example: git checkout main, git merge dev
-> merge: shared parent? fast forward? conflicts?

-> what would happen if we go to an early commit and change some of its content?
-> the content, the blob/tree-hash change, the commit hash change, the commit-ids of all following commits change
-> AVOID rewriting history (especially when commits/branches are shared)

-->


<!-- 
TBD: add reset/revert in demo!?

Important: we think about the version tree DAG.
The working directory/staging area should be clean (ideally)

Demo/Blackboard: Git branches
- commits with parents
- create branches (branch names) 

Demonstrate CLI:
- git branch (see all/which one is selected - also in git status)
- Create branch (git branch  dev_feature)
- switch (HEAD) to dev branch (git switch dev_features)

-->

---

# Transfer challenges II

- Once a pull request has been opened, how can new changes (commits) be added?

<!-- 
Note: pull requests are just pointers (like branches/HEAD, they move with the branch)
 -->

- Assume that you discovered a typo in a very old commit. One option would be to run an interactive rebase and fix the typo. Why could such cases of "rewriting history" be problematic in collaborative settings?

- When pulling changes, there are two strategies to handle diverging branches: ``--merge`` or ``--rebase``. How do the results differ between these strategies?

<!-- - pull --rebase (we discussed interactive rebase before) -->

- GitHub offers the possibility to edit files directly. Are all of the three git areas available in this setting?

<!-- 
# Bonus part 2

- Create a fork of the [handbook](https://github.com/digital-work-lab/handbook)
- Give your team access to the fork (settings/collaborators)
- Develop contents
- Create a pull request (available in the original repository, not the fork)
- Assign the maintainer and respond to feedback

![width:800px center](../assets/git-commit-initial.png)

Note: `git cat-file -p sha` shows the contents of a git object.

Explain "bullwhip" effect based on this and the previous slide (why rewriting history should be avoided)

note: size is not part of the commit?!
git cat-file -p ID

Demonstrate how 
git clone https://github.com/CoLRev-Environment/colrev
cd colrev
du -hs .
for branch in alpha{1..500}; do git checkout -b $branch; done;
du -hs .

Challenge:
Write yourself a Git!
https://wyag.thb.lt/


TBD: maybe use the hierarchy of evidence to clarify the challenges of assessing technology (almost no "scientific evidence", but overwhelming adoption in the industry...)

Start with a picture of files and directories
-> ask students about their experiences collaborating on files, the problems and their strategies (mentimeter?)

provide an overview of synchronous editing (live in the same editor, e.g., Word/atom?)
Asynchronous editing (e.g., last-saved-replaces, Locks /Sharepoint, git)
-->

---

<!-- _class: centered -->

# Survey

Please share your feedback to help us improve!

---

# Project organization

- Select a team leader who creates the fork and invites group members
- Plan how tasks could be completed in separate branches
- Avoid working on the `main` branch and synchronize it regularly with the original repository
- Regularly check whether branches should be synchronized (merged)

**Task**: complete one merge between branches.

Note: we will distribute a survey asking for the current state of your project after the merge. Your input will help us prepare the best practice session.

---

# We value your feedback and suggestions

We encourage you to share your feedback and suggestions on this slide deck:

<a href="https://github.com/digital-work-lab/open-source-project/edit/main/02-git.md" target="_blank">
  <img src="../assets/iconmonstr-pencil-lined.svg" alt="Edit" width="32" height="32"> Suggest specific changes by directly modifying the content
</a>
<br>
<a href="https://github.com/digital-work-lab/open-source-project/issues/new" target="_blank">
  <img src="../assets/iconmonstr-info-12.svg" alt="New Issue" width="32" height="32"> Provide feedback by submitting an issue
</a>
<br>

Your feedback plays a crucial role in helping us align with our core goals of **impact in research, teaching, and practice**. By contributing your suggestions, you help us further our commitment to **rigor**, **openness** and **participation**. Together, we can continuously enhance our work by contributing to **continuous learning** and collaboration across our community.

Visit this <a href="https://digital-work-lab.github.io/handbook/docs/10-lab/10_processes/10.01.goals.html" target="_blank">page</a> to learn more about our goals:  🚀 🛠️ ♻️ 🙏 🧑‍🎓️ . 
