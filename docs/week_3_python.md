---
layout: default
title: "Week 3: Python"
has_toc: true
nav_order: 4
---

<style>
  p {
    text-align: justify;
  }
</style>

# Week 3: Introduction to Python

![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

In the two Python sessions, we will start to program in Python and explore the CoLRev Python package.
You do not have to bring prior experience with Python, but we assume that you are familiar with an object-orient programming language (like Java or C).

In the Python sessions, you might find the material either very straightforward or in need of more explanation and examples for practice.
We have prepared for both scenarios: for those who finish early, there are optional 'Challenge' tasks included in the notebooks.
These aren't mandatory but can help you start thinking about your upcoming project work.
If you have any questions during or after the sessions, we're here to assist. We've also provided additional resources for further practice.

{: .objective }
> In the two sessions, our goals are to
> 
> - Familiarize with the Python syntax
> - Understand how to use other Python modules and libraries
> - Prepare for extending the functionality of the CoLRev package


```mermaid

graph TD
    A["<b>Goal:</b> From Python basics to a CoLRev plugin-ready package"] --> S1["<b>Session 1:</b><br/>Data items<br>External libraries<br>Functions"];
    S1 --> S2["<b>Session 2:</b><br/>Object-oriented code<br>CoLRev infrastructure<br>Save & commit"];
    S2 --> S3["<b>Session 3:</b><br/>Creating a package<br>CoLRev plugin context"];
    S3 --> R["<b>Result:</b> Tested package + CoLRev plugin foundations"];

    style A fill:#a2a2e2,stroke:#000,stroke-width:1px,color:#000
    style S1 fill:#f2d08b,stroke:#000,stroke-width:1px,color:#000
    style S2 fill:#f2d08b,stroke:#000,stroke-width:1px,color:#000
    style S3 fill:#f2d08b,stroke:#000,stroke-width:1px,color:#000
    style R fill:#d199f1,stroke:#000,stroke-width:1px,color:#000

```

## Session 1

<br>

<iframe src="../output/03-python_1.html" 
        style="width: 100%; aspect-ratio: 16 / 9; border: 1px solid #ccc; border-radius: 5px;" 
        allowfullscreen>
</iframe>

<br>

| **Materials**       | **Link**                                                                                                  |
|----------------------|---------------------------------------------------------------------------------------------------------|
| Slides session 1     | [![View Slides Part 1](https://img.shields.io/badge/View-Slides-orange?logo=html5)](../output/03-python_1.html){: target="_blank"} [![View PDF Slides](https://img.shields.io/badge/Download-PDF-orange?logo=adobe)](../output/03-python_1.pdf){: target="_blank"} |
| Notebook session 1   | [![Open Notebook](https://img.shields.io/badge/Notebook-blue?logo=github)](week_3_python_notebook_1.html) |

<br>

---

## Session 2

<br>

<iframe src="../output/04-python_2.html" 
        style="width: 100%; aspect-ratio: 16 / 9; border: 1px solid #ccc; border-radius: 5px;" 
        allowfullscreen>
</iframe>

<br>

| **Materials**       | **Link**                                                                                                  |
|----------------------|---------------------------------------------------------------------------------------------------------|
| Python session 2     | [![View Slides Part 2](https://img.shields.io/badge/View-Slides-orange?logo=html5)](../output/04-python_2.html){: target="_blank"} [![View PDF Slides](https://img.shields.io/badge/Download-PDF-orange?logo=adobe)](../output/04-python_2.pdf){: target="_blank"} |
| Notebook session 2   | [![Open Notebook](https://img.shields.io/badge/Notebook-blue?logo=github)](week_3_python_notebook_2.html) |

<!-- 
 [![Open Notebook in Codespaces](https://img.shields.io/badge/Open%20in%20Codespaces-blue?logo=github)](https://codespaces.new/digital-work-lab/practice-python){: target="_blank"}
 [![Open Notebook in Codespaces](https://img.shields.io/badge/Open%20in%20Codespaces-blue?logo=github)](https://codespaces.new/digital-work-lab/practice-python){: target="_blank"}
-->

<br>

---

## Session 3: Creating a Python Package

<br>

<iframe src="../output/05-python_3.html" 
        style="width: 100%; aspect-ratio: 16 / 9; border: 1px solid #ccc; border-radius: 5px;" 
        allowfullscreen>
</iframe>

<br>

| **Materials**       | **Link**                                                                                                  |
|----------------------|---------------------------------------------------------------------------------------------------------|
| Python session 3     | [![View Slides Part 3](https://img.shields.io/badge/View-Slides-orange?logo=html5)](../output/05-python_3.html){: target="_blank"} [![View PDF Slides](https://img.shields.io/badge/Download-PDF-orange?logo=adobe)](../output/05-python_3.pdf){: target="_blank"} |
| Notebook session 3   | [![Open Notebook](https://img.shields.io/badge/Notebook-blue?logo=github)](week_3_python_notebook_1.html) |

After you have used CoLRev in the last notebook, it is instructive to create a project and run through the operations to understand how CoLRev works.
To do this, we recommend starting a Codespace from the fork of your group.
You will also need to create a separate project directory in the Codespace (as explained in the notebooks).
Try to run the operations presented in the [asciinema recording](https://colrev-environment.github.io/colrev/){: target="_blank"} in the CoLRev documentation and analyze how the data in the project (Git) repository changes.

{: .deliverable }
![tasks logo](../assets/iconmonstr-clipboard-5.svg)Contribute code to a fork, create branches and merge code ([deadline](../index.html#deliverables)).