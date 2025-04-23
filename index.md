---
title: Home
layout: home
nav_order: 1
description: "Welcome"
permalink: /
---

# The Open-Source Project

<br>

{% assign total_average = 0 %}
{% assign count = 0 %}
{% assign total_students = 0 %}

{% for semester in site.data.data.semesters %}
  {% assign total_average = total_average | plus: semester.evaluation_average %}
  {% assign count = count | plus: 1 %}
  {% assign total_students = total_students | plus: semester.participants %}
{% endfor %}

{% assign average_of_averages = total_average | divided_by: count %}
{% assign rounded_avg_x10 = average_of_averages | times: 10 %}
{% assign rounded_avg_floor = rounded_avg_x10 | floor %}
{% assign average_of_averages_rounded = rounded_avg_floor | divided_by: 10.0 %}

<!-- ![Course Status](https://img.shields.io/badge/Current%20course-Winter%20semester%202024/25-yellow) -->
![Course Status](https://img.shields.io/badge/Upcoming%20course-Summer%20semester%202025-green)<br>
[![Level](https://img.shields.io/badge/Level-Bachelor-blue)](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)
[![Degree Program](https://img.shields.io/badge/Degree%20Program-WI%20|%20ISM-blue)](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)
[![Prerequisites](https://img.shields.io/badge/Prerequisites-InfEinf%20|%20EiAPS%20&%20JaP-blue)](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)
![Duration](https://img.shields.io/badge/Work%20load-180h%20(6%20ECTS)-blue)<br>
[![Language](https://img.shields.io/badge/Language-Sessions%20in%20German,%20Materials%20in%20English-blue)](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)
[![Format](https://img.shields.io/badge/Format-Sessions%20on--site%20,%20Group--work%20anywhere-blue)](https://digital-work-lab.github.io/open-source-project/docs/syllabus.html)<br>
<!-- ![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue) -->
[![Evaluations](https://img.shields.io/badge/Rating-★★★★★%20({{ average_of_averages_rounded }}%20/%205)-yellow)](https://digital-work-lab.github.io/open-source-project/docs/evaluations.html) 
![Completion](https://img.shields.io/badge/Enrollment-{{ total_students }}%20students-green)
[![Peer-Reviewed Quality](https://img.shields.io/badge/Pedagogical%20Foundations-Peer%20Reviewed-green)](https://digital-work-lab.github.io/rethink-git-teaching/){: target="_blank"}
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

Welcome!
The Open-Source Project is organized by the digital work lab (Prof. Dr. Gerit Wagner) at Otto-Friedrich-Universität Bamberg.
You can find all information about this project in our [syllabus](docs/syllabus.html).

<!-- 
{: .info }
> **Info**
> We are currently updating the content for the upcoming winter semester (2024/25). You can find the dates and times for the sessions in the table below.


[![Completion Rate](https://img.shields.io/badge/Completion%20Rate-95%25-brightgreen)](https://example.com){: target="_blank"}

[![5 Stars](https://img.shields.io/badge/Rating-★★★★★-yellow)](https://example.com){: target="_blank"}
> "I loved the structured approach to Python programming. The challenges really pushed my understanding."
> — Alex, Python Beginner
-->

## Participate

If you would like to participate, please attend the introductory session.
Details regarding registration and topic assignment will be announced during this session.
We look forward to meeting you!

Sign up for our VC course: [![Course Registration](https://img.shields.io/badge/Sign%20up%20-Click%20Here-blue)](https://vc.uni-bamberg.de/course/view.php?id=71962)

## Goals

- **Hands-on experience** as a contributor and maintainer of a real open-source project.
- **Python coding** with emphasis on Python **packages**, **code quality** and **continuous integration**.
- **Collaborative teamwork** using modern open-source workflows through Git and GitHub.

## Outline

The outline for the sessions is below:

<!-- 
| Week | Session                                              | Date and Time                                         | Location                  | Status |
| ---- | ---------------------------------------------------- | ----------------------------------------------------- | ------------------------- | ------ |
| 1    | [Finding the topic](docs/week_1_topic.html)          | April 23, 12.00-14.00                                 | WE5 04.003                |{% assign d='2025-04-23' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
| 2    | [Introduction to Git](docs/week_2_git.html)          | May 2, 08.00-12.00                                    | WE5 01.003                |{% assign d='2025-05-02' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
| 3    | [Introduction to Python](docs/week_3_python.html)    | May 8, 12.00-16.00  <br> May 9, 08.00-12.00           | WE5 01.004 <br> WE5 01.003 <br> WE5 01.003|{% assign d='2025-05-08' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
| 5    | [Best practices](docs/week_5_best_practices.html)    | May 22, 12.00-14.00                                   | WE5 01.004                |{% assign d='2025-05-09' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
| 6-11 | [Group work](docs/week_6-11_group_work.html)         | On demand                                             | WE5 01.081                |{% assign d='2025-05-22' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
| 12   | [Code review session](docs/week_12_code_review.html) | TBA                                                   | TBA                       |{% assign d='2025-07-10' | date: "%s" %}{% assign now='now' | date: "%s" %}{% if d <= now %}🟢 Completed{% else %}⚪ Upcoming{% endif %} |
-->

| Week | Session | Date and Time | Location | Status |
|------|---------|----------------|----------|--------|
{% for s in site.data.data.current_semester.sessions %}{% assign session_ts = s.date | date: "%s" %}{% assign now_ts = "now" | date: "%s" %}{% if session_ts <= now_ts %}{% assign status = "🟢 Completed" %}{% else %}{% assign status = "⚪ Upcoming" %}{% endif %}| {{ s.week }} | [{{ s.title }}]({{ s.details_url }}) | {{ s.date_formatted }} | {{ s.location }} | {{ status }} |
{% endfor %}

## Deliverables

| Deliverable                                                                           | Date            |
| ------------------------------------------------------------------------------------- | --------------- |
| Create a GitHub account and contribute to issue discussions to form teams             | End of week 1   |
| Contribute code to a fork, create branches, and merge code                            | End of week 6   |
| Submit your code through a pull request (code is evaluated in week 12)                | End of week 11  |
| Attend the code review session                                                        | Week 12         |
| Implement the feedback provided in the pull request                                   | End of week 13  |

## Instructor

My name is Gerit Wagner, and I am your instructor. I enjoy coding, solving programming puzzles, and building tools that are useful for others. In this project, I invite you to contribute to one of my most significant packages: [CoLRev](https://github.com/CoLRev-Environment/colrev){: target="_blank"}. 

<img src="assets/gerit_wagner.jpg" alt="Gerit Wagner (Foto: Tim Kipphan)" style="height: 180px; float: left; padding-right: 10px;">

**Gerit Wagner**  
*Assistant Professor of Information Systems*  
*Otto-Friedrich-Universität Bamberg*

<br style="clear:both">
