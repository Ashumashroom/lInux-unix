#!/bin/bash

# -------------------------------------------------------------------
# Script Name : case_example.sh
# Description : Demonstrates use of case (switch-case) in Bash.
# Author      : YourName
# Usage       : ./case_example.sh
# -------------------------------------------------------------------

# Prompt user for input
echo "Choose an option:"
echo "1. Show Date"
echo "2. List Files"
echo "3. Show Current Directory"
echo "4. Exit"
read -p "Enter your choice [1-4]: " choice

# Use case to handle the input
case $choice in
  1)
    echo "Today's date is: $(date)"
    ;;
  2)
    echo "Files in the current directory:"
    ls -l
    ;;
  3)
    echo "You are in: $(pwd)"
    ;;
  4)
    echo "Exiting... Goodbye!"
    exit 0
    ;;
  *)
    echo "Invalid option. Please enter a number between 1 and 4."
    ;;
esac
