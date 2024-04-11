
```
sudo systemctl start gdm
sudo telinit 5

sudo systemctl stop gdm
sudo telinit 3


sudo shutdown -h 10:00 "Shutting down for scheduled maintenance."
which diff
whereis diff


# Directories
pwd 	Displays the present working directory
cd ~ or cd 	Change to your home directory; shortcut name is ~ (tilde)
cd .. 	Change to parent directory (..)
cd - 	Change to previous working directory; - (minus)


# Exploring the file systems
cd /
ls
ls -a
tree
# Managing forward and back
pushd
popd
dirs

# Exploring drives
df -h
du -h

# Locating applications
wich
whereis

# Viewing files
Table: Command Line Utilities Used to View Files Command 	Usage
cat 	Used for viewing files that are not very long; it does not provide any scroll-back.
tac 	Used to look at a file backwards, starting with the last line.
less 	Used to view larger files because it is a paging program. It pauses at each screen full of text, provides scroll-back capabilities, and lets you search and navigate within the file.

NOTE: Use / to search for a pattern in the forward direction and ? for a pattern in the backward direction. An older program named more is still used, but has fewer capabilities: "less is more".
tail 	Used to print the last 10 lines of a file by default. You can change the number of lines by doing -n 15 or just -15 if you wanted to look at the last 15 lines instead of the default.
head 	The opposite of tail; by default, it prints the first 10 lines of a file.

touch
touch -t 202308191535 file01.txt

mkdir
rmdir

The relative pathname is from our directory. The absolute pathname is starting from the root.

Table: Standard File Streams Name 	Symbolic Name 	Value 	Example
standard input 	stdin 	0 	keyboard
standard output 	stdout 	1 	terminal
standard error 	stderr 	2 	log file

locate, updatedb
find
find . -name "LFS300*"


Table: Wildcards Wildcard 	Result
?  	Matches any single character
* 	Matches any string of characters
[set] 	Matches any character in the set of characters, for example [adf] will match any occurrence of a, d, or f
[!set] 	Matches any character not in the set of characters


Searching for files and directories named gcc:

$ find /usr -name gcc

Searching only for directories named gcc:

$ find /usr -type d -name gcc

Searching only for regular files named gcc:

$ find /usr -type f -name gcc

To find and remove all files that end with .swp:

$ find -name "*.swp" -exec rm {} ’;’

For example, to find files greater than 10 MB in size and running a command on those files:

$ find / -size +10M -exec command {} ’;’
find / -size +10M -exec command {} \;
find $HOME -size +10M -exec du -h {} \;

# Managing processes
kill -SIGKILL <pid>
kill -9 <pid>

ps lf
ps -u <user>
* ps have two styles: System V style and BSD Style.

reinice +5 <PID>

w, top, uptime
bg, fg
bg %1 fg %1
jobs

pstree

# Managing files difference
diff
diff3
patch
file


## Example with diff and patch
cd /tmp
cp /etc/group /tmp
dd if=/tmp/group of=/tmp/GROUP conv=ucase
patch --dry-run group patchfile
patch group patchfile
patch group < patchfile
patch < patchfile
diff -s group GROUP

## Backing up data
rsync

## Compressing data
gzip, bzip2, xz, zip


# User evironment
sudo useradd bjmoose
sudo userdel bjmoose
sudo /usr/sbin/groupadd anewgroup
sudo /usr/sbin/groupdel anewgroup
groups rjsquirrel
sudo /usr/sbin/usermod -G rjsquirrel rjsquirrel


Managing aliases
alias projx='cd /home/staff/RandD/projects/projectX/src'
!1  (Execute command #1 above)
!sl (Execute the command beginning with "sl")



id

# replacing strings in files

sed s/pattern/replace_string/ file 	Substitute first string occurrence in every line
sed s/pattern/replace_string/g file 	Substitute all string occurrences in every line
sed 1,3s/pattern/replace_string/g file 	Substitute all string occurrences in a range of lines
sed -i s/pattern/replace_string/g file 	Save changes for string substitution in the same file

## using sed
 awk -F: '{print "name: " $1 "shell: "$7}' /etc/passwd

Table: Commands and Usage Examples Command 	Usage
awk '{ print $0 }' /etc/passwd 	Print entire file
awk -F: '{ print $1 }' /etc/passwd 	Print first field (column) of every line, separated by a colon
awk -F: '{ print $1 $7 }' /etc/passwd 	Print first and seventh field of every line


student:/tmp> sed s/'\/sbin\/nologin'/'\/bin\/bash'/g /etc/passwd
student:/tmp> sed s:'/sbin/nologin':'/bin/bash':g /etc/passwd
student:/tmp> sed s:/sbin/nologin:/bin/bash:g /etc/passwd


# Managing Shell scripts

"#?" is a variable with results.
; is for executing diferent commands
&& is used instead of ; to abort the execution if something happen. it is good for command pipelines.
|| it is a refinement, this works like OR true table.

Table: Parameters and Their Meanings Parameter 	Meaning
$0 	Script name
$1 	First parameter
$2, $3, etc. 	Second, third parameter, etc.
$* 	All parameters
$# 	Number of arguments

Command sustitution e.g. ls /lib/modules/$(uname -r)/


#!/bin/bash
#
# check for an argument, print a usage message if not supplied.
#
if [ $# -eq 0 ] ; then
      echo "Usage: $0 argument"
      exit 1
fi
echo $1
exit 0




```
No olvidar las expresiones regulares
Poner ejemplos y mejorar el archivo
Separar los comandos útiles y recetas del manejo de shell.
pONER UN EJEMPLO DE APASO DE PARÁMETROS
Poner un ejemplo de menu.


ORIG_VAR=$(pwd)
echo $ORIG_VAR
if [[ -d $ORIG_VAR ]]; then echo $ORIG_VAR is a directory; else echo Is not a directory; fi


To update in the main table for reference.
bash provides a set of file conditionals, that can be used with the if statement, including those in the table.

You can use the if statement to test for file attributes, such as:

            File or directory existence
            Read or write permission
            Executable permission.

For example, in the following example:

if [ -x /etc/passwd ] ; then
    ACTION
fi

the if statement checks if the file /etc/passwd is executable, which it is not. Note the very common practice of putting:

; then

on the same line as the if statement.

You can view the full list of file conditions typing:

man 1 test.

 

Table: Conditions and Their Meanings Condition 	Meaning
-e file 	Checks if the file exists
-d file 	Checks if the file is a directory
-f file 	Checks if the file is a regular file (i.e., not a symbolic link, device node, directory, etc.)
-s file 	Checks if the file is of non-zero size
-g file 	Checks if the file has sgid set
-u file 	Checks if the file has suid set
-r file 	Checks if the file is readable
-w file 	Checks if the file is writable
-x file 	Checks if the file is executable


Table: Operator, Operation, and Meaning Operator 	Operation 	Meaning
&& 	AND 	The action will be performed only if both the conditions evaluate to true
|| 	OR 	The action will be performed if any one of the conditions evaluate to true
! 	NOT 	The action will be performed only if the condition evaluates to false


if [ string1 == string2 ] ; then
   ACTION
fi


Pay attention to thisç

            Using the expr utility
            expr is a standard but somewhat deprecated program. The syntax is as follows:

            expr 8 + 8
            echo $(expr 8 + 8)
            Using the $((...)) syntax
            This is the built-in shell format. The syntax is as follows:

            echo $((x+1))
            Using the built-in shell command let. The syntax is as follows:

            let x=( 1 + 2 ); echo $x

In modern shell scripts, the use of expr is better replaced with var=$((...)).

a_string_var="a string var here"
my_length=${#a_string_var}
echo ${a_string_var:0:5}
echo ${a_string_var#.}


[[ string1 > string2 ]] 	Compares the sorting order of string1 and string2
[[ string1 == string2 ]] 	Compares the characters in string1 with the characters in string2
myLen1=${#string1} 	Saves the length of string1 in the variable myLen1


case expression in
   pattern1) execute commands;;
   pattern2) execute commands;;
   pattern3) execute commands;;
   pattern4) execute commands;;
   * )       execute some default commands or nothing ;;
esac
     
my_string="Hello everybody"
echo $my_string
a_position=${my_string:0:1}
echo $a_position
an_index=1
a_position=${my_string:an_index:1}
echo $a_position

# loops
for i in {0..10}; do echo $i; done
for i in $(seq 1 1 10); do echo "skip by 2 value $i"; done

n=3; j=1; while [[ $j -le $n ]]; do echo $j; j=$(( $j + 1 )); done


## Security rules
last
echo -n my_password | sha512sum
chage is used for password expiry

chage --list newuser
sudo chage -E 2014-31-12 newuser
chage --list newuser
sudo userdel newuser
