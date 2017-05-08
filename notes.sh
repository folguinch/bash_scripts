#!/bin/bash
# A simple script to manage notes in the command line

function list_dir {
    # List the notes in the notes directory
    ls -lh $NOTES
}

NOTES=~/Notes

if [ $1 = "-l" ]; then
    list_dir
fi
