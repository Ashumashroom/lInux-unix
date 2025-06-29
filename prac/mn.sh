#!/bin/bash

# -------------------------------------------------------
# Script Name : string_operations.sh
# Description : Demonstrates string operations in Bash.
# Author      : YourName
# Usage       : ./string_operations.sh
# -------------------------------------------------------

# Original string
str="Ashish Ranjan"

# 1️⃣ String Length
echo "Original string: '$str'"
echo "Length of the string: ${#str}"

# 2️⃣ Convert to Uppercase
uppercase=${str^^}
echo "Uppercase: $uppercase"

# 3️⃣ Convert to Lowercase
lowercase=${str,,}
echo "Lowercase: $lowercase"

# 4️⃣ String Replacement
# Replace first occurrence of 'Ashish' with 'Mr.'
replaced=${str/Ashish/Mr.}
echo "After replacing 'Ashish' with 'Mr.': $replaced"

# Replace all occurrences of 'a' with '@'
replaced_all=${str//a/@}
echo "After replacing all 'a' with '@': $replaced_all"

# 5️⃣ Substring / Slicing
# Syntax: ${string:start:length}
slice=${str:0:6}
echo "Substring (0 to 5): $slice"

slice_end=${str:7}
echo "Substring from index 7 to end: $slice_end"

# 6️⃣ Extract last 6 characters
last6=${str: -6}  # Note the space before -6
echo "Last 6 characters: $last6"
