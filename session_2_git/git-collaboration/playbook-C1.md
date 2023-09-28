# Playbook C1: Statement of goals

## The workflow

A brief guide on how to contribute to the CoLRev project documentation is available [here](contribute-to-docs.md).

## Your changes

You decide to focus on the statement of goals pursued by the CoLRev project. You think that the goals should be clearly stated on first page of the documentation. The summary on the [CoLRev project page](https://github.com/CoLRev-Environment/colrev) is a good starting point, but it should be shorter and illustrated with a figure.

The visualization provided in the [Tidyverse Cookbook](https://rstudio-education.github.io/tidyverse-cookbook/how-to-use-this-book.html) is a good starting point for the figure. You decide to use [Mermaid](https://mermaid.js.org/) to illustrate the statement of goals with a flowchart.

You decide to use the [Tidyverse Cookbook](https://rstudio-education.github.io/tidyverse-cookbook/how-to-use-this-book.html) as a template for your statement of goals. You also decide to use [Mermaid](https://mermaid.js.org/) to illustrate the statement of goals with a flowchart. As the main steps, you want to display a cycle of the following: `search`, `screen`, and `synthesize`. Before running the cycle, users should use the `init` command and afterwards, they can `publish` their results.

Note: Mermaid provides a [Life editor](https://mermaid-js.github.io/mermaid-live-editor/) to create flowcharts. To include the flowchart in the documentation, you need to [update the configuration](https://just-the-docs.github.io/just-the-docs/docs/configuration/).

<!-- 
```mermaid
flowchart TD
    A[Init] -- > B(search)
    B -- > C[screen]
    C -- > D[synthesize]
    D -- > B
    D -- > E[publish]
```
-->