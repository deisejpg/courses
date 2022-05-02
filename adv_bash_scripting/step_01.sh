#!/bin/bash

# Script version global variable. Edit this whenever changes are made.
__ADVANCED_BASH_VERSION__="step_01"

# function that says "Hello World!" and displays user-specified text.
function helloWorld() {
  local txt1=$1
  local txt2=$2
  shift; shift
  local rest=$@
  echo "Hello World!"
  echo "  text 1: '$txt1'"
  echo "  text 2: '$txt2'"
  echo "  rest:   '$rest'"
}

# =======================================================================
#  Main script command-line processing
# =======================================================================

function usage() {
  echo "advanced_bash.sh, version $__ADVANCED_BASH_VERSION__"
  echo ""
  echo "Usage: advanced_bash.sh <command> [arg1 arg2...]"
  echo ""
  echo "Commands:"
  echo "  helloWorld [text to display]"
  echo ""
  exit 1
}

CMD=$1    # initially $1 will be the command
shift     # after "shift", $1 will be the 1st arg; $2 the 2nd, etc.
case "$CMD" in
  helloWorld) helloWorld "$@"
    ;;
  *) usage
    ;;
esac


