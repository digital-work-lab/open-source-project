---
layout: default
title: "Teaching notes"
nav_exclude: true
has_toc: true
search_exclude: true
---

# Teaching notes

{: .info }
> **Info**
> The teaching notes include materials for the instructor and teaching assistants.

| **Week** | **Duration** | **Topic**        | **Preparation**                      | **Session Notes**                                          |
|---------|--------------|-------------------|--------------------------------------|------------------------------------------------------------|
| 1       | 90 min       | Topics            | [Preparation](#topics)               | [Session notes](week_1_teaching_notes.html)                |
| 2       | 180 min      | Git               | [Preparation](#git)                  | [Session notes](week_2_git_teaching_notes.html)            |
| 3       | 2x180 min    | Python            | [Preparation](#python)               | [Session notes](week_3_python_teaching_notes.html)         |
| 4       | -            | Group-work        | -                                    |                                                            |
| 5       | 90 min       | Best Practices    | [Preparation](#best-practices)       | [Session notes](week_5_best_practices_teaching_notes.html) |
| 6-11    | -            | Group-work        | -                                    |                                                            |
| 12      | Flexible     | Code Review       | [Preparation](#code-review)          | [Session notes](week_12_code_review_teaching_notes.html)   |


TBD: [Merging Survey](../assets/Merging_survey.docx)

## Preparation

- [ ] Update dates and rooms for sessions
- [ ] Update the rating average in the badge (change the badge-link on index.md) and participation
- [ ] Check whether `pre-commit run --all` runs without errors in Codespaces

## Week 1: Introduction, topics, and groups <a id="topics"></a>

VC post:

> Sehr geehrte Studierende,
> 
> herzlich willkommen zum WI-Projekt der Juniorprofessur für Digital Work.
> 
> Sie finden alle administrativen Informationen sowie Unterlagen hier im VC-Kurs. Bitte beachten Sie, dass sämtliche schriftliche Kommunikation sowie alle Informationen hier im VC-Kurs erfolgt bzw. zur Verfügung gestellt wird.
> 
> Bei Fragen zur Veranstaltung können Sie sich gern an mich (gerit.wagner@uni-bamberg.de) wenden.
> 
> Ich wünsche Ihnen eine erfolgreiche Veranstaltung.
> 
> Mit besten Grüßen
> 
> Gerit Wagner

VC post (advertise the project in the lecture):

> Liebe Studierende,
> 
> ich hoffe, Sie hatten nach den Klausuren eine erholsame Zeit und sind wieder gut im Semester angekommen.
> 
> Im aktuellen Semester (sowie im kommenden Sommersemester) biete ich ein WI-Projekt an, bei dem wir mit Python, git und dem GitHub Open-Source Workflow arbeiten. Wenn Sie das WI-Projekt noch nicht belegt haben, können Sie gerne noch kurzfristig dazukommen. Mit git und GitHub sind Sie ja schon vertraut und die Einführung in Python findet nächste Woche statt (Dienstag, 28.10.2024, 08:00 – 12:00 Uhr (WE5/01.003), Donnerstag, 30.10.2024, 14:00 – 18:00 Uhr (WE5/01.003)). Schicken Sie mir bei Interesse gerne eine E-Mail.
> 
> Alles Gute für das WS 24/25!
> 
> Mit besten Grüßen
> 
> Gerit Wagner

## Week 2: Introduction to Git  <a id="git"></a>

**In preparation of the session**: 

- [ ] Check whether the `rec_dict.patch` applies (`git diff > rec_dict.patch`)
- [ ] Print some of the [overviews](https://github.com/digital-work-lab/practice-git/blob/main/notebooks/img/overview-task.pdf){: target="_blank"}


VC post (21.10.25)

> Liebe Studierende,
> 
> wir möchten Sie daran erinnern, dass Sie bis zur nächsten Session einen Kommentar in den Issue-Feeds hinterlassen.
>
> Ihr Interesse an den Teilthemen können Sie hier im Diskussionsfeeds signalisieren: https://github.com/CoLRev-Environment/colrev/milestone/8.
> 
> Ein einfaches “I would like to work on this issue 🙋” wäre ausreichend.
> 
> Bei Fragen können wir gerne weiterhelfen.
> 
> Mit besten Grüßen
> 
> Ihr Digital Work Team


## Week 3: Introduction to Python <a id="python"></a>

Prepare the `tutorial_YYYY_MM` branch and update the commit-ids in the slides:

```
git branch tutorial_YYYY_MM
git switch tutorial_OLD
# get commit-ids (first and last)
git switch tutorial_YYYY_MM
git cherry-pick ab3715e85fb0219081ff60f6e4918953066bfe6a^..12c2d1730564b99fa11fbb618e92e2b67751e34c
# when the poetry.lock/pyproject.toml fail: checkout --ours poetry.lock/pyprojec.toml, poetry add bibtexparser
```

Keep a copy of branch (assign a `tutorial_backup` branch to the last commit)

Create a list of topics and students (first/second choice) and facilitate issue discussions (students forming groups), e.g., with posts like this:

> Thank you, @pmao0907 and @MingxinJiang for offering to switch to #360 . This leaves a group of 3 with @CelinaSchwarz , @omanovb and @QuynhMaiNguyen 👍 Can you select a group lead, fork the repository and link your repository in this feed?

<!-- 

VC post (21.10.24)

> Liebe Studierende,
> 
> zur Vorbereitung unserer Session am Dienstag möchten wir Sie kurz erinnern, dass Sie eine eingerichtete Programmierumgebung benötigen. Wie auf den letzten Slides aus der ersten Session beschrieben, sollten Git, Python und ColRev installiert sein. Der Befehl "colrev init --example" sollte ohne Fehler ausgeführt werden. Es wäre gut, wenn Sie dies auf Ihrem Arbeitsgrät, auf GitHub Codespaces oder einem CIP-Pool Rechner ausprobieren.
>
> Bei Fragen helfen wir gerne weiter. Um Probleme bei der Einrichtung der Programmierumgebung zu unterstützen, bieten wir zudem am "Tag" (Datum) eine offene Session von ... bis ... Uhr an. Kommen Sie bei Bedarf gerne im Büro (WE5/01.081) vorbei!
>
> Die eingerichtete Programmierumgebung muss bis zum ersten Python Termin funktionsfähig sein, sonst können wir in den folgenden zwei Sessions nicht richtig arbeiten, deshalb bitten wir Sie frühzeitig damit anzufangen und das Angebot des Lehrsthls anzunehmen.
> 
> Wenn Sie sich im Vorfeld noch mit der Python-Syntax vertraut machen möchten, finden Sie hier ein gutes Tutorial: https://www.codecademy.com/learn/learn-python-3
> 
> Wir freue uns auf die kommende Session mit Ihnen!
> 
> Beste Grüße & ein schönes Wochenende
> 
> Ihr Digital Work Team

-->

## Week 4: Group work (no session)

Distribute the [survey](../assets/Interim_Project_Assessment_Survey.docx) via VC, asking students to upload it (upload box).

TODO: reminder: by now, you should have a code skeleton, should be able to retrieve records from the api - make an appointment if you don't.

VC post (10.11.24)
Reminder for merge: 10.11. (linking to resources)

> Liebe Studierende,
>
> hier noch eine Erinnerung an den Merge, den Sie bis zum 10. November durch führen sollen.
>
> Dieser Merge und Ihre Erfahrung (Schwierigkeiten oder ähnliches) sind wichtig, um die Best Practice Session am 15. Mai bestmöglichst gestalten zu können.
>
> Wir werden am 10. Mai noch eine Umfrage in den VC stellen (weitere Informationen folgen noch), wo Sie uns Informationen zu den Schwierigkeiten im bisherigen Projekt Verlauf geben.
>
> Viele Grüße und weiterhin viel Erfolg im Projekt,
> Laureen Thurner

VC post (10.11.24)

> Liebe Studierende,
>
> zur Vorbereitung der Best Practice Session würden wir Sie bitten, die Umfrage die im VC gepostet wurde herunterzuladen und auszufüllen.
>
> Nachdem Sie die Umfrage ausgefüllt haben, bitten wir Sie diese bis zum 12.11 im PDF Format hochzuladen.
>
> Somit können wir in der Session gezielt auf Ihre Fragen und Herausforderungen eingehen.
>
> Wir freuen uns auf die nächste Session mit Ihnen am 13. November!
>
> Beste Grüße und eine erfolgreiche Woche
>
> Ihr Digital Work Team
> 

## Week 5: Best practice session  <a id="best-practices"></a>

TBD: Make cheatsheets ([git](../teaching_notes/cheatsheet_git.md), [python](../teaching_notes/cheatsheet_python.md), [colrev package development](../teaching_notes/cheatsheet_colrev.md)) available?

## Week 7

VC post (27.11.24)

> Liebe Studierende,
>
> wir möchten Sie nochmals auf das Angebot der Hacking Sessions verweisen.
>
> Diese können Sie einfach unter diesem Link buchen.
>
> Beste Grüße und weiterhin Viel Erfolg beim Projekt
>
> Ihr Digital Work Team


## Week 10

VC post (16.12.24)

> Liebe Studierende,
> 
> ich möchte Sie kurz an die Abgabe am 20. Dezember erinnern. Um Ihren Code einzureichen, müssten Sie wie besprochen einen Pull Request erstellen.
> 
> Dieser Code kann nach dem erstellen des Pull Requests noch geändert werden bis spätestens 12. Januar, ab diesem Zeitpunkt werden Änderungen nicht mehr evaluiert.
>
> Zudem haben wir den Termin für die Code-Review Session festgelegt. Diese findet am TBA statt. Die genaue Uhrzeit können Sie diese Woche selbst in einer Umfrage hier im VC buchen. Bitte beachten Sie, dass nur ein Mitglied pro Team einen Slot bucht, damit alle Termine eingehalten werden können. Die Code-Review Session wird inklusive des anschließenden Gesprächs maximal 1 Stunde dauern.
> 
> Beste Grüße und viel Erfolg beim Endspurt
> 
> Laureen Thurner


> Updates, Evaluation und bevorstehende Termine für unser Projekt
> 
> Liebe Studierende,
> 
> vielen Dank für Ihre Arbeit am Projekt und die Pull-Requests. Ich habe zum Abschluss jew. ein paar Verbesserungsvorschläge gemacht, die schnell umsetzbar sein sollten und teilweise schon erledigt wurden.
> 
> Zur Erinnerung: Die letzte Session findet am 9. Juli mit dem Code-Review statt. Fast alle Gruppen haben bereits einen Termin über VC gebucht.
> 
> Die Evaluation des WI-Projekts sollten Sie per E-Mail erhalten haben. Wir hoffen sehr, dass Sie mit dem Projekt zufrieden waren und dass Sie sich an der Evaluation beteiligen.
> 
> Parallel dazu haben wir Verbesserungsvorschläge für das kommende Semester im folgenden Issue gesammelt:
> 
> https://github.com/digital-work-lab/open-source-project/issues/8.
> 
> Ich lade Sie herzlich ein, weitere Ideen und Vorschläge dort zu ergänzen.
> 
> Heute findet zudem die Choose-a-Chair Messe statt, bei der wir die Möglichkeit haben, persönlich ins Gespräch zu kommen, zum Beispiel über Abschlussarbeiten und unseren neuen "Call-for-Theses":
> 
> https://digital-work-lab.github.io/theses/docs/topics.html
> 
> Mit besten Grüßen
> 
> Gerit Wagner

## Week 12: Code review session  <a id="code-review"></a>


- Print and pre-fill [evaluation sheets](https://github.com/digital-work-lab/open-source-project/tree/main/assets/evaluation){: target="_blank"}
- Check whether HDMI/... connectors are required (provide them/ask students to bring them to the session)
- If students test the code in Codespaces, the workspace should be started early.
- If projects require access tokens (API keys), provide them to the group
- To add students as contributors, comment on the pull-request (see [example](https://github.com/CoLRev-Environment/colrev/pull/199){: target="_blank"}) and merge them into the feature branch (pull request) instead of main:

```
@all-contributors
please add @student_github_id for code. 
please add @student_github_id for code.
```

- Run `colrev env --update_package_list` and update documentation before merging
- Add student contributors to the [hall of fame](hall_of_fame.html)
- Remind students to complete the evaluation.
- Link the [feedback issue](https://github.com/digital-work-lab/open-source-project/issues/8){: target="_blank"} in VC, explain our process of [evaluation and improvement](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.02.courses.html){: target="_blank"} - starting from our [goals](https://digital-work-lab.github.io/handbook/docs/10-lab/10_processes/10.01.goals.html){: target="_blank"}, mention our teaching cases, and encourage students to contribute their feedback

- For implementing the feedback from the pull request, we should ensure that efforts are fair between teams (e.g., selecting issues to address or add suggestions)
- Ask students: interested in observing the merge and release process?

> Liebe Studierende,
> 
> ich möchte Ihnen noch ein paar Informationen zur Code-Review Session zukommen lassen. Der Ablauf ist auf den Folien beschrieben und über folgenden Link zugänglich:
> 
> https://digital-work-lab.github.io/open-source-project/output/06-code_review.html
> 
> Grundsätzlich ist die Idee, die Maintainer-Perspektive einzunehmen und Ihr Wissen aus dem Projekt auf ein sehr ähnliches Thema zu übertragen.
> 
> Idealerweise können Sie dabei Ihre erworbenen Kenntnisse (Git, Python, CoLRev) zeigen und durch den Perspektivwechsel ergänzen. Zudem können Sie am Ende konstruktive Vorschläge zur Verbesserung des zugelosten Projekts einbringen. Die entsprechende Zuordnung der Gruppen/Pull-Request geben wir in der Session bekannt.
> 
> Wir begleiten die Session, indem wir bei Bedarf Tipps geben oder Fragen stellen. Die Session findet im ISM Labor 1.094 statt. Die Zuordnung der Gruppen zu Terminen wurde über die VC-Abstimmung abgeschlossen:
> 
> -  9.00 - 10.00 Uhr: XXXXXXXXXXXXXXXXXx
> 
> Es wäre hilfreich, wenn Sie einen HDMI-fähigen Laptop bzw. einen entsprechenden Adapter mitbringen.
> 
> Ich freue mich auf den erfolgreichen Projektabschluss mit Ihnen!
> 
> Mit besten Grüßen
> 
> Gerit Wagner

<!-- 
Liebe Studierende,

die Scheine liegen abholbereit im Sekretariat (WE5/01.029) bei Frau Gehringer. Sie können Montag/Mittwoch/Donnerstag zwischen 10 und 13 Uhr bzw. Dienstag zwischen 11 und 13 Uhr abgeholt werden. Die Scheine können bei Herrn Kipphan (WE5/01.078) eingebracht werden (Montag 13-15 Uhr, Mittwoch 9.30-11.30 und 13-15 Uhr).

Die ersten Pull-Requests sind gemerged. Sie können gerne einen Blick auf meine abschließenden Änderungen werfen. Sprechen Sie mich bei Interesse an der Nutzung oder Weiterentwicklung von CoLRev, z.B. im Rahmen einer Abschlussarbeit, gerne an!

Die Evaluation sollten Sie ebenfalls erhalten haben - ich würde mich freuen, wenn Sie sich die Zeit nehmen und mir ein Feedback zur Veranstaltung geben.

Mit den besten Wünschen für eine erfolgreiche Klausurenzeit und eine erholsame vorlesungsfreie Zeit,

Gerit Wagner
-->
