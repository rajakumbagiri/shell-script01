#!/bin/bash

echo "All variable: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "current working directory: $PWD"
echo "Which user is running this script: $USER"
echo "Home directory of current user: $HOME"
echo "Host name: $HOSTNAME"
echo "Process ID of current Shell script: $$"
sleep 60
echo "process ID of last background command: $!"