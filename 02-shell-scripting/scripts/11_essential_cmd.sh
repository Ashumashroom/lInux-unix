#!/bin/bash
# ====================================================
# 🧠 Shell Script: Full Feature Demo with Core Commands
# ====================================================

# ✅ Get Script Info
echo "Script Name   : $(basename "$0")"     # only the filename
echo "Script Dir    : $(dirname "$0")"      # directory part
echo "Script Path   : $(realpath "$0")"     # absolute full path

echo ""

# ✅ Accept arguments and shift through them
echo "All Arguments : $@"

while [ "$#" -gt 0 ]; do
  case "$1" in
    skip)
      echo "Skipping '$1'"
      shift
      continue
      ;;
    stop)
      echo "Stopping at '$1'"
      break
      ;;
    *)
      echo "Processing argument: $1"
      ;;
  esac
  shift
done

echo ""

# ✅ Sleep for 2 seconds (simulate delay)
echo "Waiting for 2 seconds..."
sleep 2

echo ""

# ✅ Check if file or directory exists
check_path="./test_file_or_folder"   # you can change this path

if [ -e "$check_path" ]; then
  echo "✅ Path exists: $check_path"

  if [ -f "$check_path" ]; then
    echo "📄 It is a file."
  elif [ -d "$check_path" ]; then
    echo "📁 It is a directory."
  fi
else
  echo "❌ Path does not exist: $check_path"
fi

echo ""

# ✅ Function to check command success using $?
run_command() {
  echo "Running: $1"
  eval "$1"
  status=$?

  if [ "$status" -eq 0 ]; then
    echo "✅ Command succeeded."
  else
    echo "❌ Command failed with status $status"
  fi
}

# Test a valid and an invalid command
run_command "ls"
run_command "ls /no_such_folder"

echo ""

# ✅ Exit the script with a custom exit code
echo "Exiting script..."
exit 0   # 0 = success, non-zero = error

# (After this point, nothing will run because of `exit`)
echo "This line will NOT be printed."
