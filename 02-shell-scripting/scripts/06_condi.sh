#!/bin/bash

# ------------------------------------------------------------------
# Script Name : conditions.sh
# Description : Demonstrates conditional logic and comparisons in Bash.
# Author      : YourName
# Usage       : ./conditions.sh
# ------------------------------------------------------------------

echo "=== Integer Comparison ==="
a=10
b=20

# Using [ ]
if [ $a -lt $b ]; then
  echo "$a is less than $b"
fi

# Using [[ ]] (recommended for string and extended tests)
if [[ $a -ne $b ]]; then
  echo "$a is not equal to $b"
fi

# Comparison operators for integers
# -eq, -ne, -lt, -le, -gt, -ge
echo "All integer comparisons:"
echo "$a -eq $b: $([ $a -eq $b ] && echo true || echo false)"
echo "$a -ne $b: $([ $a -ne $b ] && echo true || echo false)"
echo "$a -lt $b: $([ $a -lt $b ] && echo true || echo false)"
echo "$a -le $b: $([ $a -le $b ] && echo true || echo false)"
echo "$a -gt $b: $([ $a -gt $b ] && echo true || echo false)"
echo "$a -ge $b: $([ $a -ge $b ] && echo true || echo false)"

echo
echo "=== String Comparison ==="
str1="Ashish"
str2="ashish"

# String comparison: ==, !=, <, >
if [[ "$str1" != "$str2" ]]; then
  echo "'$str1' is not equal to '$str2'"
fi

# Case-insensitive comparison using lowercase
if [[ "${str1,,}" == "${str2,,}" ]]; then
  echo "'$str1' equals '$str2' (case-insensitive)"
fi

# -z (zero length), -n (non-zero length)
if [[ -z "$empty" ]]; then
  echo "Variable 'empty' is empty"
fi

if [[ -n "$str1" ]]; then
  echo "Variable 'str1' is not empty"
fi

echo
echo "=== File Condition Checks ==="

file="conditions.sh"

# Common file condition tests
# -e (exists), -f (regular file), -d (directory), -r, -w, -x
if [[ -e "$file" ]]; then
  echo "$file exists"

  [[ -f "$file" ]] && echo "$file is a regular file"
  [[ -r "$file" ]] && echo "$file is readable"
  [[ -w "$file" ]] && echo "$file is writable"
  [[ -x "$file" ]] && echo "$file is executable"
fi

echo
echo "=== if-else and elif Example ==="

read -p "Enter your marks (0–100): " marks

if [[ $marks -ge 90 ]]; then
  echo "Grade: A+"
elif [[ $marks -ge 75 ]]; then
  echo "Grade: A"
elif [[ $marks -ge 60 ]]; then
  echo "Grade: B"
elif [[ $marks -ge 40 ]]; then
  echo "Grade: C"
else
  echo "Grade: FAIL"
fi
