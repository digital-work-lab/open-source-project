---
layout: default
title: Evaluations
has_toc: true
nav_order:  10
---

# Evaluations

{: .info }
> **Your feedback matters: Help us improve!**
> 
> We kindly invite you to participate in the upcoming course evaluation.
> Your feedback is voluntary and anonymous.
> There is no risk of disadvantage or negative consequences for you, regardless of the feedback you provide.
> So please feel free to be open and honest in your responses.
> Your participation helps us [improve the quality of our courses](https://digital-work-lab.github.io/handbook/docs/10-lab/10_processes/10.01.goals.html){: target="_blank"} (♻️), and we highly value your opinions.
> 
> Thank you for your time and honest feedback!

Results from our regular teaching evaluations are available [here](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.21.evaluations.html){: target="_blank"}.

{% assign x_axis = "" %}
{% assign y_ratings = "" %}
{% assign y_participation = "" %}

{% assign semesters = site.data.data.semesters | sort: "ID" %}

{% for semester in semesters %}
  {% assign semester_name = semester.name | replace: "/", "_" %}
  {% assign x_axis = x_axis | append: semester_name | append: "," %}
  {% assign y_ratings = y_ratings | append: semester.evaluation_average | append: "," %}
  {% assign y_participation = y_participation | append: semester.participants | append: "," %}
{% endfor %}

{% assign x_axis = x_axis | append: "#END" %}
{% assign x_axis = x_axis | remove: ",#END" %}

{% assign y_ratings = y_ratings | append: "#END" %}
{% assign y_ratings = y_ratings | remove: ",#END" %}

{% assign y_participation = y_participation | append: "#END" %}
{% assign y_participation = y_participation | remove: ",#END" %}

{: .text-center}
```mermaid
%%{init: { "themeVariables": {"xyChart": {"plotColorPalette": "#7253ed", "plotLineWidth": 4} } }}%%
xychart-beta
    title "Student rating (overall)"
    x-axis [{{ x_axis }}]
    y-axis "Indicator (1-5)" 1 --> 5
    line [{{ y_ratings }}]
```

{: .text-center}
```mermaid
%%{init: { "themeVariables": {"xyChart": {"plotColorPalette": "#7253ed", "plotLineWidth": 4} } }}%%
xychart-beta
    title "Participation"
    x-axis [{{ x_axis }}]
    y-axis "Number of students" 0 --> 15
    line [{{ y_participation }}]
```

## What our students say

We are delighted to share the feedback from students who have participated in our Open Source Project in previous semesters. Their experiences and insights help us continually improve and ensure a valuable learning journey for all.

> I consider that the methodology used and the sessions held at the beginning of the semester, as well as the Hacking sessions in the rest of the semester are well organised. And it helps the student to be independent when developing the project, which in my case helps me to understand everything well without having a time limit to do x thing. Always with the help of the instructor.

> I really liked the course because I feel that I have learned a lot, not only about developing a package, but also I have learned and improved in the tools that we needed for the development of the project such as git. About the project itself I like the way it is set up, and I found the hacking sessions very useful as well. I would only mention that it would be interesting to add a first introductory class with a general explanation of what the project is, how it works, etc.

> Thank you very much for the project! It was really great to get to know the CoLRev project and to learn a lot about working with Git and programming in Python. I would definitely recommend the project. As for suggestions for improvement, I agree that working with the virtual machine was sometimes challenging. On the other hand, it was also interesting to get to know it.

> A great project where you could learn a lot if you wanted to.

>  All in all, a very successful project, with a few possible points for improvement, but one that gives a first insight into working on larger projects and challenges and encourages the students to the right extent.

> I really liked the hacking sessions, where we always got very good feedback on the right scale and were also encouraged to think about things with questions from Prof. Wagner. We were also encouraged to think with questions from Prof. Wagner.

> I liked the fact that we were able to work very freely and independently on our problem as a group, but that we were always able to make appointments with Prof. Wagner at very short notice if we had problems or questions.

> We were always able to make appointments with Prof. Wagner at very short notice. This gave me the impression that we were working we were working WITH the lecturer on the problem and finding the best solution rather than blindly choosing the first solution that came along. In my opinion, working independently on a complex problem is the most important skill that I improved with the help of the project.

> The support I received throughout the project was particularly good, as was the opportunity to deal with topics that were not previously available at the university, but which can be extremely important for your professional life.

Note: The feedback is translated based on the [evaluations](https://digital-work-lab.github.io/handbook/docs/30-teaching/30_processes/30.21.evaluations.html#prior-evaluations){: target="_blank"}.

## How our students continue to be involved

Several students have decided to build on the project and write their [thesis](https://digital-work-lab.github.io/theses/){: target="_blank"} in the context of CoLRev.
