---
layout: default
title: "Git branching"
parent: "Week 2: Git"
nav_order: 2
has_toc: true
---

# Exercise notebook: Git branching

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><img src="img/iconmonstr-certificate-6.svg" alt="Edit" width="16" height="16">  The notebook builds on our peer-reviewed <a href="https://digital-work-lab.github.io/rethink-git-teaching/">pedagogical foundations</a>. The interactive visualization and tutorial are based on the amazing <a href="https://github.com/pcottle/learnGitBranching">learnGitBranching</a> repository.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/practice-git/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/practice-git/edit/main/notebooks/git_committing.ipynb" target="_blank">suggestions</a> on this notebook!</p>

---

<div style="border-left: 4px solid #026e57; background-color: #d0f0e4; padding: 15px; margin: 10px 0; color: #026e57; border-radius: 5px; width:800px;">
    <strong>Concepts: Git branching</strong> <br><br>The slides explaining Git branching are <a href="https://digital-work-lab.github.io/open-source-project/output/02-git.html#6" target="_blank">here</a>.
</div>

<br>

With this notebook, you can practice branching in Git.

| Practice | Label                                       | Time (min) |
|----------|---------------------------------------------|------------|
|  1       | [Commit, branch, merge, rebase](#basics)    | 23         |
|  2       | [Branching strategies](#branch)             |  5         |
|  3       | [Merge methods](#merge)                     | 40         |
|  4       | [Wrap-up](#wrap-up)                         | 2          |
|          | **Overall**                                 | **70**     |

<img src="img/iconmonstr-help-6.svg" alt="Edit" width="12" height="12"> We are here to help if errors or questions come up!

<br>

---

## Part 1: Commit, branch, merge, rebase <a id="basics"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We have covered <code>git commit</code>, as well as <code>git branch</code>, <code>git switch</code>, and <code>git merge</code> operations in the lecture.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: To practice branching and manipulating the Git graph, complete level 1 (introduction) of the <a href="https://learngitbranching.js.org/?locale=en_EN">learngitbranching</a> tutorial.</p>

Hints:

- You can always type `undo` to undo the last command
- You can run `git commit` without specifying a commit message.

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The following commands produce this particular graph:</p>

```text
1:
git commit
git commit
2:
git branch bugFix
git checkout bugFix
3:
git branch bugFix
git checkout bugFix
git commit -m "Commit c2 on bugFix"
git checkout main
git commit -m "Commit c3 on main"
git merge bugFix -m "Merge bugFix into main"
4:
git checkout -b bugFix
git commit -m "Commit c2 on bugFix"
git checkout main
git commit -m "Commit c3 on main"
git checkout bugFix
git rebase main

```
</details>


<!--
To start the tutorial, run the following code cell and confirm the environment.
from IPython.display import IFrame

IFrame('https://learngitbranching.js.org/', width=1400, height=800)
-->


### Optional Challenge

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">If you have completed Part 1 quickly, you may continue practicing with the following challenge.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: To continue practicing, create the following tree, which resembles a typical setup of git branches. To do this, you can open <a href="https://learngitbranching.js.org/?locale=en_EN">learngitbranching</a> in a separate window.</p>

<img src="img/git-branches.png" style="width: 600px;" alt="Git branches"/>

<div style="clear: both;"></div>

<br>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The following commands produce this particular graph:</p>

```text
git commit
git commit
git checkout c1
git checkout-b hotfix
git commit
git checkout main
git merge hotfix
git checkout c1
git checkout -b dev
git commit
git commit
git checkout c6
git checkout -b feature
git commit
git commit
git checkout dev
git merge feature
git checkout main
git merge dev

```
</details>


## Part 2: Branching strategies <a id="branch"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Analyze the Git graph with the different branches. Explain what happens as the project progresses.</p>

<!--
- Branching strategies (have students examine repositories with different branching strategies)
https://tilburgsciencehub.com/topics/automation/version-control/advanced-git/git-branching-strategies/
-->

<img src="img/git-flow.png" width="800"/>

<div style="clear:both;"></div>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Solution</b></p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- The project has two parallel branches: <b>main</b> and <b>develop</b>. <b>main</b> has stable releases and urgent hotfixes (e.g., to fix bugs).</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- The <b>development</b> branch contains the development activity, more complex tasks are completed in separate <b>feature branches</b> (one has been merged, another may be under development or be stalled.) Hotfixes are also integrated into the development branch.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- To release new versions, the developers create a branch from <b>develop</b>, do some pre-release work, and eventually merge it into main.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- This setup ensures that the main branch is stable and not affected by untested code.</p>

</details>

## Part 3: Merge methods <a id="merge"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In this part, we focus on different methods to integrate changes from one branch into another (aka. "merge methods").</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">When running <code>git merge other-branch</code>, there are two options:</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- If two branches have <b>not diverged</b>, Git will perform a <b>fast-forward merge</b>:</p>

<img src="img/fast-forward-merge.gif" width="800px">

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- A more common case is when two branches have <b>diverged</b>, i.e., each branch has commits that the other branch does not have. In this case, Git will create a merge commit:</p>

<img src="img/merge-commit.gif" width="800px">

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">In addition to git merge, users also have the option to <b>rebase</b> changes.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">This preserves a <b>linear</b> version history* in the target branch instead of cluttering it with an array of merge commits:</p>

<!-- https://www.atlassian.com/git/tutorials/merging-vs-rebasing -->

<img src="img/merge-rebase.gif" width="800px">

<!-- 
- Squash the changes (not available as a learngitbranching animation)

Note: GitHub offers these options to merge pull requests:

<img src="img/github-pull-request.png" width="800px">
-->

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">There is another option: to <b>squash</b> changes from another branch. This effectively combines all changes from the other branch in a single commit, which is added on top of the target branch.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">We will now practice the different methods in a real Git repository.</p>

<div style="border: 2px solid #ff9800; padding: 10px; background-color: #ffe0b2; color: #e65100; border-radius: 5px; display: inline-block; width: fit-content; width:800px;">
    <strong>Important:</strong> Make sure to copy the commands and enter them in the shell as shown in the screenshot. It is not possible to run the cells in this notebook.
    <div style="clear: both;"></div>
    <img src="img/codespace-shell.png" width="800"/>
</div>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Clone the CoLRev repository and set up the <code>quality_model_docs</code> branch, using the following commands.</p>

<div style="border: 2px solid #03a9f4; padding: 10px; background-color: #b3e5fc; color: #01579b; border-radius: 5px; display: inline-block; width: 800px;">
    <strong>Info</strong> The last command will reopen the codespace window and add the new project to the explorer sidebar. You will have to navigate to this notebook again.
</div>


```python
cd /workspaces && git clone https://github.com/CoLRev-Environment/colrev
code -a /workspaces/colrev
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">After the restart of your Codespace, complete the setup.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The <b>colrev</b> repository should now be displayed in the Explorer (on the left).</p>


```python
cd /workspaces/colrev
git checkout 108d278e8d01a65c5128c4a880247f0272896059
git switch -c quality_model_docs
# Remove the origin for better readability of the Git viewer
git remote remove origin
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Go through the following options, and run the commands. Take notes on the Git graph, i.e., the structure and IDs of commits, by completing the three Git graphs (you can open the page as a <a href="img/overview-task.pdf">PDF</a>):</p>

<img src="img/overview-task.png" width="800"/>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To analyze the specific changes, open the Git GUI:</p>

<img src="img/codespace-git-viewer-rebase.png" width="800"/>

### Option 1: Merge commit


```python
git switch main
git reset --hard  6f4299bdb0551c680a97dbe04b39dee51bcd0556
git merge quality_model_docs
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Wait until the Git viewer is refreshed to display the merge commit and extract the commit SHAs.</p>

### Option 2: Rebase


```python
git switch main
git reset --hard  6f4299bdb0551c680a97dbe04b39dee51bcd0556
git switch quality_model_docs
git rebase main
git switch main
git merge quality_model_docs
```

### Option 3: Squash


```python
git switch main
git reset --hard  6f4299bdb0551c680a97dbe04b39dee51bcd0556
git merge --squash quality_model_docs
git commit -n -m 'update docs for quality_model'
```

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Task</b>: Compare the three Git graphs and the commit IDs. What are the differences between the three methods in terms of the contents of commits and their metadata?</p>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Solution</b></p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- In method 1 (merge commit), there is one merge commit with two predecessors.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- In method 2 (rebase), the individual commits from the quality branch are "replayed" on top of the main branch.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- In method 3 (squash), all changes from the original quality branch are combined in a single commit, which is added on top of the main branch.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- The contents of the last commit are identical across all three methods.</p>
<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">- Each of the new commits has your account as the author, and the current date.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Note: All three methods change the state of the `main` branch. None changes the state of the `quality` branch. The commit-IDs in your solution will differ.</p>

<img src="img/overview-task_solution.png" width="800"/>

</details>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Question</b>: Why does the merge commit always have a different ID if another student creates it or if you run the same commands a few seconds later?</p>

<details><summary {style='color:green;font-weight:bold'}>Check</summary>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Answer</b></p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">The commit object always contains the commit author and date. If they are different, Git generates a different commit SHA from the content and metadata.</p>

</details>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Note</b>: You can use the merge methods in a Codespace environment (as you just did), in a local Git repository, and even online on GitHub:</p>

<img src="img/pull-request-options.png" width="800"/>

## Wrap-up  <a id="wrap-up"></a>

<div style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">


<p>🎉🎈 You have completed the Git branching notebook - good work! 🎈🎉</p>

<p>In this notebook, we have learned</p>

<ul>
<li>To create a given Git graph using the <code>git commit</code>, <code>git branch</code>, <code>git switch</code>, and <code>git merge</code> commands</li>
<li>To explain typical branching strategies</li>
<li>The differences between merge commits, rebases, and squashed merges</li>
</ul>

</div>

