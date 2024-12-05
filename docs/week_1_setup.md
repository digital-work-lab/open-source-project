---
layout: default
title: "Setup check"
parent: "Week 1: Topics"
nav_order: 3
has_toc: true
---

# Setup check

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_1_setup.md" target="_blank">suggestions</a> on this notebook!

---

In this exercise, you will run a series of checks to verify that your programming environment has been set up correctly.
**Note:** The focus is not on setting up the environment (it is preinstalled in Codespaces).
Instead, this exercise ensures everything is configured and functioning as expected.



## Part 1: Git Configuration

1. **Check your global Git configuration:**

Verify that your Git name and email are correctly configured.

```bash
git config --global user.name
git config --global user.email
```

Verify your Git credential helper:

```bash
git config --global credential.helper
```

## Part 2: Pre-commit Hook

Run all pre-commit hooks:

```bash
pre-commit run --all
```

Note any warnings or errors and resolve them if possible.

## Part 3: SSH Connection

Test your SSH connection to GitHub:

```bash
ssh -T git@github.com
```

A successful message should look like:

```bash
Hi <username>! You've successfully authenticated, but GitHub does not provide shell access.
```

## Part 4: Python Environment

Check the colrev package installation:

```bash
pip show colrev
```

Verify that the Location field points to the editable project location (e.g., /workspaces/<project-folder>). If not, the package might not be installed in editable mode.

## Part 5: System Information

Check your system’s PATH:

```bash
echo $PATH | grep :/home/codespace/.local/bin:
```

Confirm that /home/codespace/.local/bin is included in the PATH.

Print the current effective username:

```bash
whoami
```

Print system information (kernel and distro version):

```bash
uname -a
```

## Part 6: Docker Verification

Run a Docker test container:

```bash
docker run hello-world
```

Confirm that Docker runs successfully and outputs the "Hello from Docker!" message.