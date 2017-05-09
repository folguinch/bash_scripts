# bash_scripts

A collection of bash scripts.

## Scripts

### notes.sh

Write and manage notes from the command line. Useful for keeping a record of
useful commands as well as general note taking in text format.

At the moment it assumes that a *Notes* directory exists in the user home.

For help:
```
notes.sh -h
```

Examples:

- Insert the previous command in *mynotes* with a comment:
```
ls -la # Example command
notes.sh -n "!!" -c "a comment" mynotes
```

- Edit *mynotes* in `vim`:
```
notes.sh -e mynotes
```
