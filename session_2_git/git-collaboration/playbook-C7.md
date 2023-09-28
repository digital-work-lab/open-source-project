# Playbook C2: CoLRev for interview data

## The workflow

A brief guide on how to contribute to the CoLRev project documentation is available [here](contribute-to-docs.md).

## Your changes

You figured out that the CoLRev project can be used to analyze interview data (not just scientific papers). To accomplish this, you created input data similar to the following example:

```
@interview{id1
    question1: {What is your position at the company?},
    answer1: {I am a developer responsible for the backend of our logistics application.},
    ...
}

@interview{id2
    question1: {What is your position at the company?},
    answer1: {I am a product owner in the insurance branch.},
    ...
}

```

You want the CoLRev project to cover this type of data as well. Create a new page on "analyzing interview data" to suggest that the data above can be added to the workflow (in the `data/search` directory) and processed with the operations `colrev load`, `colrev prep`, etc..
