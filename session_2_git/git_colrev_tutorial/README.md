# Git tutorial: CoLRev example

This repository is part of a Git tutorial and contains example data based on [CoLRev](https://github.com/CoLRev-Environment/colrev).

To retrieve the data, open the Git bash and run

```
git clone https://github.com/CoLRev-Environment/git-tutorial-example
```


## Notes

The patches are generated from a local CoLRev branch named ``tutorial``.

To generate a patch, run 

```
git format-patch -1 <sha>
```

git format-patch -1 968074491dba9efca0488d20883b692abeb7ffcd --output=rec_dict.patch
git format-patch -1 fdd9e749fc7ca5aa367d341b8a6bc73a2b3c7d58 --output=code_skeleton.patch
git format-patch -1 b80b4315c3aaa4149da28a939481741a25575ed4 --output=endpoint_details.patch
git format-patch -1 d61cab4957570483c49202f22669ecfaf8288ea9 --output=functionality_implemented.patch

