# 🐧 Basic Linux Commands with Platform Differences (Linux/macOS/Windows)

| Command | Description | Linux/macOS | Windows CMD |
|--------|-------------|--------------|--------------|
| `ls` | List directory contents | ✅ `ls` | ❌ Use `dir` |
| `ls -l` | Long listing | ✅ | ❌ |
| `ls -lt` | Sort by modified time (latest first) | ✅ | ❌ |
| `ls -ltr` | Sort reverse with time | ✅ | ❌ |
| `clear` | Clear terminal screen | ✅ | ❌ Use `cls` |
| `pwd` | Print working directory | ✅ | ❌ Use `cd` |
| `cd` | Change directory | ✅ | ✅ |
| `cd ..` | Go up one directory | ✅ | ✅ |
| `cd -` | Go to previous dir | ✅ | ❌ |
| `touch file` | Create empty file | ✅ | ❌ Use `echo.> file` |
| `mkdir dir` | Create directory | ✅ | ✅ |
| `rmdir dir` | Remove empty directory | ✅ | ✅ |
| `rm file` | Delete file | ✅ | ❌ Use `del file` |
| `rm -rf dir` | Force delete folder recursively | ✅ | ❌ Use `rmdir /s /q dir` |
| `cat file` | Display file contents | ✅ | ✅ |
| `cat > file` | Overwrite a file | ✅ | ❌ |
| `less file` | View file (scrollable) | ✅ | ❌ |
| `more file` | View file (page-by-page) | ✅ | ✅ |
| `head -n x file` | View first x lines | ✅ | ❌ |
| `tail -n x file` | View last x lines | ✅ | ❌ |

---

## 🧭 Navigation in `less` and `more`

| Action | Shortcut |
|--------|----------|
| Search forward | `/word` |
| Next match | `n` |
| Previous match | `N` |
| Top of file | `g` |
| Bottom of file | `G` |
| Quit | `q` |

---

## 📁 Path Types

| Type | Example | Meaning |
|------|---------|---------|
| Absolute | `/home/user/file.txt` | Starts from root `/` |
| Relative | `../file.txt` | Based on current directory |
| `.` | Current directory |
| `..` | Parent directory |

---

## 📂 File Operations

| Command | Meaning | Example |
|---------|---------|---------|
| `cp a b` | Copy file `a` to `b` | `cp file1.txt file2.txt` |
| `cp ../a .` | Copy from parent folder | `cp ../readme.md .` |
| `mv a b` | Rename/move `a` to `b` | `mv old.txt new.txt` |

---

## 🔍 Searching

| Command | Description | Example |
|---------|-------------|---------|
| `grep` | Find lines matching pattern | `grep "error" log.txt` |
| `egrep` | Extended grep (like OR, `+`) | `egrep "fail|error" log.txt` |
| `grep -r` | Recursive grep | `grep -r "TODO" .` |
| `grep -i` | Case insensitive | `grep -i "linux" notes.txt` |

---

## 🔠 Sorting & Uniqueness

| Command | Description | Example |
|---------|-------------|---------|
| `sort file` | Alphabetically sort | `sort names.txt` |
| `sort -r file` | Reverse sort | `sort -r names.txt` |
| `sort file | uniq` | Remove duplicates | `sort cities.txt | uniq` |

---

## 🔨 Splitting Files

| Command | Description | Example |
|---------|-------------|---------|
| `split -l 100 file` | Split file into parts of 100 lines each | `split -l 100 bigfile.txt` |

---

## 🧪 Editors

| Editor | Launch | Exit |
|--------|--------|------|
| `vi file` | Opens vi editor | `:wq` to save and exit |
| `nano file` | Opens nano (easier) | `Ctrl + X` then `Y` and `Enter` |

---

## ✅ Quick Summary for Practice

```bash
ls -ltr
clear
pwd
cd ..
cd -
touch a.txt
rm a.txt
mkdir test
rmdir test
rm -rf test
cp a.txt b.txt
mv b.txt c.txt
cat file.txt
less file.txt
more file.txt
head -n 5 file.txt
tail -n 10 file.txt
sort file.txt
sort -r file.txt
sort file.txt | uniq
split -l 50 big.txt
grep "error" log.txt
egrep "warn|fail" log.txt

| Command                                     | Description                      | Linux/macOS | Windows CMD                      |
| ------------------------------------------- | -------------------------------- | ----------- | -------------------------------- |
| `shuf file`                                 | Shuffle lines randomly           | ✅           | ❌                                |
| `wc -l file`                                | Count number of lines in file    | ✅           | ❌                                |
| `cmp fileA fileB`                           | Byte-by-byte file comparison     | ✅           | ❌                                |
| `diff -u fileA fileB`                       | Show unified diff between files  | ✅           | ❌                                |
| `find /path -name "<file>"`                 | Find files by name               | ✅           | ❌                                |
| `updatedb`                                  | Update locate database           | ✅           | ❌                                |
| `locate <file>`                             | Locate file using prebuilt index | ✅           | ❌                                |
| `history \| grep sort`                      | Filter command history           | ✅           | ❌                                |
| `help`                                      | Help for shell built-ins         | ✅           | ❌                                |
| `man`                                       | Show manual page                 | ✅           | ❌                                |
| `which`                                     | Show command path                | ✅           | ❌ Use `where`                    |
| `alias`                                     | Create command shortcut          | ✅           | ❌                                |
| `alias -p`                                  | List all aliases                 | ✅           | ❌                                |
| `unalias`                                   | Remove alias                     | ✅           | ❌                                |
| `bc`                                        | Calculator in terminal           | ✅           | ❌                                |
| `cal`                                       | Show calendar                    | ✅           | ❌                                |
| `uptime`                                    | Show system uptime               | ✅           | ❌                                |
| `script`                                    | Record terminal session          | ✅           | ❌                                |
| `printenv`                                  | Show environment variables       | ✅           | ❌                                |
| `export VAR=value`                          | Set environment variable         | ✅           | ❌                                |
| `source ~/.bash_profile`                    | Reload shell config              | ✅           | ❌                                |
| `gzip -k file`                              | Compress file and keep original  | ✅           | ❌                                |
| `gunzip file.gz`                            | Decompress gzip file             | ✅           | ❌                                |
| `tar -czvf file.tar.gz x y`                 | Archive multiple files           | ✅           | ❌                                |
| `zip myfile.zip x y`                        | Create zip archive               | ✅           | ❌ Use third-party tool           |
| `unzip archive.zip`                         | Extract zip archive              | ✅           | ❌                                |
| `wget -O file URL`                          | Download file from URL           | ✅           | ❌ Use `Invoke-WebRequest`        |
| `curl -o file URL`                          | Download file with curl          | ✅           | ❌ Available in recent PowerShell |
| `apt install pkg`                           | Install package (Debian/Ubuntu)  | ✅           | ❌                                |
| `dnf install pkg`                           | Install package (Fedora/CentOS)  | ✅           | ❌                                |
| `rpm -qa \| grep sql`                       | Search installed RPMs            | ✅           | ❌                                |
| `dnf list installed`                        | List all installed packages      | ✅           | ❌                                |
| `apt search pkg`                            | Search for package               | ✅           | ❌                                |
| `systemctl start <service>`                 | Start a service                  | ✅           | ❌                                |
| `systemctl list-units --type=service --all` | List all services                | ✅           | ❌                                |
| `uname -a`                                  | Show system info                 | ✅           | ❌ Use `systeminfo`               |
| `df -h`                                     | Show disk space usage            | ✅           | ❌ Use `wmic logicaldisk`         |
| `free -h`                                   | Show memory usage                | ✅           | ❌ Use `systeminfo`               |
