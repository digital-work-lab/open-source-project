# The Open-Source Collaboration Game

The goals of this tutorial are to

- Learn how to **use the collaboration features of Git**, including forks, pull requests, merges, and issues
- Apply them in a **realistic setting of multiple contributors** without requiring time to write code
- Familiarize with the **key elements of open-source project documentation**

<!-- 
Note:
- use the GitHub web interface for simplicity (explain that it only allows you to edit one file at a time)
- using the GitHub web interface does not depend on remote authentication of local clients (a potential source of errors) 
TBD: learn how to push branches to a fork/change the remote?
-->

In the following, we simulate a small Open-Source community that updates the documentation for an example project.
 <!-- (CoLRev).
This project provides an extensible platform to support the whole literature review process from the search to the selection of relevant papers, the retrieval of PDFs, and the synthesis.
  -->

Students will split into small groups and one maintainer group, which will lead the project and use the beamer to show their work.

<!-- There are three rounds which should be completed in 90 minutes. -->

## Preparation

<!-- Note: Ideally, the maintainers should be familiar with git 
Randomly give numbers to each group (starting with 1), ask to work on the following playbook issues
-->

- Create a [GitHub account](https://github.com/join)
- Select two maintainers, form 7 teams (2-4 students each)
- Give the maintainers 5 minutes to prepare

### Round 1 (Maintainers)

- Create the project and ask for contributions (based on [playbook M1](playbook-M1.md))

### Round 2 (Contributors)

- Each group works in their issue based on the following playbooks:

    - [Playbook C1](playbook-C1.md) - Goals
    - [Playbook C2](playbook-C2.md) - Getting started
    - [Playbook C3](playbook-C3.md) - Example
    - [Playbook C4](playbook-C4.md) - Documentation
    - [Playbook C5](playbook-C5.md) - Contributing guidelines
    - [Playbook C6](playbook-C6.md) - FAQ
    - [Playbook C7](playbook-C7.md) - Using CoLRev for interview data

- The maintainers prepare for the next round

### Round 3 (Maintainers)

- Review the contributions assign them to issues (based on [playbook M2](playbook-M2.md))

### Round 2 (Contributors)

<!-- 
sync the main branch in your fork
https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork

Address comments

- Each group works in their issue based on the following playbooks:

    - [Playbook C1 (round 2)](playbook-C1-r2.md) - Goals
    - [Playbook C2 (round 2)](playbook-C2-r2.md) - Getting started
    - [Playbook C3 (round 2)](playbook-C3-r2.md) - Example
    - [Playbook C4 (round 2)](playbook-C4-r2.md) - API documentation
    - [Playbook C5 (round 2)](playbook-C5-r2.md) - Contributing guidelines
    - [Playbook C6 (round 2)](playbook-C6-r2.md) - FAQ
    - [Playbook C7 (round 2)](playbook-C7-r2.md) - Using CoLRev for interview data
-->

- Each group updates the `nav_order` values and adds links to the other pages (the links are optional)
- Group 7 has a [separate playbook](playbook-C7-r2.md)
- The maintainers prepare for the next round

### Round 4 (Maintainers)

- Conclude the session and provide a brief outlook (based on [playbook M3](playbook-M3.md))

### Round 5 (Clean-up)

- Take notes on the changes that were introduced and the key elements of the GitHub/Open-Source workflow that were covered in this session
- Delete your forks

<!-- 
Follow-up discussion:
- Identify the underlying Open-Source principles and practices


Another case may be creating a handbook (using GitLab as an inspiration)
-> Create an employer-onboarding template
-> add yourself to a team...
-->