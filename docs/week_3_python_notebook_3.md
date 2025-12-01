---
layout: default
title: "Python session 3"
parent: "Week 3: Python"
nav_order: 4
has_toc: true
---

# Python session 3

![Offered by: Digital Work at Otto-Friedrich-Universität Bamberg](https://img.shields.io/badge/Offered%20by-%20Digital%20Work%20(Otto--Friedrich--Universit%C3%A4t%20Bamberg)-blue)
![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)

We  <img src="../assets/iconmonstr-favorite-2.svg" alt="Edit" width="12" height="12">  your <a href="https://github.com/digital-work-lab/open-source-project/issues/new/choose" target="_blank">feedback</a> and <a href="https://github.com/digital-work-lab/open-source-project/edit/main/docs/week_3_python_notebook_2.md" target="_blank">suggestions</a> on this notebook!

---

In this session, we create a small but fully functional Python package and turn it into a plugin of `colrev`. Step by step, you will set up a clean project structure, write reusable code, add automated tests, and manage dependencies using modern tooling. By the end, you will have a shareable package that follows current best practices—and a solid foundation for developing more advanced tools in the future.

{: .objective } 
> - Learn how to set up a Python package using uv
> - Include tests, manage dependencies, and maintain code quality
> - Extend colrev by making the package available as a plugin

<br>

📑 Session slides: ➡️ [View online](../output/05-python_3.html){: target="_blank"} · ⬇️ [Download PDF](../output/05-python_3.pdf){: target="_blank"}

<br>

| Part   | Label                                      | Time (min) |
|--------|--------------------------------------------|------------|
|        | Setup                                      | 10         |
| Part 1 | [Initialization](#initialization)          | 20         |
| Part 2 | [Structure and code](#structure_and_code)  | 20         |
| Part 3 | [Editable installation](#editable_install) | 10         |
| Part 4 | [Testing](#testing)                        | 20         |
| Part 5 | [Code quality](#code_quality)              | 20         |
| Part 6 | [colrev plugins](#plugins)                 | 70         |
|        | Wrap-up                                    | 10         |
|        | Overall                                    | 180        |

{: .info }
> Start a Codespace in the [colrev-python-package tutorial](https://github.com/CoLRev-Environment/colrev-python-package-tutorial){: target="_blank"} repository.

Run the following git reset at the beginning:

```bash
git reset --hard 60e191517b9e0e68892bac5fb61aec33a01c5543
```

## Setup

**What is a Python package?**

A Python **package** is a standardized way to bundle and distribute reusable code so that others (or your future self) can easily install and use it with a simple `pip install ...` command.

In this session, you will learn the fundamentals by building a complete, working package from scratch. Our goal is to demystify the process and understand the **why** behind each step. We will build a simple but practical utility package that standardizes journal names in bibliographic data, which is a core task in literature review tools like `colrev`. In the last part, we will make the new package available as a plugin to `colrev`.

## Setting up your tools

Before we begin, we need to ensure you have the necessary command-line tools. These do not come with Python and must be installed separately.

### Installing `uv`

`uv` is a modern, extremely fast tool for managing Python packages and projects. We will use it to initialize our package and handle dependencies.

Run the following command in your Codespace terminal:

```bash
# For macOS, Linux, and Windows WSL
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Verify it was installed correctly by running:

```bash
uv --version
```

You should see the installed version number printed.

## Part 1: Initialization <a id="initialization"></a>

Let's start with the anatomy of a Python package.
A consistent structure is key because it allows automated tools and other developers to understand your project instantly.
A typical package could be structured as follows:

```
colrev-journal-formatter/
│   ├── __init__.py
│   └── formatter.py
├── tests/
│   └── test_formatter.py
├── LICENSE
├── README.md
└── pyproject.toml
```

- `pyproject.toml`: The **control center**. It contains the package name, version, dependencies, and build instructions.
- `colrev_journal_formatter/`: The **source folder**. Your actual Python code lives here.
- `tests/`: The **testing folder**. Contains code that automatically checks if your source code works correctly.
- `README.md` & `LICENSE`: Your project's documentation and legal rules.

Let's build a package named `colrev-journal-formatter`.

First, create a directory and navigate into it.

```bash
mkdir colrev-journal-formatter
cd colrev-journal-formatter
```

Now, we use `uv` to initialize the project. This automatically creates the `pyproject.toml` file:

```bash
uv init
```

This creates your `pyproject.toml` file. Let's examine every line:

```toml
[project]
name = "colrev-journal-formatter"
version = "0.1.0"
description = "The package supports formatting of journal names."
authors = [ { name = "Your Name", email = "you@example.com" } ]
requires-python = ">=3.12"
dependencies = []

[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"
```

Adapt the sections as you see fit (e.g., update the `authors` and add the `build-system`).

- **`[project]`**: A standard section holding all your project's metadata.
- **`name`**: The name that users specify to install your package (`pip install colrev-journal-formatter`).
- **`version`**: The current version. You should increment this with each new release.
- **`dependencies = []`**: A list of other packages that your package needs to function. `uv add` will populate this list for you.
- **`[build-system]`**: This section tells `pip` *how* to build your package. It specifies the "build backend" (`hatchling`) which acts as a "factory" to assemble your code into a distributable format.

**Breakpoint:** If you are stuck or want to jump to the solution for this step, run the command below.

```bash
git reset --hard 49384a9e5b11912f3b182bd2a44f44b12f2dfb1c
```

## Part 2: Structure and code <a id="structure_and_code"></a>

Now, let's create the necessary files and folders for our code.

```bash
mkdir -p colrev_journal_formatter
touch colrev_journal_formatter/__init__.py
touch colrev_journal_formatter/formatter.py
```

Note that Python package names often use underscores (`_`) instead of hyphens (`-`).

Let's add our core logic. Open `colrev_journal_formatter/formatter.py` and add this code:

```python
def standardize_journal_name(name: str) -> str:
    """
    Standardizes a journal name by replacing common abbreviations.
    """
    abbreviations = {
        "J": "Journal",
        "Comput": "Computing",
        "Syst": "Systems",
        "Sci": "Science",
    }
    
    words = name.split()
    standardized_words = [abbreviations.get(word, word) for word in words]
    
    return " ".join(standardized_words)
```

**Breakpoint:** Jump to the solution for step 2.

```bash
git reset --hard 97791b296408f1869b22920cb00e810f0d4e3a37
```

## Part 3: Editable installation <a id="editable_install"></a>

To install the package locally so changes are reflected immediately, we use `pip` with the `-e` flag (editable). This creates a link to your source code instead of copying it. This means you don't need to reinstall the package every time you change a line of code. **Run this from the project's root directory.**

```bash
pip install -e .
```

To test whether it works, we can import and run the code in a Python shell (type `python` + ENTER in the terminal and `exit()` to close):

```python
from colrev_journal_formatter.formatter import standardize_journal_name

print(standardize_journal_name('J of Comput Syst'))
# Should print "Journal of Computing Systems"
```

Update the `standardize_journal_name()` function to replace `Int` with `International` and test it in the Python shell.

## Part 4: Testing <a id="testing"></a>

`pytest` is the framework we will use to write and run tests for our code. 
Let's add `pytest` as a development dependency.

```bash
uv add --dev pytest
```

This command adds `pytest` to the `[project.dependencies]` section in your `pyproject.toml`, installing it as one of your dependencies.

Now we write a test file. We import our function and use `assert` to check if it returns the expected result.
Open `tests/test_formatter.py` and add your tests:

```python
# tests/test_formatter.py
from colrev_journal_formatter.formatter import standardize_journal_name

def test_standardize_journal_name():
    """Tests that abbreviations are correctly expanded."""
    input_name = "J of Comput Syst"
    expected_name = "Journal of Computing Systems"
    assert standardize_journal_name(input_name) == expected_name

def test_no_abbreviations():
    """Tests that a name with no abbreviations remains unchanged."""
    input_name = "Journal of Modern Science"
    assert standardize_journal_name(input_name) == input_name
```

Finally, run the tests:

```bash
pytest
```

**Breakpoint:** Jump to the solution for step 4.

```bash
git reset --hard b4bf67e8de8026d2f7dd845c5c459211e938e107
```

## Part 5: Code quality <a id="code_quality"></a>

In a collaborative open-source project like `colrev`, ensuring that all contributions are clean, consistent, and error-free is essential. It makes the code easier for everyone to read, maintain, and build upon. To achieve this, it is good practice to rely on automated tools to maintain quality standards.

A common framework for this is called **`pre-commit`**. It works by setting up "hooks" that automatically run checks on your code every time you make a `git commit`. These hooks can also run online in a GitHub repository. These hooks can:

- Automatically reformat your code to a consistent style.
- Check for common programming errors or bugs (linting).
- Ensure documentation is up to date.

Create a `.pre-commit-config.yaml` configuration file with the following content, which adds the [black](https://github.com/psf/black){: target="_blank"} code formatter:

```yaml
repos:
  - repo: https://github.com/psf/black
    rev: 24.3.0
    hooks:
      - id: black
        language_version: python3
```

Use the following command to install and run all the checks:

```bash
# Install the pre-commit framework (a Python package)
pip install pre-commit

# Install pre-commit into the Git repository, ensuring that they run with every git commit ... 
pre-commit install

# Run the pre-commit hooks
pre-commit run --all
```

If any of the checks fail, the commit is blocked until the developer fixes the issues. This acts as an automated gatekeeper, ensuring high quality for all code added to the project.

**Breakpoint:** Jump to the solution for step 5.

```bash
git reset --hard 6566a670a8888ef3177232e8e4b9b322c2529afd
pip install pre-commit
pre-commit install
```

## Part 6: colrev plugins <a id="plugins"></a>

To turn our package into a `colrev` plugin, we need to inherit from the `colrev` base classes and specify the entry point in our `pyproject.toml`.

Start by installing `colrev`:

```bash
pip install colrev
```

So far, we have written a standalone function, `standardize_journal_name`. This is great for a simple package, but how does a function like this become a true, integrated part of a large application like `colrev`? The answer is through **base classes**.

**What is a base class?**

Think of a base class as a **template or a contract**. In a large project, you don't build plugins from a blank file. Instead, you create a new class that **inherits** from a specific `colrev` base class. This contract ensures that all plugins of a certain type (e.g., all data preparation plugins) have a consistent structure and methods that the main `colrev` application knows how to use.

**A conceptual example**

Our `standardize_journal_name` function is a data preparation task. In a real-world scenario, this logic would live inside a class that inherits from `PrepPackageBaseClass`, which is the base class for all preparation operations.

To illustrate, here is what that would look like conceptually:

```python
import colrev.package_manager.package_base_classes as base_classes
import colrev.record.record

# Our new class inherits from the 'PrepPackageBaseClass' base class, fulfilling the contract.
class JournalAbbreviationPrep(base_classes.PrepPackageBaseClass):

    def __init__(self, prep_operation, settings):
        super().__init__(prep_operation, settings)

    # By implementing the 'prepare' method, our class can be called by colrev.
    def prepare(self, record: colrev.record.record.Record) -> colrev.record.record.Record:
        """Standardizes journal names in a CoLRev record"""

        if 'journal' in record.data:
            journal = record.data['journal']
            # We call our original function from within the required method.
            standardized_journal = self.standardize_journal_name(journal)
            record.update_field(
                key='journal', 
                value=standardized_journal, 
                source='journal_abbreviation_prep'
            )
        return record

    def standardize_journal_name(self, name: str) -> str:
        """Our original function lives here."""
        abbreviations = {
            "J": "Journal", "Comput": "Computing",
            "Syst": "Systems", "Sci": "Science",
        }
        words = name.split()
        standardized_words = [abbreviations.get(word, word) for word in words]
        return " ".join(standardized_words)
```

By inheriting from `PrepPackageBaseClass` and placing our logic inside the `prepare()` method, we are ensuring that `colrev` can run our code correctly. You can explore all the different base classes in the [colrev developer documentation](https://colrev-environment.github.io/colrev/dev_docs/packages/package_base_classes.html){: target="_blank"}.

**Task**: change the current code to inherit from `PrepPackageBaseClass`.

**Breakpoint:** Jump to the solution.

```bash
git reset --hard 044c1d985b0a14df6c8842afefe6027f3579a0f7
```

As a last step, we need to specify how `colrev` will discover our package.

The `JournalAbbreviationPrep` class you wrote is a perfect example of a data preparation task that a `colrev prep` package might invoke. To turn your package into a plugin, you would add more `colrev`-specific code to register it and have it process bibliographic records. 

To make the package available as a plugin, the following two sections must be added to our `pyproject.toml`:

```toml
[tool.colrev]
colrev_doc_description = "Journal name formatter"
colrev_doc_link = "README.md"
search_types = []

[project.entry-points.colrev]
prep = "colrev_journal_formatter.formatter:JournalAbbreviationPrep"
```

To validate the package setup in the context of `colrev`, you can run

```bash
colrev package --check
```

Once your `colrev` plugin is completed and published, open an issue in the [colrev repository](https://github.com/CoLRev-Environment/colrev/issues){: target="_blank"} to have it listed in the [overview of packages](https://colrev-environment.github.io/colrev/manual/packages.html){: target="_blank"}.

**Breakpoint:** Jump to the solution.

```bash
git reset --hard b90f9e8c6107189364463aef3a9b6ed0825ff195
```

**Further steps (optional)**

Your journey as a package developer is just beginning. The next steps in a package's lifecycle are:

- **Documentation:** A good `README.md` is essential. For larger projects, tools like **Sphinx** can build a full documentation website from your code's docstrings. Clear documentation is what separates a good project from a great one.
- **Publishing:** To share your package with the world, you can publish it to the **Python Package Index (PyPI)**. This makes it available to anyone via `pip install your-package-name`. This process is typically automated using GitHub Actions.

---

## Wrap-up

🎉 Congratulations! You have built your first Python package and made it available as a `colrev` plugin!
You have successfully created, installed, and tested a complete Python package from scratch. You have learned some of the fundamental skills of a Python package developer:

- **Structuring a project** with `pyproject.toml` and a modules layout.
- **Initializing a project** with `uv init`.
- **Developing efficiently** using an editable installation (`pip install -e .`).
- **Ensuring code quality** with automated tests using `pytest`.
- **Managing dependencies** declaratively with `uv add`.
- **Turning a package into a plugin** to extend existing Python packages, such as `colrev`.

These are the universal building blocks of shareable and maintainable Python code.

{: .info } 
> **Delete your Codespace**
> Remember to delete your [Codespace](https://github.com/codespaces){: target="_blank"} after the session.
