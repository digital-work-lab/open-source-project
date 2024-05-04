Check project status:
```shell
git status
```
The result can look like this:
```
On branch main
Your branch is up to date with 'origin/main'.
nothing to commit, working tree clean
```
Check the `git status` between each command
```
git status             
```
The result can look like this:
```
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   README.md
```
To create the commit, we run
```
git commit -m 'add contributor'
```
Git patches (i.e., files containing changes):
```
git apply ../git-tutorial-example/setup.patch
git status                                   # See which files were changed
git add .                                    # Add all changes
git commit -m 'Add code'                     # Create the first commit (version of the project)
```
To view the last commits run:
```
git log
git log --graph				 			# view log as graph
git log --graph --abbrev-commit --pretty=oneline --decorate	# view log as a pretty and compact looking graph
```
To analyze the specific changes, open `gitk` (GUI requires Tk windowing toolkit):
```
gitk
```
Add *only* the changes in lines related to the `...` method and the `...` parameter
```
git add -p colrev/dataset.py            # Add specific lines of code from the colrev/dataset.py
                                        # using y/n to add or skip (confirming with ENTER)
gitk                                    # Check whether the correct lines were added
```
git branch (overview) / git checkout -b feature (-b not necessary for existing branches)
```
git checkout commit-id
```
Retrieve a remote repository based on a URL (instead of initializing it)
``git clone URL``
Retrieve changes from the remote repository
``git pull``
Provide changes to the remote repository
``git push`` 
Authentication:
```
ssh-keygen -t ed25519 -C "yourname@domain.name"     # Enter your email skip the rest (ENTER)
cat ~/.ssh/id_                                      # Instead of pressing ENTER, press TAB to auto-complete
                                                    # select the public keyfile (ending with .pub)
```
With the authentication set up, it should work:
```
git push                        # Should successfully push the repository to the remote.
```
Clone the repository:
```
git clone URL 
```

Git conventions: 
git commit messages:
<type>[optional scope]: <description>
[optional body]
[optional footer(s)]

avoid large commits
do not commit code in comments or "todo" files (hints: git add -p ...)
