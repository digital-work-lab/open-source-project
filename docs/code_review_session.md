---
layout: default
title: "Code review session"
nav_exclude: true
nav_order: 4
---

# Preparation

Announce the date and use Doodle to assign groups.

Determine group matching:
- X-Y
- Y-Z

- Print evaluation sheets (prefill with code evaluation).

https://digital-work-lab.github.io/open-source-project/docs/teaching_notes.html#week-12-code-review-session

- Print collaboration survey.

https://github.com/digital-work-lab/git-collaboration/tree/main/Evaluation

- Summarize code changes for the feedback session.

# Session

Ask students to switch during the code review, allowing them to review the parts they worked on. Adjust based on the situation (if students are very quiet or do not contribute).

Code review session:
- Ask students to read the code (What does it do?).
- Ask students to rewrite the code.
- Ask students to find where methods are defined (in other parts of the codebase).
- Ask students how they would debug (Scenario: This method does not behave as expected. How would you debug it?).

Ask students to write feedback (send it to me via email) but submit it in the evening without revealing which topic they worked on, to avoid the possibility of testing the same project twice.

Questions (reflection):
- Generally: Why did you merge into main in your fork and start the pull request from main instead of your feature branch?
- If we were to design a generic API class, what methods would we need to implement?
- What are the limitations of an API that should be checked for every SearchSource that we implemented?

# Evaluation

Have students complete the collaboration survey.

Take a short break to discuss with the team.

Do not announce grades or provide feedback.

Our feedback:
- Explain code changes (local).

You have completed the project, and there is nothing more you need to do for it. However, you can continue if you would like to.

TBD: Is the branching strategy reasonable? Can we check it during or after the project? What do students think?

# After the sessions

Document the grades and comments.

Commit and push the changes from repositories at /home/gerit/ownCloud/projects/Project_OSD_WS/wip/groups_ss24.
