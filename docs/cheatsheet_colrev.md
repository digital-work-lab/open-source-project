# Cheatsheet for colrev package development

1. Verify that commands are executed in the right environment

Currently, we recommend Linux machines, the Windows-Subsystem for Linux, or GitHub codespaces (see https://colrev-environment.github.io/colrev/dev_docs/setup.html)
All directories must be set up in the same environment and commands (colrev ..., git ...) must be run in this environment.

2. Set up separate data and colrev directory

Data directory: either an empty directory or a directory containing the `settings.json` file (see [example](https://github.com/CoLRev-Environment/example){: target="_blank"})
CoLRev directory: contains the `pyproject.toml` file (see [colrev](https://github.com/CoLRev-Environment/colrev){: target="_blank"})

ls/cd/...
visual-studio code...

3. Verify that CoLRev commands are executed from the right directory and branch

pip show colrev
pip install -e .

git branch / switch
