#!/bin/bash
# ========================================
# 🧠 Shell Scripting - Functions (All-in-One Guide)
# ========================================

# ----------------------------------------
# ✅ 1. Function Declaration (two ways)
# ----------------------------------------

# Method 1
function greet() {
  echo "Hello, $1!"
}

# Method 2 (POSIX-compatible)
greet_alt() {
  echo "Hi there, $1!"
}

# ----------------------------------------
# ✅ 2. Function Call
# ----------------------------------------

greet "Ashish"
greet_alt "Shell Master"

# ----------------------------------------
# ✅ 3. Function Arguments: $1, $2, $@, $*
# ----------------------------------------

show_args() {
  echo "First argument: $1"
  echo "Second argument: $2"
  echo "All args as list: $@"
  echo "All args as single string: $*"
}

show_args "Linux" "Shell" "Script"

# ----------------------------------------
# ✅ 4. Return Values (A) via exit code
# ----------------------------------------

check_even() {
  if (( $1 % 2 == 0 )); then
    return 0  # success
  else
    return 1  # failure
  fi
}

check_even 4 && echo "4 is Even" || echo "4 is Odd"
check_even 7 && echo "7 is Even" || echo "7 is Odd"

# ----------------------------------------
# ✅ 4. Return Values (B) via echo and command substitution
# ----------------------------------------

get_current_date() {
  echo "$(date '+%Y-%m-%d')"
}

today=$(get_current_date)
echo "Today's date is: $today"

# ----------------------------------------
# ✅ 5. Local Variables Inside Function
# ----------------------------------------

local_demo() {
  local name="Ash"
  echo "Inside function: name = $name"
}

local_demo
# echo $name  # This will be empty or undefined outside function

# ----------------------------------------
# ✅ 6. Default Argument Value Using Parameter Expansion
# ----------------------------------------

say_hello() {
  local name=${1:-"Guest"}
  echo "Hello, $name!"
}

say_hello          # No argument passed
say_hello "Ashish" # Argument passed

# ----------------------------------------
# ✅ 7. Named Parameters Style (for readability)
# ----------------------------------------

create_user() {
  local username=$1
  local role=$2
  echo "Creating user: $username with role: $role"
}

create_user "ashishranjan" "admin"

# ----------------------------------------
# ✅ 8. Return Code & Error Handling
# ----------------------------------------

divide() {
  if [ "$2" -eq 0 ]; then
    echo "❌ Error: Cannot divide by zero"
    return 1
  fi
  echo "Quotient: $(( $1 / $2 ))"
}

divide 10 2
divide 5 0

# ----------------------------------------
# ✅ 9. Help Menu Function (Usage Instruction)
# ----------------------------------------

help_menu() {
  echo "Usage: $0 [start|stop|restart]"
}

if [ $# -eq 0 ]; then
  help_menu
  exit 1
fi

# ----------------------------------------
# ✅ 10. Function From Another File (Modular Script)
# ----------------------------------------

# File: utils.sh
# log() {
#   echo "[LOG] $1"
# }

# To use in main script:
# source ./utils.sh
# log "App started..."

# ----------------------------------------
# ✅ 11. Function That Accepts Array
# ----------------------------------------

print_array() {
  local arr=("$@")  # capture all arguments as array
  for item in "${arr[@]}"; do
    echo "Item: $item"
  done
}

print_array "apple" "banana" "cherry"

# ----------------------------------------
# ✅ 12. Recursive Function (e.g., Factorial)
# ----------------------------------------

factorial() {
  local n=$1
  if (( n <= 1 )); then
    echo 1
  else
    local prev=$(factorial $((n - 1)))
    echo $((n * prev))
  fi
}

echo "Factorial of 5 is: $(factorial 5)"

# ========================================
# ✅ End of Function Demo
# ========================================
