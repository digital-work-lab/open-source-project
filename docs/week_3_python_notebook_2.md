---
layout: default
title: "Week 3: Python notebook 2"
nav_exclude: true
has_toc: true
search_exclude: true
---

# Exercise notebook: Python 2

[![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)](https://digital-work-lab.github.io/open-source-project/)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="img/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_3_python_notebook_2.md" target="_blank">suggestions</a> on this notebook!

---

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">With this notebook, you can refactor to object-oriented code, switch to a real CoLRev project and load the records using the CoLRev classes, and save changes to create a commit.</p>


| Part | Label                                   | Time (min) |
|------|-----------------------------------------|------------|
|  4   | [Object-oriented code](#object)         |     10     |
|  5   | [Programmatic use of CoLRev](#colrev)   |     15     |
|  6   | [Save and commit changes](#save-commit) |     13     |
|      | [Wrap-up](#wrap-up)                     |      2     |
|      | Overall                                 |     40     |

<br>

<img src="img/python_overview_4.PNG" width="800">

<br>

---

To continue working on your [Codespace](https://github.com/codespaces){: target="_blank"}, resume it as follows:

<img src="img/codespace-start.gif"  loop="1" width="800"/>

### Switch to the project directory `example`

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To use the typical CoLRev environments (objects), we switch to an existing CoLRev project:</p>


```python
cd /workspaces
git clone https://github.com/CoLRev-Environment/example.git
code -a /workspaces/example
```

The project directory `example` should now be displayed. Let's navigate to the directory and check the status:


```python
cd /workspaces/example
colrev status
```

<div style="border: 2px solid #f44336; padding: 10px; background-color: #ffebee; color: #b71c1c; border-radius: 5px; display: inline-block; width: 800px;">
    <strong>Important</strong> It is important to run all project-specific commands (<code>colrev ...</code>) in the project directory (in this case, <code>example</code>).
</div>


<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Briefly check the last commits of the project.</p>

## Part 4. Object-oriented code <a id="object"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I write object-oriented code?"</b></p>

### Object-oriented programming

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Our next goal is to implement the previous example (adding the journal impact factor to the records) using Python objects/methods, and using the CoLRev infrastructure.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">As a first step, create the <code>JIFLabeler</code> class, instantiate an object, and add the <code>add_jif()</code> method (based on the <a href="https://www.w3schools.com/python/python_classes.asp">Python objects/methods syntax</a>). Run and revise the code (if necessary).</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Hint</b> Also adapt the path of the records to <code>data/records.bib</code>. This is where CoLRev projects store the main records file.</p>

To checkout the **solution**, run:


```python
git reset --hard 4590842765078886554108360b3c3c685ac8b24a
```

## Part 5: Programmatic use of CoLRev <a id="colrev"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I use CoLRev infrastructure?"</b></p>

### Using CoLRev infrastructure

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">To use the CoLRev infrastructure, take a look at the <a href="https://colrev-environment.github.io/colrev/dev_docs/api.html">API reference</a> and find the classes and methods that can be used to load and save records.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Upon instantiating the <code>JIFLabeler</code>, we would like to instantiate a <code>ReviewManager</code> object and keep it as an object variable.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">When calling the <code>main</code> method, the records should be loaded by using the <code>ReviewManager</code>'s dataset methods.</p>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>Hint</b>: Remember to import the required modules. Test your code, run the linters, and try to address potential warnings.</p>

</details>

To checkout the **solution**, run:


```python
git reset --hard 8c9c2b1d26ed5d9e079d5a46c349d73032970075
```

## Optional challenge

To improve the code, try to implement these two changes:


<div style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">
 
<ul>
<li>Instead of <code>print()</code> statement, it is recommended to use the <code>ReviewManager</code>'s logger.</li>
<li>Instead of using the record dicts, it is recommended to work with the <code>Record</code> class and its <code>update_field()</code> method.</li>
</ul>

</div>

To checkout the **solution**, run:


```python
git reset --hard 2d9adbf3fa803e8122ee1b2e92fa8e8b1a9b2516
```

## Part 6: Save and commit <a id="save-commit"></a>

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;"><b>"How do I save and commit changes?"</b></p>

### Save and commit changes

<p style="max-width: 800px; margin-left: 0; margin-right: 0; text-align: justify;">Finally, we need to save the records (using the <code>dataset</code> attribute of <code>ReviewManager</code>) and create a commit (using the <code>ReviewManager</code>).</p>

Review the commit and its content.

To checkout the **solution**, run:


```python
git reset --hard b3ae06d564773f9db6611deeb3ee0507ea54d6b0
```

---

## Wrap-up <a id="wrap-up"></a>

🎉🎈 You have completed the Python commit notebook - good work! 🎈🎉

In this notebook, we have learned to

- Stop and resume your work in a GitHub Codespace
- Write object-oriented code in Python
- Programmatically use CoLRev
- Save and commit changes in a CoLRev project

Remember to delete your [codespace](https://github.com/codespaces){: target="_blank"} after the session.
