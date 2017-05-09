# bash_scripts

A collection of bash scripts.

## Scripts

### notes.sh

Write and manage notes from the command line. Useful for keeping a record of
useful commands as well as general note taking in text format.

For help:
```
notes.sh -h
```

Examples:

-Insert the a previous command in a note with a comment:
```
ls -la
notes.sh -n "!!" -c "a comment" mynotes
```
