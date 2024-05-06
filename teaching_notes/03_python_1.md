
Codespaces:

shell:
cd ..
mkdir data
Datei: Ordner zum Arbeitsbereich hinzufügen (select workspace/data)
open two separate shells



# Python

Object-oriented
Procedural
Functional

Interpreted language: unlike Java which requires us to compile the jar file 


- Strongly typed: Explicit conversion required
- Python fails at runtime when asked to multiply/divide strings and strings. If you need the numbers stored inside a string variable, you need to cast it explicitly (`int_var = int("99")`).
- dynamically typed: typing information is only evaluated when running code (e.g., string * string in if-statement that is not evaluated does not fail)

Example:

```
Java: 
int count = 2;

Python:
count = 2
# type(count) = class:int (everything is an object)
word = "test"
count*word = "testtest"
word+count # raises TypeError (searches for addition-operation for two strings and fails)
word+str(count) + "test2"
# think: count = "2"
if False:
  cound+word # not error - never executed (dynamically typed, i.e., only evaluated at runtime)
if True:
  cound+word # error
```

<!-- https://www.futurelearn.com/info/courses/python-in-hpc/0/steps/65121#:~:text=Python%20is%20both%20a%20strongly,is%20determined%20only%20during%20runtime. -->


Our focus: using the programming language to build things (not to understand the programming language)

# Important

Students should not set up their machines during the session.
Ask students to complete the tutorial on github codespaces

setup for the data directory:
```
shell:
cd ..
mkdir data
Datei: Ordner zum Arbeitsbereich hinzufügen (select workspace/data)
open two separate shells
```

# Creating dictionaries

Optional additional challenge: use the constants as keys (package development docs)

# JIF labeler:

Remember:

- Call-by-value: for "simple data types" (str, int, float)
- Call-by-reference: for mutable objects (list, dict, object)

```
# Starting point: add_journal_impact_factor(record: dict) changes the values of the dictionary outside the function (without an explicit return/assignment)

def change_journal(journal: str) -> None:
  journal = "Nature"

journal = "MIS Quarterly"
change_journal(journal)
print(journal) # prints MIS Quarterly (not nature) due to call-by-value for simple/immutable data types in Python
```

Show input() when iterating over the results

Google
- "mypy no-untyped-def"
- "mypy no-untyped-def"
- "pylint missing-function-docstring"

Explain difference between positional and keyword arguments

Note: it can be helpful to make mistakes on purpose (e.g., indentation, etc.) to read and interpret the error messages with students.
