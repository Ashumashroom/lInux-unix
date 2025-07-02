#!/bin/bash
# ==========================================
# 🧾 Bash Variables: Random, UID, System Vars
# ==========================================

echo "========= 🔢 Special Bash Variables ========="

# ✅ Random number between 0 and 32767
echo "Random Number       : $RANDOM"

# Generate random number in a range (e.g., 1 to 100)
echo "Random (1–100)      : $(( RANDOM % 100 + 1 ))"

# ✅ Script name
echo "Script Name         : $0"

# ✅ Number of arguments
echo "Total Args Passed   : $#"

# ✅ All arguments
echo "All Args (quoted)   : $@"
echo "All Args (string)   : $*"

# ✅ Last command exit status
true
echo "Last Cmd Success?   : $?  (0 = success)"
false
echo "Last Cmd Success?   : $?  (non-zero = error)"

# ✅ PID of this script
echo "Current Script PID  : $$"

# ✅ PID of last background process
sleep 2 &
echo "Last BG Process PID : $!"

# ✅ UID of current user
echo "User ID (UID)       : $UID"

# ✅ Effective UID (useful in sudo)
echo "Effective UID       : $EUID"

# ✅ Parent Process ID
echo "Parent PID (PPID)   : $PPID"

# ✅ Bash process ID
echo "Bash PID (BASHPID)  : $BASHPID"

echo ""

echo "========= 🧪 Custom Variables ========="

# ✅ Declare and use a custom variable
my_name="Ashish"
echo "My Name             : $my_name"

# ✅ Read user input into variable
# read -p "Enter your city: " city
# echo "You live in        : $city"

echo ""

echo "========= 🌍 Environment Variables ========="

# ✅ Predefined environment variables
echo "Current User        : $USER"
echo "Home Directory      : $HOME"
echo "Current Shell       : $SHELL"
echo "Current Directory   : $PWD"
echo "Hostname            : $HOSTNAME"
echo "OS Type             : $OSTYPE"

echo ""

# ✅ Print all environment variables (warning: long output)
# env

# ✅ Export variable to subprocesses
export GREETING="Hello from parent!"
bash -c 'echo "Subshell GREETING: $GREETING"'

echo ""
