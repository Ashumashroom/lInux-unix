#!/bin/bash

# ------------------------------------------------------------------------
# Script Name : logical_operators.sh
# Description : Demonstrates logical operators (AND, OR, NOT) in Bash.
# Author      : YourName
# Usage       : ./logical_operators.sh
# ------------------------------------------------------------------------

a=10
b=20
str1="Ashish"
str2="ashish"

echo "=== Logical AND (&&) ==="
# Both conditions must be true
if [[ $a -lt 15 && $b -gt 15 ]]; then
  echo "Both conditions are true: a < 15 AND b > 15"
else
  echo "AND condition failed"
fi

echo
echo "=== Logical OR (||) ==="
# At least one condition must be true
if [[ $a -lt 5 || $b -gt 15 ]]; then
  echo "At least one condition is true: a < 5 OR b > 15"
else
  echo "OR condition failed"
fi

echo
echo "=== Logical NOT (!) ==="
# Negates the condition
if [[ ! $a -gt 15 ]]; then
  echo "NOT condition true: a is NOT greater than 15"
else
  echo "a is greater than 15"
fi

echo
echo "=== Logical Ops with Strings ==="
# Case-sensitive check using AND
if [[ "$str1" != "$str2" && "${str1,,}" == "${str2,,}" ]]; then
  echo "Strings are not equal (case-sensitive) but equal when lowercased"
fi

echo
echo "=== Logical Ops with Files ==="
read -p "Enter a filename to check: " file

if [[ -e "$file" && -r "$file" ]]; then
  echo "$file exists and is readable"
elif [[ ! -e "$file" ]]; then
  echo "$file does not exist"
else
  echo "$file exists but is not readable"
fi
