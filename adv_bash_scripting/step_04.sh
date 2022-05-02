#!/bin/bash

# Script version global variable. Edit this whenever changes are made.
__ADVANCED_BASH_VERSION__="step_03"

# =======================================================================
#  Helper functions
# =======================================================================

# Shorter format date
date2() { date '+%Y-%m-%d %H:%M:%S'; }

# Echo's its arguments and the date to std error
echo_se() { echo "$@ - `date2`" 1>&2; }
maybe_echo() {
  local do_echo=${ECHO_VERBOSE:-1}
  if [[ "$do_echo" == "1" ]]; then echo_se "$@"; fi
}

# Sets up auto-logging to a log file in the current directory
# using the specified logFileTag (arg 1) in the log file name.
auto_log() {
  local logFileTag="$1"
  local logFilePath="./autoLog_${logFileTag}.log"
  exec 1> >(tee "$logFilePath") 2>&1
  check_res $? "Logging to '$logFilePath'"
}

# General function that exits after printing its text
#   in a standard format which can be easily grep'd.
err() {
  echo_se "** ERROR: $@ ...exiting"; exit 255;
}
# Function to check result code of programs.
# Exits with a standard error message if code is non-zero.
# Otherwise displays a completion message.
#   arg 1 - the return code (usually $?)
#   arg 2 - text describing what ran
check_res() {
  if [[ $1 == 0 ]]; then maybe_echo ".. check_res: $2 OK";
  else err "$2 returned non-0 exit code $1"; fi
}
# Function that checks if a directory exists and exits if not.
#   arg 1 - the directory name
#   arg 2 - text describing the directory (optional)
check_dir() {
  if [[ ! -d "$1" ]]; then err "$2 Directory '$1' not found"
  else maybe_echo ".. $2 directory '$1' exists"; fi
}
# Function that checks if a file exists
#   arg 1 - the file name
#   arg 2 - text describing the file (optional)
check_file() {
  if [[ ! -e "$1" ]]; then err "$2 File '$1' not found"
  else maybe_echo ".. $2 file '$1' exists"; fi
}
# Function checks if a file exists & has non-0 length, else exits.
#   arg 1 - the file name
#   arg 2 - text describing the file (optional)
check_file_not_empty() {
  if [[ ! -e "$1" ]]; then err "$2 File '$1' not found"
  elif [[ ! -s "$1" ]]; then err "$2 File '$1' is empty"
  else maybe_echo ".. $2 file '$1' exists and is not empty"; fi
}
# Checks that its 1st argument is not empty
#   arg 1 - the value
#   arg 2 - text desribing what the value is (optional)
check_not_empty() {
  local val="$1"; local info=${2:-'value'}
  if [[ "$val" == "" ]]; then err "$info value is empty"
  else maybe_echo ".. $info value not empty"
  fi
}
# Function that checks whether the two values supplied are equal (as strings)
#   arg 1 - 1st value
#   arg 2 - 2nd value
#   arg 3 - text describing 1st value (optional)
#   arg 4 - text describing 2nd value (optional)
check_equal() {
  local val1="$1"; local val2="$2"
  local tag1=${3:-"val1"}; local tag2=${4:-"val2"}
  if [[ "$1" == "$2" ]]; then
    maybe_echo ".. check_equal $tag1 '$val1' OK"
  else
    echo_se "check_equal: not equal:
    ${tag1}: '$val1'
    ${tag2}: '$val2'
    "
    err "check_equal $tag1 $tag2"
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
  exit 1
}

CMD=$1    # initially $1 will be the command
shift     # after "shift", $1 will be the 1st arg; $2 the 2nd, etc.
if [[ "$CMD" != "" ]]; then
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
fi

