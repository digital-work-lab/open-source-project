Run a Python script:
```
python script.py
```
Call it directly through the cli (providing parameters if necessary):
```
colrev status
```
Add a `colrev_status` field to the dictionary, and set its value to `md_imported`. Create a commit once the command prints the following:
```
Start simple colrev run
{'ID': 'Pare2023', 'title': 'On writing literature reviews', 'journal': 'MIS Quarterly', 'year': '2023', 'author': 'Pare, Guy', 'colrev_status': 'md_imported'}
```
$\hspace{8cm}$
Checkout the solution:
```
git reset --hard b4a3ea9575e39cf239398ee771b10cf232990ca5
```
Install package:
```
pip install "bibtexparser"
```
Add it as a dependency of CoLRev:
```
poetry add "bibtexparser"
```
Checkout the solution:
```
git reset --hard eb2ac2739be6c325fca18e045600f7736c8b5950
pip install -e .[dev]
```
Add your changes to the staging area and run the pre-commit hooks:
```
pre-commit run --all
```
Checkout the solution:
```
git reset --hard bd6f13032980617998e4374c1895cf314d7b1f0f
```
Use the typical CoLRev environments (objects), switch to an existing CoLRev project:
```
cd ..
git clone git@github.com:CoLRev-Environment/example.git
cd example
colrev status
```
To checkout the solution:
```
git reset --hard 4f164f40615485e7c8df9459d758df04519756f4
```
