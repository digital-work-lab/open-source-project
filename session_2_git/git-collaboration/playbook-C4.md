# Playbook C4: Documentation

## The workflow

A brief guide on how to contribute to the CoLRev project documentation is available [here](contribute-to-docs.md).

## Your changes

You have started to work with CoLRev and you noticed that the documentation is not complete. You decide to create a documentation page and provide an overview of the main classes and their functionality. You also want to provide a link to the source files of the main classes (in the [colrev/colrev](https://github.com/CoLRev-Environment/colrev/tree/main/colrev) directory).

The main classes are:

- `colrev.dataset`, which provides functionality for data/records.bib and the git repository.
- `colrev.env`, whitch is the environment package for colrev.
- `colrev.logger`, which can be used to log events.
- `colrev.operation`, which is the main class for the different CoLRev operations.
- `colrev.record`, which provides functionality for individual records.
- `colrev.review_manager`, which is the manager for the review project.
- `colrev.settings`, which describes the settings for the project.

Create a markdown table overview of the main classes and their functionality. You can use an online editor for markdown tables, e.g., [https://www.tablesgenerator.com/markdown_tables](https://www.tablesgenerator.com/markdown_tables).