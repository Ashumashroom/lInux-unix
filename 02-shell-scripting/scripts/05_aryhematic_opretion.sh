#!/bin/bash

# ------------------------------------------------------------
# Script Name : math_and_strings.sh
# Description : Demonstrates arithmetic and string operations in Bash.
# Author      : YourName
# Usage       : ./math_and_strings.sh
# ------------------------------------------------------------

echo "=== Integer Arithmetic Operations ==="

a=10
b=3

# 1️⃣ Using let
let sum=a+b
let diff=a-b
let prod=a*b
let mod=a%b
echo "Using let:"
echo "Sum: $sum | Diff: $diff | Product: $prod | Modulo: $mod"

# 2️⃣ Using (( ))
echo "Using (( )):"
echo "Sum: $((a + b))"
echo "Diff: $((a - b))"
echo "Product: $((a * b))"
echo "Division: $((a / b))"
echo "Modulo: $((a % b))"

# 3️⃣ Using expr
# NOTE: Needs spaces and `expr` is external command
echo "Using expr:"
expr_sum=$(expr $a + $b)
echo "Sum with expr: $expr_sum"

# 4️⃣ Using bc (for floating point operations)
echo "Using bc for floating point:"
float_result=$(echo "scale=2; 10/3" | bc)
echo "10 divided by 3 = $float_result"

echo
echo "=== String Operations ==="

str1="Ashish"
str2="ashish"

# 1️⃣ Length of string
echo "Length of str1 ('$str1'): ${#str1}"

# 2️⃣ String comparison
if [[ "$str1" == "$str2" ]]; then
    echo "Strings are equal (case-sensitive)"
else
    echo "Strings are NOT equal (case-sensitive)"
fi

# 3️⃣ Case-insensitive comparison
if [[ "${str1,,}" == "${str2,,}" ]]; then
    echo "Strings are equal (case-insensitive)"
fi

# 4️⃣ String concatenation
full="$str1 Ranjan"
echo "Concatenated string: $full"

# 5️⃣ Check if string is empty
empty_str=""
if [[ -z "$empty_str" ]]; then
    echo "String is empty"
fi

# 6️⃣ Substring match
if [[ "$full" == *"Ranjan"* ]]; then
    echo "Substring 'Ranjan' found in '$full'"
fi
