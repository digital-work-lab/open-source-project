---
layout: default
title: "Week 2: Git (teaching notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 2: Git (Teaching notes)

| Time (start)   | Duration  | Topic                                     | Additional materials                                                                                                             |
|----------------|-----------|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| 00:00          | 50        | [Branching](#branching)                   | Concepts + Hands-on practice ([branching notebook](https://github.com/digital-work-lab/practice-git?tab=readme-ov-file){: target="_blank"})         |
| 00:50          | 5         | Break                                     |                                                                                                                                  |
| 00:55          | 50        | [Committing](#committing)                 | Concepts + Hands-on practice ([committing notebook](https://github.com/digital-work-lab/practice-git?tab=readme-ov-file){: target="_blank"})        |
| 01:45          | 5         | Break                                     |                                                                                                                                  |
| 01:50          | 40        | [Transfer: Conflicts](#transfer-conflicts)| Conflict resolution task ([conflict-resolution notebook](https://github.com/digital-work-lab/practice-git?tab=readme-ov-file){: target="_blank"})   |
| 02:30          | 5         | Break                                     |                                                                                                                                  |
| 02:35          | 30        | [Collaborating](#collaborating)           | Concepts + Group practice ([collaborating notebook](https://github.com/digital-work-lab/practice-git?tab=readme-ov-file){: target="_blank"})        |
| 03:05          | 10        | [Wrap-up](#wrap-up)                       | Summary of key takeaways                                                                                                         |

{: .objective }
> - Goal: figure out how to accomplish the tasks (the instructions are more detailed at the beginning, you need to remember the commands/use and annotate the git cheatsheet. You will have to use the commands again, know what they do and how the changes and commands are situated in the three areas)
> - We work with the cli.

<div class="page-break"></div>

{: .info }
> - Prep [Pingo survey](https://pingo.coactum.de/events/659109/surveys/670b7003cb008d0001b0e7ce){: target="_blank"}
> - Start the timer at the beginning.
> - Ask students to sit in groups of three (for the group exercise at the end) and work together/help each other.
Create a cheatsheet: how you would internalize it? Ask yourself: if you were to answer the tasks without having the slide/explanation, what should you have on your brief cheatsheet/what should you be able to reproduce from memory? 

## Part 1: Branching <a id="branching"></a>

Wenn wir uns jetzt ein größeres Softwareprojekt vorstellen, also beispielsweise den Linux-Kernel, dann werden da fast im Sekundentakt neue Versionen angelegt. Wenn wir da bei einer linearen Versionsgeschichte bleiben, dann wird das schnell chaotisch.
Beispiel: Ich ändere die USB-Treiber, Sie Ändern ein Transportprotokoll, und Sie arbeiten an einem neuen Dateisystem. Wenn das wahllos durcheinander läuft dann gibt es Abhängigkeiten und Fehler, die wir vermeiden wollen. Idealerweise wollen wir an unserem Code arbeiten, ohne, dass jemand anders uns da Änderungen einfügt, die gar nichts mit unserer Arbeit zu tun haben.
Dafür gibt Git uns die Möglichkeit, mit Branches zu arbeiten, also mit separaten Entwicklungszweigen. Ich kann einen Branch für meine USB-Treiber aufmachen, Sie arbeiten separate am Transportprotokoll. Die Änderungen werden immer nur in unserem Branch hinzugefügt und betreffen die anderen Entwickler nicht (ILLUSTRIEREN: ich habe einen usb-drivers branch, Sie einen transport-protocol branch, meine Änderungen werden hier hinzugefügt, Ihre Änderungen hier). 

- Branches sind lokal und effizient (um einen Branch anzulegen speichert Git eine Zeile - alte Versionskontrollsysteme haben gleich das gesamt Projekt kopiert)
- Explain HEAD (TO WHICH BRANCH should commits be added?) and git switch branch_name
- Explain merge (common ancestor required, ideally: fast-forward (very efficient compared to other systems), otherwise: raise merge conflict)

### Commits

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

Author/date/message
Parent(s)
Tree-hash

-> file handling based on hashes/fingerprints. if one bit changes, the hash changes completely
-> illustrate in a commit-chain (all child commits change - problematic if we want to work on the same tree)
-> internal file handling: get ae9d898d7fa...
-> growth: adding a new commit/branch requires very little additional storage

Discuss/provide solutions for atomic commits

As soon as we have a git repository, we can see and modify everything in our copy.

### The DAG, branches, and HEAD

- Development typically focuses on the **main branch**, which often contains the latest stable version of the project
- The **git switch** command moves the **HEAD** pointer to the selected branch and copies its contents to your project directory
- Commits and their parent links form a directed acyclic graph (DAG)
Branches are useful to develop features, test code, or fix bugs without interfering with the main branch
- Branches are highly efficient: It only takes a few bytes to create a branch of a large repository 

- parents: lines of development
- branches: two commits have the same parent
- merge: one commit has two parents
-> DAG (we don't travel back in time - so there are no cycles)

Branches: pointers (more efficient than referring to sha-comit-ids)
-> allow us to separate development (typically: main/dev/features; but: very flexible)


{: .info }
> Notebook: [practice-git / branching](https://github.com/digital-work-lab/practice-git){: target="_blank"}

## Part 2: Committing <a id="committing"></a>

**Interactively develop the conceptual chart at the blackboard (explain to students which operations lead to transitions between the states)**

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

{: .warning }
> The **complex merge conflict** is optional (it can be a *do-at-home* exercise or we can cover it in the best-practice session). Check whether it can be completed in 2:30 h.

{: .info }
> Notebook: [practice-git / committing](https://github.com/digital-work-lab/practice-git){: target="_blank"} and [practice-git / merge-conflicts](https://github.com/digital-work-lab/practice-git){: target="_blank"}

## Collaborating <a id="collaborating"></a>

- In the fork, it is recommended to create working branches instead of committing to the `main` branch.
- It is good practice to regularly **sync** the `main` branches (on GitHub), and merge the changes into your working branches (locally or on GitHub).
- Syncing changes may be necessary to get bugfixes from the original repository, and to prevent diverging histories (potential merge conflicts in the pull request).

{: .info }
> Notebook: [practice-git / collaborating](https://github.com/digital-work-lab/practice-git){: target="_blank"}


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
