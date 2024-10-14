---
layout: default
title: "Week 5: Code review session (teaching notes)"
has_toc: true
nav_exclude: true
search_exclude: true
---

# Week 12: Code review session (teaching notes)

## Introduction:

- Key skill: managing complexity (keeping in mind that simple structures are often preferrable to artificial complexity)
- gute Abschlussquote
- komplexes Projekt (git/pre-commit hooks/Python/Python Pakete/CoLRev/...)
- Summarize best practices: code formatters, working in pull-requests, ...
- entsprechende Kompetenzen werden in der Bewertung berücksichtigt.
- Bewertung des praktischen Teils macht 70% aus
- Alle Gruppen haben im praktischen Teil sehr gut (1, ...) abgeschnitten
- Das schöne ist, dass Ihre Arbeit dem CoLRev Projekt zu Gute kommt und nicht einfach nur archiviert wird.

## Setup:

- Maintainer tasks: review PRs, but also take ownership for the project as a whole (guidelines for documentation, code quality, scope, contributors, community)

## Review session

- Group: use the beamer
- "think-aloud work"
- Timer: 15 - 10 - 5

### Notes on the process (overall: completed in 50-60 minutes)

How to pull remote branch from somebody else's repo

```
git remote add coworker git://path/to/coworkers/repo.git
git fetch coworker
git checkout --track coworker/foo
```

- If some of the students do not actively contribute, ask the group to switch (inactive students taking the lead on the laptop)
- Fetch/switch: clone from the right remote (forked) repository
- Remember to run pip install -e . (to actually execute code from the other group)

**TODO**: should be completed in groups of two

## Concluding Feedback

My feedback (code review) for students: results of code review (if any)
- separate file (demonstrate cursor)

Feedback session: Ask students for reflection and potential improvements

- Anything you would change/improve in the topic assignment procedure? Who thought it was too tough? Who liked it?
- How to use Git more effectively?
- Should I encourage students to use Cursor/GitHub copilot?



## After the session:

IMPORTANT: ask student / group separately for individual (under) performance
	Evaluation bei ungleichen Beiträgen:
	- HIWI: reinbitten, ggf. austreten
	- Gruppe ohne "underperformer": zur Gruppenleistung beigetragen?
	- "underperformer" allein:
		- Über Codeanalyse und Gruppeneinschätzung informieren
		- Codeanalyse verifizieren (Gelegenheit, konkrete Links nachzureichen) - möchten Sie die Möglichkeit nutzen?
		- Weiteres vorgehen: wir entscheiden über die Bewertung.


## Backup/Notes

- weitere Python ressources mitgeben (zB. how to build a ... with python) https://github.com/codecrafters-io/build-your-own-x?ref=hackernoon.com
