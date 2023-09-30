#!/bin/bash

### Name: Jon William Taylor
### Date: September 28, 2023
### IS 480 KB

### takes a file as input
files=$1

### outputs it to a output file
output_file=syslog.expanded4.txt

### statement looks for word DHCPREQUEST in the files to see how many there are
for file in $files; do
### looks for DHCPREQUEST through the input file, takes out double spaces, takes out the message repeated line, sorts it, cuts it to columns 6-8, counts it and appends to the output file 
  if zgrep -in dhcprequest ./syslog.* | sed 's/  / /' | grep "DHCPREQUEST" | grep -v "message repeated" | sort | cut -d ' ' -f 6-8 | sort | uniq -c >> $output_file; then
### prints complete
    echo "Complete"
  fi
done

### statement looks for the repeated line in the file
for file in $files; do
### looks for the repeated line in the files, takes out double spaces, greps for the repeated line, counts each line, cuts it down to specific columns, and takes out specific characters and appends it to the output file 
  if zgrep -in dhcprequest ./syslog* | sed 's/  / /' | grep 'message repeated' | uniq -c | cut -d ' ' -f 5-30 | sed 's/.$//' >> $output_file; then
### prints complete
    echo "Complete"
  fi
done
