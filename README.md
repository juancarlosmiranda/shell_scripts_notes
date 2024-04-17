# Bash/ Shell script notes

This repository contains notes and examples related to programming with Bash and Shell script in Unix like systems. A
list of useful commands to perform tasks from the console, something that can often get us out of trouble in different
situations.

# Contents

1. Linux commands.
2. Bash programming.
3. Special tricks.

# 1. Linux commands

## Console

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| history | Clean command history | ``` history -c ``` |
| . | Command execution | ``` RESULT_FROM=$(/usr/bin/pwd); ``` |
| . | Command execution (deprecated) | ``` RESULT_FROM=`/usr/bin/pwd`; ``` |

## User account (TODO)
| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| who | Who is connected | ```who```  |
| whoami | What is my account | ```whoami```  |


## Output redirection (TODO)

## Managing files and directories

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| pwd | Current directory | ```pwd```  |
| du | List space used in human readable format | ```du -h```  |
| du, sort, head | List files | List files and summarized and with blocks in Megas, sort numerically and in reverse to show the largest, select the first 20.<br>  ```du -sm * &#124; sort -nr &#124; head -20```  |
| find | Search files | Look for the string 'unit1' in the /etc directory and subdirectories in files of type f <br> ``` find /etc -depth -type f -exec grep -il unit1 {} \; ``` |
| find | Search for files larger than 1000 Megabytes  | ``` find . -size +1000M ``` .|
| find, grep | Search for a text string in all found files. | * ``` find . -name *.ext -exec grep "SEARCHED_STRING" '{}' \; -print > ~/OUTPUT_FILE ``` |
| cat, sort | Sort files | Sorts the lines of all .txt files, eliminates duplicates and saves everything in result.txt <br> cat *.txt &#124; sort &#124; uniq > results.txt |
| tar | Create tar archive with files after a date | ``` tar cvf backup.tar -N yyyy-mm-dd ``` |
| tar | Create tgz file keeping absolute path | ``` tar cvfzP backup.tgz /path_to_folder/ ``` |
| rename | Rename files | Rename *.png.jpg a *.jpg ``` rename 's/\.png\.jpg$/\.jpg/' *.jpg ``` |

## Extract data, replace data

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| cut | Cut characters from text | ``` HOUR=`date &#124; cut -c17-18 &#124; tr -d ' '`; MINUTES=`date &#124; cut -c20-21 &#124; tr -d ' '`; SECONDS=`date &#124; cut -c23-24 &#124; tr -d ' '`;``` |
| find | Replace a string in multiple files | Replace a string in multiple files. <br>  find *.php -type f \&#124; xargs sed -i s/SEARCHED_NAME/REPLACED_NAME  <br>  find . -type f &#124; xargs sed -i s/SEARCHED_NAME/REPLACED_NAME/g |
| sed | Replace a string in a file. | Another example, search for the string {PROXY_USER} (full string including braces) in the settings.xml file, the result is printed to another file called new_settings.xml <br> ``` sed -s 's/${PROXY_USER}/MYVALUE/g' file_to_search.txt > new_replaced_file.xml ``` |
| sed, find, xargs | Replace a string in multiple files | Replace a string in multiple files. <br>  * ```find *.php -type f &#124; xargs sed -i s/SEARCHED_NAME/REPLACED_NAME```  <br>  * find . -type f &#124; xargs sed -i s/SEARCHED_NAME/REPLACED_NAME/g |

## Check file integrity using md5sum and shasum

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| shasum | Create hash SHA | ``` shasum -b file.jpg > shasum.txt ``` |
| shasum | Verify SHA | ``` shasum -c shasum.txt. ``` |
| md5sum | Create hash MD5 | ``` md5sum -b file.jpg > md5sum.txt ``` |
| md5sum | Verify MD5 | ``` md5sum -c md5sum.txt ``` |
| echo, md5sum | Convert string to MD5 | * echo "HELLO" &#124; md5sum <br> * echo HELLO &#124; md5sum |

## Check file integrity using md5sum and shasum

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| iconv | Convert a file from latin1 to utf-8 | ``` iconv -f latin1 -t utf8 output_file > input_file ``` |
| iconv | Convert a file from utf-8 to latin1 | ``` iconv -f utf8 -t latin1 input_file > output_file ``` |

## Disk drive management

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| lsblk | See block units | ``` lsblk ``` |
| lsusb | View existing usb drives with their names and file systems | ``` lsusb ``` |
| mount | Mount | ``` mount -t iso9662 /dev/sdb1 /mnt/sdb1 ``` |
| mount | Mount .iso file as directory | * ``` mount file.iso /mnt/my_directory/ -t iso9660 -o ro,loop=/dev/loop0 ``` <br> * ``` mount -o loop dvd1.iso /mnt/isodisk ```|
| umount | Unmount units | ``` umount /run/media/user/pendrive ``` |
| dd | Burn .iso image to usb pendrive | ``` dd if=Fedora-Live-Security-x86_64-20-1.iso of=/dev/sdb bs=4M ``` |
| mkfs.vfat | Format usb drive with vfat file system. | ``` mkfs.vfat -n /dev/sdd ```<br> ``` mkfs.vfat /dev/sdb -I -n "volume_name_MY_PENDRIVE" ``` |
| mke2fs | Format drives as ext3 file system | ``` mke2fs -j /dev/hdaX ``` |
| mkisofs, dd | Create .iso from directory | There are two alternatives: "mkisofs" and "dd" <br> * ``` mkisofs -o /tmp/cd.iso /tmp/directory/ ``` <br> * ``` dd if=/dev/hdd of=fichero.iso ``` |
|  | See block units | ``` lsblk ``` |

## Networking (TODO)

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| ssh | Ssh connection  | ``` . ``` |
| netstat | Netstat  | ``` . ``` |

## System process

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| . | . | ``` . ``` |

## Management of web browsers, download webpages

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| wget | [Wget]  | ``` wget -nH -r -np http://www.domain.com/bla/bla/bla/ ``` |
| firefox | [Firefox] Safe Mode (for example, to disable malfunctioning extensions) | ``` firefox --safe-mode ``` |
| lynx | [Lynx]  | ``` lynx http://www.domain.com/ ``` |
| rm | [Chrome] Clean history | ``` rm -Rf $HOME/.config/google-chrome ``` |
| google-chrome | [Chrome] Run Chrome | ``` /opt/google/chrome/google-chrome --enable-logging=stderr --disable-gpu --disable-software-rasterizer ``` |
| google-chrome | [Chrome] Run Chrome with proxy | ``` /usr/bin/google-chrome --user-data-dir=$HOME/YOUR_HISTORY_FOLDER/CHROME_VENV_DATA --proxy-server="proxy.YOUR_DOMAIN.COM:8080" ``` |

## Image and video management

The imagemagick and ffmpeg tools are required.

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| exiftool | Clean image metadata  | ``` exiftool -all=your_image.jpg ``` |
| convert | Convert from .SVG format to .PNG format  | ``` convert file.svg my_folder/file.png ``` |
| mogrify | Resize image  | ``` mogrify -resize 300x300 directorio/*.png ``` |
| ffmpeg | Create a video from an image block  | Having images in .png format and numbered with two digits at the end, a video file in .avi format is produced. Example: block01.png, block02.png, etc.<br> ``` ffmpeg -r 1 -i bloque_%02d.png  video.avi ``` |
| ffmpeg | Create a video from the terminal  | Videos for tutorials can be recorded from the terminal.<br> * ``` ffmpeg -f x11grab -s 1024×768 -r 25 -i :0.0 -qscale 0 video.avi ``` <br> * ``` ffmpeg -f x11grab -r 25 -i :0.0 -qscale 0 video.avi ```|
| split | Split video  | Split large files into multiple pieces <br> ``` split -b4300m MY_VIDEO_FILE.avi MY_NEW_VIDEO_FILE_SPLITTED ``` |
| cat | Merge video  | Merge parts of separate files into a single file. <br>``` cat MY_NEW_VIDEO_FILE_SPLITTED.* > MY_MERGED_VIDEO_FILE.avi ``` |
| mencoder | Convert video  | Convert a mpg video to avi (mencoder is part of Mplayer) <br> ``` mencoder INPUT_FILE.mpg -ovc lavc -lavcopts vcodec=mpeg4 -vf scale=640:480 -sws 2 -oac copy -o OUTPUT_FILE.avi ``` |
| . | .  | . <br> ``` . ``` |


# 3. Bash programming

## Script header

| Sentence                   | Example            |
|---------------------------|-------------------------|
| Bash |  ``` #!/bin/bash ``` |
| Sh |  ```  #!/bin/sh  ``` |

## Variable definitions, print and read data

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
|  | Variable definition |  ``` MY_VARIABLE=1; ``` |
| read | Read input from keyboard|  ``` read MY_VARIABLE; ``` |
| echo | Print data|  ``` echo "Some text here -> "$MY_VARIABLE; ``` |

```
#!/bin/bash
echo "---- SCRIPT INFORMATION ---";
MY_VARIABLE=1;
echo "Enter value ->; read $MY_VARIABLE;
echo "Some text here -> "$MY_VARIABLE;
```

## Script Parameters

| Operator  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| $0 |  Script name  | |
| $$ |  PID number  | |
| $@ |  Array of arguments |  |
| $# |  Number of arguments received  | |
| $* |  Arguments received  | |
| $1 |  First parameter received from from command line | |

```
#!/bin/bash
echo "---- SCRIPT INFORMATION ---";
user_name=`whoami`
echo "Username:"$user_name;
echo "Script name: "$0;
echo "PID number:" $$;
echo "Array of parameters: "$@;
echo "Number of parameters: "$#;
echo "Arguments received:"$*;
```


## Comparisons

### Integer comparison

| Operator  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| -gt |  \> Great than | |
| -lt |  \< Less than | |
| -ge |  \>\= Great or equal | |
| -lt |  \<\= Less or equal | |
| -eq |  \=\= Equal | |
| -ne |  \!\= Not equal | |

### String comparison (TODO)

| Operator  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| -eq |  \=\= Equal | |
| -ne |  \!\= Not equal | |
| -gt |  \> Great than | |
| -lt |  \< Less than | |
| -ge |  \>\= Great or equal | |
| -lt |  \<\= Less or equal | |


## Boolean operators

| Operator  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| && |  \> Great than |  |
| &#124; &#124; | \< Less than |  |

## Files and directories operators

| Operator                    | Example            |
|---------------------------|-------------------------|
| Check if is file | ``` [ -f $filename ] ``` |
| Check if is directory | ``` [ -d $directory_name ] ``` |
| Check if is exists | ``` [ -e $filename ] ``` |
| Is with write permission | ``` [ -w $filename ] ``` |
| Is with execution permission | ``` [ -x $filename ] ``` |

# Flow control sentences

## If sentence

```
...
my_number_option=2
if [ $my_number_option = 1 ]
then
	echo "True number!!";
else
	echo "Else number!!";
fi

...

file='example_if.sh'
if [ -f $file ]
then
        echo "is a file"
fi

if [ -d $file ]
then
        echo "is a directory"
fi

```

## While loop

```
LAST_NUMBER=10
COUNTER_INDEX=1
while [ $COUNTER_INDEX -le $LAST_NUMBER ]
do
    echo $COUNTER_INDEX
    COUNTER_INDEX=`expr $COUNTER_INDEX + 1`
done
```

## For loop

Iterate over filenames in directory

```
for a_file in $( ls ); do
  echo $a_file
done
```

## Case statements

```
case $my_number_option in
        1)
        echo "1->"
        ;;
        2)
        echo "2->"
        ;;
        *)
        echo "Any option->"
        ;;
esac
```

## Functions (TODO)


# 3. Special tricks

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| for; do; done | Read files from directory | ```  for a_file in $(ls); do echo $a_file; done ``` |

# Display settings

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| xdpyinfo | Check out the resolution provided | ``` xdpyinfo \\ grep dim ``` |


# TODO - PENDING tasks

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| . | . | ``` . ``` |
| . | . | ``` . ``` |
| . | . | ``` . ``` |
| . | . | ``` . ``` |

