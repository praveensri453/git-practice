#!/bin/bash

echo "all variables passed to the script: $@"
echo "Number of variables passed to the script: $#"
echo "script name: $0"
echo "current working directory:$PWD"
echo "home directory of current user:$HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"