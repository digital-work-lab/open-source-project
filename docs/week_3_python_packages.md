---
layout: default
title: "Python packages"
parent: "Week 3: Python"
nav_order: 4
has_toc: true
---

# Python packages

![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

```mermaid
graph LR
    A["Python Packaging"] --> B0[<a href="#python-packages">Basics</a>] 
    A --> B1[<a href="#testing">Testing</a>]
    A --> B2[<a href="#documentation">Documentation</a>]
    A --> B3[<a href="#publishing">Publishing</a>]

    style A fill:#a2a2e2,stroke:#000,stroke-width:1px,color:#000
    style B1 fill:#d199f1,stroke:#000,stroke-width:1px,color:#000
    style B2 fill:#83cfc9,stroke:#000,stroke-width:1px,color:#000
    style B3 fill:#a5d3f2,stroke:#000,stroke-width:1px,color:#000
    style B0 fill:#f2d08b,stroke:#000,stroke-width:1px,color:#000
```

## Basics

To create a Python package, it is essential to follow a clear structure that complies with best practices, such as those outlined in [PEP 517](https://peps.python.org/pep-0517/){: target="_blank"} and [PEP 518](https://peps.python.org/pep-0518/){: target="_blank"}.
The structure ensures that the package is maintainable, pip-installable, and ready for distribution.
Below is an example of a typical package structure for CoLRev (Python) packages:

```
colrev-package
├── src
│   └── module.py
│   └── __init__.py
├── tests
│   └── __init__.py
├── LICENSE
├── README.md
└── pyproject.toml
```

{: .blue }
> The `__init__.py` file marks a directory as a Python package, making its modules importable.
> It can also include initialization code for the package.
> For instance, it might define a package-wide variable or import frequently used modules to simplify access.

### Managing CoLRev Packages

To manage CoLRev packages, we use [uv](https://github.com/astral-sh/uv){: target="_blank"}, a modern dependency and packaging tool.
*uv* simplifies the creation and management of Python projects by centralizing metadata and dependency specifications in a pyproject.toml file.

Below is an example pyproject.toml file for a CoLRev package:

```
[project]
name = "colrev-package-name"  # Package name
version = "0.1.0"  # Initial version
description = "A short description of the package."
authors = [
    { name = "Author Name", email = "author@example.com" }
]
license = { file = "LICENSE" }
requires-python = ">=3.8, <4"
dependencies = [
   "click>=8.1.6", # Example dependency
]

[project.urls]
homepage = "https://example.com"
repository = "https://github.com/username/repo"
documentation = "https://example.com/docs"
bug-tracker = "https://github.com/username/repo/issues"

[project.scripts]
example-cli = "package.module:main_function"  # CLI entry point (example)

[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"
```

{: .blue }
> The `project.scripts` defines cli entrypoints. In this case, running `example-cli` in the shell would call the `main_function()` in the `package.module` module.

### Setting up the Package

Instead of the generic `uv init` to create a new project, CoLRev provides a dedicated utility to streamline the process:

```
colrev package --init
```

This command sets up the essential files and folder structure tailored to CoLRev projects, ensuring compliance with the platform's standards.

### Installing a Package

Once the package structure is set up, it can be installed locally in editable mode using pip:

```
pip install -e .
```

This allows you to make changes to the package code and see the updates immediately without reinstalling.

### Using a Package

When using a package, it’s important to distinguish between the data directory and the package directory.
While "pure users" of the package may not know where the code resides, developers have installed it from a specific *package location* when running `pip install -e .`.

{: .blue }
> In GitHub Codespaces, it is necessary to create a separate data directory and open it in VisualStudio:
> 
> ```
> cd ..
> mkdir project
> code -a /workspaces/project
> ```

### Adding Dependencies

Adding dependencies to your project is straightforward with *uv*. For example, to add the `requests` library, use:

```
uv add requests
```

*uv* ensures that all dependencies are properly versioned and recorded in the `pyproject.toml` file.

### Checking the package

To check the setup of a CoLRev package, run

```
colrev package --check
```

## Testing

Initial testing of package modules is often done by running them directly as Python scripts.
This can be accomplished by including the following structure in your module:

```
# filename: module.py

# Code to test ...

if __name__ == "__main__":
    # Code to execute when the module is run directly
    print("This module is being run directly!")
```

To run the module as a Python script:

```
python module.py
```

This allows you to execute specific functions or test code when the module is called directly, but it will not execute if the module is imported elsewhere.

Once the functionality matures, it may be called through the CoLRev cli. For example, by running:

```
colrev search -a colrev.example_package
```

{: .blue }
> **Advanced testing strategy for ColRev**
> 
> Given that CoLRev packages create new commits in the data directory, it can be helpful to get the SHA of the initial commit and combine the tests with `git reset --hard COMMIT-SHA`.
> This ensures that your testing always starts from the same commit (the *COMMIT-SHA*).

Unit tests verify that individual components of your package function as expected.
Using pytest, you can write and run tests for your modules. Here’s an example of a test file structure:

```
# tests/test_module.py
def test_example_function():
    result = example_function()
    assert result == "expected result"
```

To run all tests, use the following command in the top-level colrev directory:

```
# Run all tests
pytest tests

# Run tests with verbose output
pytest tests -v
pytest tests -vv

# Run a selected test
pytest tests/3_packages_search/api_search_test.py

# Run a selected test function
pytest tests/3_packages_search/api_search_test.py -k test_eric
```

This will execute all test cases in the `tests/` directory and provide a detailed report of the results.

## Documentation

Documentation is an essential part of any Python package.
It ensures that users can understand and effectively use your package while providing developers with a reference for maintaining or extending it.
Start with a clear and concise `README.md` file that outlines the purpose, features, installation instructions, and usage examples of your package. 

The documentation of individual CoLRev packages should be made available in the [overview](https://colrev-environment.github.io/colrev/manual/packages.html){: target="_blank"}.
To accomplish this, CoLRev maintainers will run

```
colrev env --update_package_list
```

## Publishing

Making Python packages available on PyPI allows others to install the package using the simple command `pip install package_name`.
Publishing a Package to PyPI requires an account and authentication.
We recommend a publishing workflow based on GitHub actions, which are triggered every time a new release is published (see [publish_pypi.yml](https://github.com/CoLRev-Environment/colrev/blob/main/.github/workflows/publish_pypi.yml){: target="_blank"}).

{: .blue }
> Currently, built-in CoLRev packages are published and distributed with the CoLRev core package.
> In the future, they will be published as separate packages on PyPI.

<!-- https://hatch.pypa.io/latest/intro/#setup -->
