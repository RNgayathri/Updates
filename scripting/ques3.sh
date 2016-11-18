#!/bin/sh
echo "enter the name of the file to store PID's of running processes-"
read name
ps -o pid > $name
echo "PID's of running processes are stored in the file called $name"


