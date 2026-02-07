#!/bin/bash
##### Special variables
echo "All args passed to the script: $@"
echo "Number of var passed the script: $#"
echo " Script name: $0"
echo " who is running: $USER"
echo "Home directory of the current user $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of recently executed background process $!"
echo "All args passed to the script: $*"