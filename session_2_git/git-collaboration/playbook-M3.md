# Playbook M3: Merge pull requests and conclude the session


## Merge the pull requests

- Merge the pull requests one-by-one (button at the bottom of the pull request pages)
- Check whether the `nav-order` value is ok
- Try different types of merges (merge commit, rebase, squash) and explain the differences:

    - A `merge commit` creates a new commit with the main branch and the pull request branch as parents.
    - A `rebase and merge` moves the commits of the pull request branch to the main branch (there will be no "merge commit").
    - A `squash` merges the commits of the pull request branch into a single commit.

- Check the commit history of the main branch to see the differences between the merge types.

- Show that merging branches that are assigned to issues also closes the issue

## Optional steps (if time permits)

- Create an issue template (for bug reports): Settings -> Issues -> Issue templates -> Commit (and show the file that was created under `.github/ISSUE_TEMPLATE`)
- Create a release: tags -> create a new release -> create tag upon release (by entering a tag-name in the "Choose a tag" field) - show the release on the main page
- Mention the license file (`LICENSE.md`), which is also displayed on the right side of the main page

## Conclude the session

- Give a short recap of the key elements of the GitHub/Open-Source workflow that were covered in this session.

<!-- 
Merge the pull-requests and close the issues.
https://github.blog/2013-05-14-closing-issues-via-pull-requests/

- add a license badge
https://gist.github.com/lukas-h/2a5d00690736b4c3a7ba

https://github.com/orgs/community/discussions/5634
-->