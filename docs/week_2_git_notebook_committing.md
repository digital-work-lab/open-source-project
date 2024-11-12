---
layout: default
title: "Git committing"
parent: "Week 2: Git"
nav_order: 3
has_toc: true
---

# Exercise notebook: Git committing

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

<img src="img/iconmonstr-certificate-6.svg" alt="Edit" width="16" height="16">  The notebook builds on our peer-reviewed <a href="iconmonstr-certificate-6.svg">pedagogical foundations</a>.

We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/practice-git/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/practice-git/edit/main/notebooks/git_committing.ipynb" target="_blank">suggestions</a> on this notebook!

---

<div style="border-left: 4px solid #026e57; background-color: #d0f0e4; padding: 15px; margin: 10px 0; color: #026e57; border-radius: 5px; width:800px;">
    <strong>Concepts: Git areas</strong> <br><br>The slides explaining the Git areas are <a href="https://digital-work-lab.github.io/open-source-project/output/02-git.html#10" target="_blank">here</a>.
</div>

<br>

With this notebook, you can practice committing changes in Git.

| Practice | Label                                             | Time (min) |
|----------|---------------------------------------------------|------------|
|  1       | [Clone the repository](#clone)                    | 5          |
|  2       | [Create, stage, and commit changes](#commit)      | 10         |
|  3       | [Undo committed changes](#undo)                   | 8          |
|  4       | [Create Atomic commits](#atomic)                  | 10         |
|  5       | [Undo changes (advanced)](#undo)                  | 5          |
|  6       | [Wrap-up](#wrap-up)                               |  2         |
|          | Overall                                           | 40         |

<img src="img/iconmonstr-help-6.svg" alt="Edit" width="12" height="12"> We are here to help if errors or questions come up!

<br>

---

<div style="border: 2px solid #ff9800; padding: 10px; background-color: #ffe0b2; color: #e65100; border-radius: 5px; display: inline-block; max-width: 800px; width: 100%;">
    <strong>Important:</strong> Make sure to copy the commands and enter them in the shell as shown in the screenshot. It is not possible to run the cells in this notebook.
    <div style="clear: both;"></div>
    <img src="img/codespace-shell.png" style="max-width: 100%; border-radius: 5px;">
</div>


## Part 1: Clone the repository <a id="clone"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In this part, we work with an existing project. To download the example, run the following commands:</p>


```python
cd /workspaces
git clone https://github.com/CoLRev-Environment/colrev
```

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The clone command should print something like the following (the number of objects may differ):</p>

```python

Cloning into 'colrev'...
remote: Counting objects: 100% (125/125), done.
remote: Total 22225 (delta 41), reused 54 (delta 27), pack-reused 22100
Receiving objects: 100% (22225/22225), 10.11 MiB | 2.37 MiB/s, done.
Resolving deltas: 100% (18519/18519), done.

```
</details>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The repository has been downloaded to our machine (i.e., the Codespace environment). Let's enter the directory and to check the status.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Note</b>: To create an empty git project, you would run <code>git init</code>.</p>

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block; width:800px;">
    <strong>Info</strong> The code -a ... command will reopen the codespace window and add the new project to the explorer sidebar. You will have to navigate to this notebook again.
</div>


```python
code -a /workspaces/colrev
```

<img src="img/codespace-reopen.png" width="820px"/>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The status command provides an overview of the current state of the project and the files in the three sections. Therefore, you will need to run <code>git status</code> regularly.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Note</b>: The comments after the hashtag (#) are ignored.</p>


```python

# Enter the directory of the colrev project
cd /workspaces/colrev
# Check the status of the project
git status
```

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The `git status` command should print something like the following:</p>

```python

On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The last line indicates that there are no changes in the staging area (nothing to commit). The working directory has the same content as the last version in the git repository (working tree clean).</p>

</details>

## Part 2: Create, stage, and commit changes <a id="commit"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Next, we modify files (state: <b>untracked</b>/<b>modified</b>), mark them to be in the next commit (state: <b>staged</b>) and create the first version (state: <b>committed</b>). This corresponds to the three sections of a Git project.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Open the <code>README.md</code> file in the colrev repository (<code>shift</code> + double click to open in a separate tab) and add your name to the project citation (<code># Citing CoLRev</code> section).</p>


```python
# Check the `git status` between each command
git status
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Open the <code>CONTRIBUTING.md</code> file and change it.</p>



<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The <code>git status</code> should now show two files with changes in the working directory (state: <b>modified</b>)</p>


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We decide that the changes in the <code>README.md</code> file should be <b>staged</b> for the next commit. The changes in the <code>CONTRIBUTING.md</code> file are no longer needed.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Use the commands suggested by <code>git status</code> to accomplish this.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">This means that changes in the README.md are <b>staged</b> (to be committed).</p>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

The `git status` should now display 

```python
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   README.md

```

</details>


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To <b>commit</b> the changes, we run</p>


```python
git commit -m 'add contributor'
```


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The <code>-m 'add contributor'</code> adds a short summary message, which is expected for every commit.</p>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

`git status` should reflect your expected state of files in the three Git sections.

</details>

## Part 3: Undo committed changes <a id="undo"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To undo the last commit, we can simply run:</p>


```python
git reset --soft HEAD~1
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">You should now have the <code>README.md</code> file in the staging area again.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Note</b>: the <code>HEAD~1</code> refers to the last commit.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Run <code>git status</code> to see the changes.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We decide to discard our changes.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Use the commands suggested by <code>git status</code> to do that.</p>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

The `git status` should show the following:

```
On branch main
nothing to commit, working tree clean
```

</details>

To analyze the specific changes, open the Git GUI:

<img src="img/codespace-git-viewer.png" width="820"/>

## Part 4: Create atomic commits <a id="atomic"></a>


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">It is good practice to create <b>atomic commits</b>, i.e., small changes that belong together. One should avoid large commits that modify many unrelated parts of the code base and pursue different objectives.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Analyze the following commits and discuss which ones are atomic and which ones combine changes that do not belong together (i.e., should be in separate commits).</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Also check the commit message (short summary at the beginning). Does the message clearly summarize the changes?</p>

<a href="https://github.com/CoLRev-Environment/colrev/commit/a0c9043784f9342136d2ab214513688769669199" target="_blank">Commit 1</a>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

**Solution**: Atomic commit, ok.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/5288e92083b6df546d7c8fd590df3e968a909114" target="_blank">Commit 2</a>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

**Solution**: Relatively atomic. There are a few changes beyond `compute_language()`. May be improved.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/ba08d4242f48ec96b4fa8cfd053ee3781e32231f" target="_blank">Commit 3</a>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

**Solution**: Many files changed. Changes not related to each other. Message refers to refactoring and testing, but the commit also adds functionality.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/ce9850f805a140692866970c92557833e6befa0b" target="_blank">Commit 4</a>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

**Solution**: Many files changed, but the changes belong together. ok.

</details>

<a href="https://github.com/CoLRev-Environment/colrev/commit/93fc7e851d2ba3fc95cc3190b6b71dc4a907c96b" target="_blank">Commit 5</a>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

**Solution**: Atomic commit, ok.

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">It is ok to combine functionality, tests, and docs that belong together in one commit!</p>

</details>


**Optional**: If you have the time, you may check the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/){: target="_blank"} specification.

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To create atomic commits, you may need to <b>add specific lines of code that should go into a commit</b>, leaving other changes in the working directory.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The changes are provided in the <code>rec_dict.patch</code> file, which must be placed in the project's working directory. To apply it, run:</p>


```python
# Suggests to rename the method but also introduces unrelated changes.
git apply /workspaces/practice-git/notebooks/rec_dict.patch
# Different files were modified by the patch
git status
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Use the Git GUI to check the changes that were introduced by the patch.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In the following, we would like to add <b>only</b> the changes in lines related to the <code>load_records_dict</code> method and the <code>skip_notification</code> parameter (using <code>-p</code> for a partial <code>git add</code>):</p>


```python
# Add specific lines of code from the colrev/dataset.py
# using y/n to add or skip (confirming with ENTER)
git add -p colrev/dataset.py
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Check whether the correct lines were added! Create a commit containing the relevant changes. Afterwards, discard the remaining changes.</p>

## Part 5: Undo changes (advanced) <a id="undo"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To <b>undo committed changes</b>, there several options:</p>

- Revert the commit, i.e., create a new commit to undo changes: `git revert COMMIT_SHA --no-edit`
- Undo the commit and leave the changes in the staging area: `git reset --soft COMMIT_SHA` (*)
- Stage changes, and run `git commit --amend` to modify the last commit (*)

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">If you have the time, try the different undo operations in the session.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">(*) Important: only amend commits that are not yet shared with the team. Otherwise, revert is preferred.</p>

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block; width:800px;">
    <strong>Info</strong> Once you have committed changes, Git takes takes care of the data and it is very hard to lose the data. Uncommitted data can be lost more easily. Therefore, commit often!<br><br> Even if you run <code>git reset --hard ...</code>, you can still recover commits using <code>git reflog</code>. Committed data will only be lost permanently if you run <code>git reflog expire --expire=now --all</code> and <code>git gc --prune=now --aggressive</code>. If the commits are already on GitHub, you would need <code>git push --force</code> and the changes may also be synchronized in other local repositories. <br><br>Avoid options like <code>--force</code>, <code>--hard</code>, or <code>--aggressive</code>. Use them only if you know what you are doing.
</div>

<br>

---

## Wrap-up  <a id="wrap-up"></a>

🎉🎈 You have completed the Git commit notebook - good work! 🎈🎉

In this notebook, we have learned to

- Clone a repository and check the `git status`
- Create, stage, and commit changes using `git add`, `git commit` and `git restore`
- Create atomic commits
- Undo changes
- Navigate VisualStudio Code on GitHub Codespaces

Remember to delete your codespace [here](https://github.com/codespaces){: target="_blank"} (see [instructions](codespaces.ipynb)).
