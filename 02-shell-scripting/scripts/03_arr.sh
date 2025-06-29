#!/bin/bash

# -------------------------------------------------------
# Script Name : array_example.sh
# Description : Demonstrates usage of indexed and associative arrays in Bash.
# Author      : YourName
# Usage       : ./array_example.sh
# -------------------------------------------------------

echo "=== Indexed Array Operations ==="

# Declaring an indexed array
myarray=(1 20 30 ashis "ashish ranjan")

# Accessing individual elements
echo "My first name is: ${myarray[3]}"
echo "My full name is: ${myarray[4]}"

# Printing all elements
echo "All values in the array: ${myarray[*]}"

# Getting length of array
echo "Total number of elements in array: ${#myarray[@]}"

# Looping through array elements using indices
echo "Looping through the array using indices:"
for i in "${!myarray[@]}"; do
  echo "Index $i: ${myarray[$i]}"
done

# Adding an element to the array
myarray+=("newElement")
echo "After adding an element: ${myarray[*]}"
echo "New length of array: ${#myarray[@]}"

# Removing an element (e.g., at index 1)
unset myarray[1]
echo "After removing index 1: ${myarray[*]}"
echo "Length after removal: ${#myarray[@]}"

# Looping through values directly
echo "Looping through values directly:"
for value in "${myarray[@]}"; do
  echo "$value"
done

echo
echo "=== Associative Array (Key-Value) Operations ==="

# Declaring an associative array (Bash 4.0+ required)
declare -A person

# Assigning key-value pairs
person[name]="Ashish Ranjan"
person[age]=23
person[city]="Patna"
person[language]="Bash"

# Accessing values by keys
echo "Name       : ${person[name]}"
echo "Age        : ${person[age]}"
echo "City       : ${person[city]}"
echo "Language   : ${person[language]}"

# Looping through keys
echo "All key-value pairs in associative array:"
for key in "${!person[@]}"; do
  echo "$key => ${person[$key]}"
done
