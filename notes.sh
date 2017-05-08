#!/bin/bash 
# A simple script to manage and write notes in the command line
#
# Created by: Fernando Olguin
# Last modify: 09 May 2017
#

##### Constants
NOTES=~/Notes
EDITOR=vim

##### Functions
function list_dir {
    # List the notes in the notes directory
    ls -lh $NOTES
}

function get_filename {
    if [ -n $1 ]; then
        filename=$1
    else
        exit 1
    fi
}

function usage {
    cat <<fin
Usage: notes.sh [[-h] [-l] [-e] [-a note] [-c comment]] filename

Options:
  -h, --help    Help
  -l, --list    List the notes in $NOTES
  -e, --edit    Open the note in filename in vim
  -a, --append  Append note to filename
  -c, --comment Prepend a comment to the note
fin
}

##### Main
note=""
comment=""
while [ "$1" != "" ]; do
    case $1 in
        -l | --list )       list_dir
                            exit
                            ;;
        -e | --edit )       shift
                            $EDITOR "$NOTES/$1"
                            exit
                            ;;
        -a | --append )     shift
                            note="$1\n"
                            ;;
        -c | --comment )    shift
                            comment="# $1\n"
                            ;;
        -h | --help )       usage
                            ;;
        * )                 get_filename $1
                            ;;
    esac
    shift
done

echo -e $comment$note >> "$NOTES/$filename" 
