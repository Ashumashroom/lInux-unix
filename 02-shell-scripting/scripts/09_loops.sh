#!/bin/bash

# ------------------------------------------------------------------------
# Script Name : loops_examples.sh
# Description : Demonstrates different types of loops in Bash scripting.
# Author      : YourName
# Usage       : ./loops_examples.sh
# ------------------------------------------------------------------------

echo "=== 1️⃣ Basic for loop over a list ==="
for i in 1 2 3 4 5; do
  echo "Number: $i"
done

echo
echo "=== 2️⃣ For loop with wildcards (file loop) ==="
# Loop through all .sh files in current directory
for file in *.sh; do
  echo "Found script file: $file"
done

echo
echo "=== 3️⃣ For loop over an array ==="
fruits=("apple" "banana" "cherry")
for fruit in "${fruits[@]}"; do
  echo "Fruit: $fruit"
done

echo
echo "=== 4️⃣ While loop (counting) ==="
count=1
while [[ $count -le 5 ]]; do
  echo "Count: $count"
  ((count++))
done

echo
echo "=== 5️⃣ Until loop (counting until true) ==="
n=1
until [[ $n -gt 5 ]]; do
  echo "Until count: $n"
  ((n++))
done

echo
echo "=== 6️⃣ Read a file line-by-line using while read ==="
# Create sample.txt if not exists
echo -e "Line1\nLine2\nLine3" > sample.txt

while read line; do
  echo "Line from file: $line"
done < sample.txt

echo
echo "=== 7️⃣ Read file with custom IFS (Internal Field Separator) ==="
# Simulating a CSV-style line
echo -e "Ashish,23,India\nJohn,30,USA" > data.csv

while IFS=',' read -r name age country; do
  echo "Name: $name | Age: $age | Country: $country"
done < data.csv

echo
echo "=== 8️⃣ While loop + if condition (even/odd) ==="
num=1
while [[ $num -le 5 ]]; do
  if (( num % 2 == 0 )); then
    echo "$num is even"
  else
    echo "$num is odd"
  fi
  ((num++))
done
