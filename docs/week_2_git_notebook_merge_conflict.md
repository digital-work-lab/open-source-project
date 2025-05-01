---
layout: default
title: "Git merge conflicts"
parent: "Week 2: Git"
nav_order: 5
has_toc: true
---

# Exercise notebook: Git merge conflicts

[![Offered at: Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20Lab%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

<img src="../assets/iconmonstr-certificate-6.svg" alt="Edit" width="16" height="16">  The notebook builds on our peer-reviewed <a href="https://digital-work-lab.github.io/rethink-git-teaching/">pedagogical foundations</a>.

We  <img src="../assets/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/practice-git/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/practice-git/edit/main/notebooks/git_merge_conflicts.ipynb" target="_blank">suggestions</a> on this notebook!

---

<div style="border-left: 4px solid #026e57; background-color: #d0f0e4; padding: 15px; margin: 10px 0; color: #026e57; border-radius: 5px; width:730px;">
    <strong>Transfer Challenge</strong>: Git merges occur when two branches are integrated. Merge conflicts require you to resolve competing file changes. <br>
</div>

With this notebook, you can practice merging and resolving merge conflicts.

| Practice | Label                                                    | Time (min) |
|----------|----------------------------------------------------------|------------|
|  1       | [A simple merge conflict](#simple)                       | 20         |
|  2       | [A more realistic merge conflict](#realistic) (Optional) | 30         |
|  3       | [Understand how to prevent merge conflicts](#prevent)    |  8         |
|  4       | [Wrap-up](#wrap-up)                                      |  2         |
|          | Overall                                                  | 40         |

<img src="../assets/iconmonstr-certificate-6.svg" alt="Edit" width="12" height="12"> We are here to help if errors or questions come up!

---

<div style="border: 2px solid #ff9800; padding: 10px; background-color: #ffe0b2; color: #e65100; border-radius: 5px; display: inline-block; width: fit-content; width:730px;">
    <strong>Important:</strong> Make sure to copy the commands and enter them in the shell as shown in the screenshot. It is not possible to run the cells in this notebook.
    <div style="clear: both;"></div>
    <img src="../assets/codespace-shell.png" width="800"/>
</div>

Git is highly efficient in creating branches and merging them. This is a useful property for software development projects in which programmers implement different features, fix bugs, and refactor the codebase. These changes are typically implemented in separate branches, which are not affected by coding activities in other parts of the codebase (other branches). When developers decide that the work from their branch should be integrated into a target branch (often the main branch), the `git merge other_branch_name` command starts the merge operation. In this operation, Git uses heuristics to determine whether the changes in both branches are compatible. When developers have changed unrelated parts of the codebase, the branches are merged automatically.

However, if the branches introduce changes to the same parts of the codebase, there is no simple rule to decide which change is kept and which is discarded. In this case, Git creates a **merge conflict**, indicating that the user has to indicate which changes should be retained.

## Part 1: Resolving a simple merge conflict <a id="simple"></a>

To create and resolve a merge conflict in a simple hello-world project, run the following commands in the (GitHub Codespace) shell below:

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block; width: fit-content;  width: 730px;">
    <strong>Info</strong> The last command will reopen the codespace window and add the new project to the explorer sidebar. You will have to navigate to this notebook again.
</div>

<br>

```python
cd /workspaces
mkdir project
cd project
git init
echo "print('hello world')" > app.py
git add app.py
git commit -m 'first commit'
code -a /workspaces/project
```

At this point, the Python script printing a "hello world" statement should be saved in the `app.py` file and included in the first commit.

We will proceed to create and resolve a merge conflict. Two developers will help us: Linda and Reynold. Each modifies the file to print something different. Let's start with Reynold.


```python
cd /workspaces/project
git branch bugfix
git switch bugfix
echo "print('hello world. good luck with this shity day and all the rain.')" > app.py
git add app.py
git commit -m 'use a more accurate greeting'
```

Next, let's see Linda's contribution.


```python
git switch main
echo "print('hello world. what a beautiful day')" > app.py
git add app.py
git commit -m 'include a nice greeting'
```

Given that both have modified the same part of the codebase, we expect a merge conflict.


```python
git merge bugfix
```

Git should now print the following:

```bash
Auto-merging app.py
CONFLICT (add/add): Merge conflict in app.py
Automatic merge failed; fix conflicts and then commit the result.
```

To analyze and resolve the conflict, open the `app.py` file (VisualStudio highlights files with merge conflicts in red). It should highlight the conflicting parts as follows:

![Conflict](../assets/conflict.png)

Note that there are two areas between the `<<<<<<`, the `=====` and the `>>>>>>>` (the conflict markers).

The first section shows the content on your current branch (selected by `HEAD`). The second section shows the content from the other branch (in this case, `bugfix`).

**Task**: To resolve the conflict, select the code parts that should be retained. Remove the surrounding conflict markers. Once completed, complete the merge.

```python
git add app.py
git commit
```

To complete the commit, simply close the commit message.

Check the Git history and verify whether the merge commit was created.

🎉🎈 With these commands, you have solved the first merge conflict! 🎈🎉

## Part 2: Resolving a more realistic merge conflict  <a id="realistic"></a>

For this task, we focus on a project where Lisa and Ted work on a Python module for a command-line application. Lisa works on a separate branch and changes `print()`statements to `logging.info()`. In parallel, Ted introduces changes to the `COLORS` variable on main. Both changes affect the same module and even the same lines of code. Let's see how the conflict unfolds and how we can resolve it.

```python
# Run these commands if you do not have the colrev project.
# git clone https://github.com/CoLRev-Environment/colrev
# As you already know, the following will restart your Codespace
# code -a /workspaces/colrev
# code /workspaces/practice-git/notebooks/git_merge_conflicts.ipynb
```

```python
cd /workspaces/colrev
# Next, we make sure that we always start from the same commit
git reset --hard d4b15c1783b48c6a8df04fec165d828709d69b9e

# Apply Lisa's changes
git branch logger
git switch logger
git apply /workspaces/practice-git/notebooks/use-logger.patch
```

**Tasks**:

- Analyze the changes using the Git GUI
- Commit the changes using an informative commit message

```python
# We go back to the main branch and apply another patch
git switch main
# Apply Ted's changes
git apply /workspaces/practice-git/notebooks/replace-color-import.patch
```

**Tasks**:
 
- Analyze the changes using the Git GUI
- Commit the changes
- Merge the logger branch and resolve the conflict, making sure that the changes of Lisa and Ted are retained correctly

```python
git merge logger
# Resolve merge conflict
git status
# Once resolved, create a merge commit as advised in the git status
```

To validate your solution, run the following command to retrieve our solution:

```python
cp -f /workspaces/practice-git/cli.py colrev/ui_cli/cli.py
git status
```

Note: for simplicity, we worked in the same repository. However, the merge conflict would be identical if the branches were shared in a remote repository. In fact, if GitHub encounters a merge conflict, it suggests that users download the branches and resolve the merge conflict locally (like we just did).

## Part 3: Understand how to prevent merge conflicts <a id="prevent"></a>

Although merge conflicts are not necessarily a bad thing, it is recommended to avoid complex merge conflicts. To achieve this, different strategies can be combined:

- Understand whether changes are likely to create merge conflicts
- Communicate with other contributors to understand who is working on which parts of the codebase or read the codebase if there is no personal contact with the other developers
- Avoid problematic changes, such as code formatting and restructuring that affect the whole codebase. Coordinate development if they are necessary.
- Avoid long-running branches by merging often
- Create atomic commits

When learning Git, this is surprising for many: A branch gives you a completely independent version of the codebase, allowing you to test changes and "do your thing". But to use branches in the most effective way possible, you have to anticipate how your changes will integrate with the work of others.

**Task**: To understand whether commits are likely to create merge conflicts, examine the following commits:

<a href="https://github.com/CoLRev-Environment/colrev/commit/108d278e" target="_blank">Commit 1</a>

<details>

<summary>Solution</summary>

Over 500 files changed. But mostly in the `docs` directory and mostly whitespace changes. It would be better to maintain consistent formatting from the start, but this commit is <b>not very likely to create merge conflicts</b>.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/8b14c4ef" target="_blank">Commit 2</a>

<details>

<summary>Solution</summary>

Many changes throughout the codebase. This <b>may raise merge conflicts</b> when attempting to integrate changes from another branch.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/1d18548d" target="_blank">Commit 3</a>

<details>

<summary>Solution</summary>

Many files changed, but mostly "dead code". This is <b>unlikely to raise merge conflicts</b>.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/689b7603" target="_blank">Commit 4</a>

<details>

<summary>Solution</summary>

Many changes (+- 6,000 lines) in many central parts of the codebase. This has a <b>very high probability of creating merge conflicts</b>. Before introducing such fundamental changes, it makes sense to complete and merge all parallel development in branches. A maintainer who adds such a substantial change without notifying other contributors would be reckless. If a contributor suggested to merge such a change, it would probably be rejected.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/5142f4db641252e2bd667752cf3a9d7ae54e7cfa" target="_blank">Commit 5</a>

<details>

<summary>Solution</summary>

Single line change in a config file. <b>Very unlikely to create a merge conflict</b>

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/b52f52e94c2685920bd46effbac8b75dca7a04a2" target="_blank">Commit 6</a>

<details>

<summary>Solution</summary>

Changes in a lock file that was generated by some algorithm. In this case, it could be problematic to resolve merge conflicts manually. It would be necessary to understand what generates the file and check whether it the process can be rerun when merging branches.

</details>

<div style="border: 2px solid #ff9800; padding: 10px; background-color: #ffe0b2; color: #e65100; border-radius: 5px; width: 730px; margin: 20px;">
    <strong>Warning: Misleading Assumption!</strong> <br/>
    <p>Working on a separate Git branch can create the illusion that you can radically reorganize the codebase without any consequences. While it's true that changes made in a branch are isolated, remember that these changes will eventually be merged into the main codebase. If you drastically reorganize files or the structure, it could create significant merge conflicts, and disrupt team workflows.</p>
    <p><strong>Catch yourself if you're thinking:</strong> "I'm on my own branch, so I'll just reorganize the codebase before creating my feature."</p>
    <p>Always consider how your changes will affect the project once merged, and coordinate with your team before undertaking major refactoring.</p>
</div>

---

## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Git merging notebook - good work! 🎈🎉

In this notebook, we have learned to

- Prevent merge conflicts from happening
- Resolve merge conflicts once they occur

Remember to delete your codespace [here](https://github.com/codespaces){: target="_blank"} (see [instructions](codespaces.ipynb)).
