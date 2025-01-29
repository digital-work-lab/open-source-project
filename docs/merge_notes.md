---
layout: default
title: "Merge notes"
nav_exclude: true
has_toc: true
search_exclude: true
---

# Merge notes

- [ ] Review and revise code
- [ ] Merge pull requests. Run `colrev env --update_package_list` and update documentation before merging
- [ ] To add students as contributors, comment on the pull request (see [example](https://github.com/CoLRev-Environment/colrev/pull/199){: target="_blank"}) and merge them into the feature branch (pull request) instead of main:

```
@all-contributors please add @student_github_id for code. 
```
Copy the changes to the student's pull request and discard the all-contributors branch (otherwise, merge the pull requests into `main` - the all-contributors pull request cannot be redirected to the student's pull request, which originates from another repository/fork).

- [ ] Add student contributors to the [hall of fame](hall_of_fame.html)
- [ ] Close issue(s) in [CoLRev](https://github.com/CoLRev-Environment/colrev/issues) and update the [SearchSource Roadmap](https://github.com/CoLRev-Environment/colrev/issues/106)
