#!/bin/bash -x
# A simple script to manage notes in the command line

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
                            note=$1
                            ;;
        -c | --comment )    shift
                            comment=$1
                            ;;
        * )                 get_filename $1
                            ;;
    esac
    shift
done
