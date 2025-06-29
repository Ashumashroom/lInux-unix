#!/bin/bash

# -------------------------------------------------------
# Script Name : variables.sh
# Description : Demonstrates usage of variables in Bash.
# Author      : YourName
# Usage       : ./variables.sh
# -------------------------------------------------------

# Declaring and initializing variables
a=10
name="Ashish"
age=23

# Using variables in an echo statement
echo "My name is $name and my age is $age."

# Reassigning a variable
name="Ranjan"
echo "My name is now $name."

# Storing the output of a command into a variable
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME."

# Declaring a read-only variable
readonly college="IITA"
echo "My college name is $college."

# Capturing and displaying the output of the 'ls -ltr' command
command_output=$(ls -ltr)
echo "All files in this directory:"
echo "$command_output"
