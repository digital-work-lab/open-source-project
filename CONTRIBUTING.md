# Contributing to *The Open Source Project*

Thank you for your interest in contributing to *The Open Source Project*! We welcome contributions of all kinds -- from bug fixes and content improvements to new examples or simply questions and feedback. This document outlines how you can:

- **Contribute improvements or new content** to the module
- **Report issues or problems** you encounter
- **Seek support or ask questions** about using the module

By following these guidelines, you help us maintain a high-quality, user-friendly learning resource for everyone.

## Project Overview and Setup

This project is a learning module built with [Jekyll](https://jekyllrb.com/) using the *Just-the-Docs* theme and managed via GitHub Pages and workflows. All course content (including slides and notebooks) is generated from Markdown files in this repository. **Contributors do not need to compile the site manually** -- if your contribution is merged, our GitHub Actions will automatically build and update the site, slides, and notebooks. However, if you wish to preview your changes locally, you can run the site with Jekyll (see Jekyll's documentation for setup) or use GitHub Codespaces.

**Repository structure in brief:** Most of the instructional content resides under the `docs/` directory (for narrative content and pages) and the `slides/` directory (for lecture slides). Changes to these Markdown files will be reflected in the website and slide deck after our automated build. There are also configuration files (e.g., `_config.yml`) and workflows that manage things like spelling checks and link checks. When contributing, you typically will be editing the Markdown content or related resources.

## How to Contribute Improvements 🚀

We are grateful for any form of improvement. Here are common ways to contribute:

- **Fixing typos or minor issues:** Feel free to directly submit a pull request for small fixes like typos, broken links, or formatting issues. These are quick to review and merge.
- **Improving documentation or examples:** If you can clarify an explanation, add an example, or expand a section for better understanding, please do! You can propose the change via a pull request.
- **Adding new content or features:** For larger contributions (e.g., a new exercise, a new section, or a significant change in structure), it\'s usually best to start by opening an issue to discuss the idea before you invest a lot of effort. This allows us to ensure the change fits with our course layout and instructional design.
- **Translations or adaptations:** If you want to translate content or adapt materials for another context, please open an issue to discuss how best to incorporate these contributions.

When contributing content, **please ensure consistency with the module's layout and instructional design**. Maintain the style and tone of existing materials -- for example, follow the formatting of the syllabus and weekly outlines, use similar heading levels, and keep code examples in the same format as current ones. Consistency helps learners have a seamless experience. If you're unsure about the style, feel free to ask for guidance in an issue.

### Submitting a Pull Request (PR)

If you have a specific improvement ready (code or content), you can submit it directly as a pull request:

1.  **Fork the repository** to your GitHub account and then clone your fork to your local machine.
2.  **Create a new branch** for your changes. Give it a descriptive name (e.g., `fix-typo-intro-section`).
3.  **Make your changes** in the appropriate files. Most often, this will be editing or adding Markdown files in the `docs/` or `slides/` folders. If you're contributing code (e.g., in notebooks or scripts), ensure it follows our coding standards (we use Python coding best practices, and our repository includes pre-commit hooks for formatting and linting).
4.  **Test your changes** if possible. Also, check that the Markdown formatting is correct and any links you added aren't broken.
5.  **Commit your changes** with a clear commit message explaining *what* you changed and *why*. For example: `"Fix typo in Week 3 Python notebook description"` or `"Add example on packaging to Week 5 section"`.
6.  **Push the branch** to your fork on GitHub.
7.  **Open a pull request** from your branch into our `main` branch. In the PR description, clearly describe the change you are proposing. If the PR addresses an open issue, reference the issue number (e.g., "Closes #12") so that the linkage is clear.

Once you open a PR, the maintainers will review your contribution. A reviewer might ask for some changes or clarifications. This is a normal part of the process to uphold quality and consistency. Our GitHub Actions will also run checks on your PR (for example, spelling checks and link checks, and possibly code style checks if code is modified). Please make sure to fix any issues flagged by these automated checks -- it helps us merge your contribution faster.

### Deciding Between Issues and PRs

Sometimes you might be unsure whether to open an issue first or go straight to a pull request. Here's our recommendation:

- If your contribution is **small and uncontroversial** (such as fixing a typo, or correcting a factual error), a direct pull request is fine.
- If you plan a **major change or new addition**, it's often better to **open an issue** first to propose the idea. This lets us discuss the approach, offer feedback, or coordinate with you. It can save time if we need to adjust the plan before work is done.
- If you have **already coded/written the improvement** and believe it's ready, you can open a pull request directly. If needed, we can still discuss within the PR.

## Reporting Issues or Problems 🐛

If you encounter any problems with the module, find mistakes, or have trouble with any part of the content, **please open an issue** in this repository. This includes:

- **Bugs in code examples:** If a code snippet or example in the material doesn't work as expected (or at all), let us know by opening an issue. Include details like which page or notebook it's on, what you tried, and any error messages.
- **Errors or inconsistencies in content:** If you spot a typo, a broken link, a formatting issue, or a factual mistake in the text, you can report it through an issue (or even fix it directly via a PR as mentioned above).
- **Problems with the website or build:** If the site isn't displaying correctly or you suspect there's an issue with how the content is generated (for example, a slide not showing), you can file an issue describing the problem.

When opening an issue, try to be as specific as possible: include the section or filename where the problem occurs, describe what is wrong and what you expected instead, and, if applicable, how someone can reproduce the problem. For example: "On the Week 2 Git branching page, the command output is not rendered properly" or "In the Python notebook 1, exercise 3's solution has a syntax error in the code." Specific details help us address the issue more quickly.

After you submit an issue, we'll label and triage it. Maintainers or other contributors might ask follow-up questions or offer a workaround in the meantime. We aim to address issues promptly, but response times can vary based on our schedules (this project is maintained alongside our other teaching and research duties). We appreciate your patience and will do our best to resolve the problem or incorporate the improvement.

### Feedback from Course Evaluations 🎓

In addition to contributions made directly on GitHub, we regularly review student feedback collected at the end of each semester. Actionable insights from course evaluations are logged into our [issue tracker](https://github.com/digital-work-lab/open-source-project/issues) to ensure they are visible to the broader community and to help inform ongoing improvements.

If you're a student user, you are welcome to reiterate or expand on those suggestions directly by opening an issue.

## Seeking Support or Asking Questions 🙋

We understand that using an educational module or contributing to a project can raise questions. If you need help or clarification, please don't hesitate to reach out. There are a few ways to seek support:

- **Open an issue labeled as a question:** If something in the module is unclear to you, or you have a question about how to do something (either as a user of the material or as a contributor), you can open an issue. Preface the title with a question (for example: "Question: How to run the notebooks locally?"). Describe your question or where you're confused in detail. We or the community will answer as soon as possible.
- **Direct contact:** If your question hasn't been answered via the above methods, you can contact the maintainers. For instance, you might reach out by email to the lead maintainer or via the course's communication channels. (For students of the course offering, this could be the Virtual Campus or in-class communication -- for external users, GitHub issues are preferred.)

No matter which channel, we encourage you to ask questions -- your feedback can help us improve the module. If you're confused by something, it's likely others might be too, and we'd like to know so we can clarify it in the materials.

## Additional Guidelines and Tips

- **Be respectful and patient:** We strive to create a welcoming environment. Be kind in your communications and assume good intentions in others. Remember that our contributors and maintainers are often volunteering their time.
- **Use clear language:** When writing issues or contributing content, clarity is key. Use simple language and clear structure, especially since this is an educational resource.
- **Consistency in terminology:** Use the same terms for concepts as the module does. For instance, if the material refers to "the module" or specific tool names, stick to those to avoid confusion.
- **Follow version control best practices:** If you're making multiple unrelated changes, consider splitting them into separate branches/PRs. This makes it easier to review and integrate. Each pull request should ideally address one focused change or a set of closely related changes.
- **Attribution and licensing:** By contributing, you agree that your contributions will be released under the same open license (this project uses CC BY 4.0 for content and an open-source license for any code). If you add third-party content (e.g., an example or image), make sure it's compatible with our license or clearly attributed.

## Conclusion 🙌

Your contributions and engagement are crucial to the success of *The Open Source Project*. We want this module to continually improve and remain useful to learners and instructors. Whether you fix a typo, suggest a new idea, or ask a question that leads to a clarification in our docs, you are helping others in the community.

**Thank you for helping to improve this project!**