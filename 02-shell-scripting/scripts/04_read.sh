#!/bin/bash

# -------------------------------------------------------
# Script Name : user_input.sh
# Description : Demonstrates different ways to read user input in Bash.
# Author      : YourName
# Usage       : ./user_input.sh
# -------------------------------------------------------

# 1️⃣ Basic read (prompts silently, next line input)
echo "Enter your name:"
read name
echo "Hello, $name!"

# 2️⃣ Inline prompt using read -p
read -p "Enter your age: " age
echo "You are $age years old."

# 3️⃣ Silent input using read -s (for passwords)
read -sp "Enter your password (input hidden): " password
echo -e "\nPassword received!"

# 4️⃣ Read into an array
echo "Enter three favorite colors (space-separated):"
read -a colors
echo "Your favorite colors are: ${colors[*]}"

# 5️⃣ Read single character input with -n
read -n 1 -p "Do you want to continue? (y/n): " choice
echo -e "\nYou pressed: $choice"

# 6️⃣ Read multiple values in one line using IFS
# IFS - Internal Field Separator
echo "Enter your full name and city (e.g., John Doe Mumbai):"
IFS=' ' read fname lname city
echo "First Name: $fname"
echo "Last Name : $lname"
echo "City      : $city"
