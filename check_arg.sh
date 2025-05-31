#!/bin/bash

# Default mode is interactive
MODE="interactive"
USERNAMES=()
REGEX='^[a-z][a-z0-9_]*$'

# Step 1:
if [[ "$1" == "-i" || "$1" == "-n" ]]; then
    if [[ "$1" == "-n" ]]; then
        MODE="NON-interactive"
    fi
    shift
fi

# Step 2:
if [[ "$1" == -* ]]; then
    echo "ERR: option after an argument or wrong argument or wrong option 2: $1"
    echo "Please provide correct arguments and options"
    echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
    echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
    echo -e "\tArguments: list of user names"
    echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
    exit 1
fi

# Step 3:
if [[ $# -lt 1 ]]; then
    echo "Please provide correct arguments and options"
    echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
    echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
    echo -e "\tArguments: list of user names"
    echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
    exit 1
fi

# Step 4:
for uname in "$@"; do
    if [[ ! "$uname" =~ $REGEX ]]; then
        echo "ERR: option after an argument or wrong argument or wrong option 2: $uname"
        echo "Please provide correct arguments and options"
        echo "Usage: ./check_arg.sh [-i|-n] [USERS]"
        echo -e "\tOptions (optional): -i or -n for interactive or non-interactive execution"
        echo -e "\tArguments: list of user names"
        echo -e "\tEvery user name must match this regular expression: '^[a-z][a-z0-9_]*$'"
        exit 1
    fi
done

# Success
echo "Options and arguments okay"
echo "running in $MODE mode"
exit 0