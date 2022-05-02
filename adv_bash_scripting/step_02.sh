#!/bin/bash

# Script version global variable. Edit this whenever changes are made.
__ADVANCED_BASH_VERSION__="step_02"

# =======================================================================
#  Helper functions
# =======================================================================

# Echo's its arguments to std error
echo_se() { echo "$@" 1>&2; }

# Sets up auto-logging to a log file in the current directory
# using the specified logFileTag (arg 1) in the log file name.
auto_log() {
  local logFileTag="$1"
  if [[ "$logFileTag" != "" ]]; then
    local logFilePath="./autoLog_${logFileTag}.log"
    echo_se ".. logging to $logFilePath"
    exec 1> >(tee "$logFilePath") 2>&1
  else
    echo_se "** ERROR in autoLog: no logFile argument provided"
    exit 255
  fi
}

# =======================================================================
#  Command processing functions
# =======================================================================

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

# function that displays its 1st argument on standard output and
# its 2nd argument on standard error
function stdStreams() {
  local outTxt=${1:-"text for standard output"}
  local errTxt=${2:-"text for standard error"}
  echo    "to standard output: '$outTxt'"
  echo_se "to standard error:  '$errTxt'"
}

# function that illustrates auto-logging and capturing function output
#  arg 1 - (required) tag to identify the logfile
#  arg 2 - (optional) text for standard output
#  arg 3 - (optional) text for standard error
function testAutolog() {
  local logFileTag="$1"
  local outTxt=${2:-"text for standard output"}
  local errTxt=${3:-"text for standard error"}

  auto_log "$logFileTag"

  echo -e "\n1) Call stdStreams with output and error text:"
  stdStreams "$outTxt" "$outErr"

  echo -e "\n2) Capture stdStreams output in a variable and display it:"
  local output=`stdStreams "$outTxt" "$outErr"`
  echo -e "\tstdStreams output was:\n$output"

  echo -e "\n3) Call echo_se with some text:"
  echo_se "Some random text"

  echo -e "\n4)Capture echo_se function output in a variable and display it:"
  output=`echo_se "Some random text"`
  echo -e "echo_se output was: '$output'"
}

# =======================================================================
#  Main script command-line processing
# =======================================================================

function usage() {
  echo "
advanced_bash.sh, version $__ADVANCED_BASH_VERSION__

Usage: advanced_bash.sh <command> [arg1 arg2...]

Commands:
  helloWorld [text to display]
  stdStreams [text for stdout] [text for stderr]
  testAutolog <logFileTag> [text for stdout] [text for stderr]
"
  exit 255
}

CMD=$1    # initially $1 will be the command
shift     # after "shift", $1 will be the 1st arg; $2 the 2nd, etc.
case "$CMD" in
  helloWorld) helloWorld "$@"
    ;;
  stdStreams) stdStreams "$1" "$2"
    ;;
  testAutolog) testAutolog "$1" "$2" "$3"
    ;;
  *) usage
    ;;
esac


