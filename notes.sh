#!/bin/bash -x
# A simple script to manage notes in the command line

# Fixed variables
NOTES=~/Notes
EDITOR=vim

# Functions
function list_dir {
    # List the notes in the notes directory
    ls -lh $NOTES
}


#Main
while [ "$1" != "" ]; do
    case $1 in
        -l | --list )   list_dir
                        ;;
        -e | --edit )   shift
                        $EDITOR "$NOTES/$1"
                        ;;
        -a | --append ) shift
                        message=$1
                        echo $message >> "$NOTES/$1"
                        ;;
        * )             exit 1
                        ;;
    esac
    shift
done
