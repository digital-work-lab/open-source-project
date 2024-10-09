
- Apply code_skeleton.patch, endpoint_details.patch, and endpoint_details.patch
- Merge: each team member selects one:
    - merge-commit (switch to main branch beore) (analyze: gitk: two parent commits)
    - merge --rebase
    - merge --squash

compare the differences!

<!-- - Undo (team prefers to work with squash instead of merge-commits) -->

---

To collaborate with your team, you need a remote repository with shared access. To collaborate, you will need the following Git operations:

- ``git clone URL`` to retrieve a remote repository based on a URL (instead of initializing it)
- ``git pull`` to retrieve changes from the remote repository
- ``git push`` to provide changes to the remote repository

For the following tasks, you need ot [sign-up for Github](https://github.com/join){: target="_blank"}.

---

Go to Github and [create a new remote repository](https://github.com/new){: target="_blank"}: Enter ``test-repo`` as the name and press ``Create Repository``.

Now, we should be able to follow the instructions and push our local repository to the remote:

```
TODO : insert Code for push failure (authentication)
```

**Check**: Carefully read the error message.

 <!-- (one in each group may select a private repository). -->

---

We need to authenticate

```
ssh-keygen -t ed25519 -C "yourname@domain.name"     # Enter your email skip the rest (ENTER)
cat ~/.ssh/id_                                      # Instead of pressing ENTER, press TAB to auto-complete
                                                    # select the public keyfile (ending with .pub)
```

**Check**: The cat command should display something like
```
ssh-ed25519 AAAC3NZ****************SdH11lYh gerit.wagner@uni-bamberg.de
```

Next, add the ssh key in your GitHub settings (see [instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account){: target="_blank"}).

<!--
ask: do you know about symmetric/asymmetric (public/private) keys? -->

--- 

With the authentication set up, it should work:

```
git push                        # Should successfully push the repository to the remote.
```

**Check**: See whether your changes are available in the new Github repository.

---

Select one repository for the following tasks. Since the repository is public, the other team members can clone the repository:

```
git clone URL 
```

Next, **one-by-one**, 

- pull the latest version from the remote
- create a ``CONTRIBUTING.md`` file in the repository (if not available)
- add your name
- create a commit
- push the changes

To complete the last step, the owner of the repository has to invite the other two participants through the collaboration settings on the Github project page.

**Check**: There should be no conflicts because the order was strictly corrdinated (one-by-one). The main repository should have a ``CONTRIBUTING.md`` file with three names.

---

Next, we work on the project simultaneously, i.e., wait until all participants have created a commit before pushing the changes.

- Participant 1: adds a license file
- Participant 2: changes the order of names in the ``CONTRIBUTING.md`` file, putting his/her name first
- Participant 3: changes the order of names in the ``CONTRIBUTING.md`` file, putting his/her name first

**Check**: Once the three commits are created, take a moment to realize that participants 2 and 3 suggest contradictory changes to the same part of the code. Discuss how you would expect Git/Github to deal with this situation.

To continue, all three participants should run ``git push`` simultaneously. Check the results and try to make sense of it.

<!-- 
To https://github.com/geritwagner/test.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/geritwagner/test.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
 -->

---

The push should have worked for one participant (the one who was first), but not for the others.

When receiving the second push, the remote recognized that the changes do not extend the existing version history in a linear way. Instead, the last commits have the same parent and would replace each other. Per default, Git/Github does not remove commits or make arbitrary decisions on how to write the commit history. As a result, it asks the users who push changes that are non-linear (cannot be fast-forwarded) to reconcile the situation.

The other participants should run ``git pull --rebase``, which will attempt to write the local changes on top of the changes retrieved from the remote.

If the changes from participant 2 or 3 are available on the remote and pulled, the rebase should open a **merge conflict** for the other participant (who has suggested conflicting changes for the order of contributors).

Together, open the ``CONTRIBUTING.md`` file containing the conflict and resolve it by agreeing on a particular order of names and removing the markers afterwards. Save the file, create a commit, and push it to the remote.

**Check**: On the Github project website, you should now see all the (reconciled) changes.

Best practice: Pull frequently (don't let the local and remote version diverge too much), and use code formatters (pre-commit hooks).

<!-- means that git does not overwrite the work on the remote repository -->

---

- fork colrev
- create (activate) issues, assign them to users
- create branch/pull request on fork, merge on fork

---

Show how a pull-request to the colrev main repository would be opened.

<!-- 
Later/Potential extensions:

- reset to commit XY and force-push
- push a commit that conflicts with hooks/checks
- create pull requests between forks, activate issues (explain why they are deactivated by default in forks)
- try different types of merges (each participant/fork a different one):
    - merge
    - squash
    - rebase (analyze how they differ)
- activate an issue template

---

TBD: Maybe illustrate branches/git objects in a bit more detail?
https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell
 -->
