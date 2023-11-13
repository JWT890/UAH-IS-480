#!/bin/bash

### Jon William Taylor
### October 12, 2023
### IS 480 KB

### takes the files as input
file=$1

### prints that the program is analyzing the file
echo "Analyzing file"

### command that waits for 5 seconds
sleep 5

### prints that analysis is complete and will print results
echo "Analysis complete for the files. Printing results"

### command that waits for 2 seconds
sleep 2

### statement that starts looking through the file
for file in $file; do

### takes the input files and looks for the keywords of Invalid user,

### cuts the output to just the 10th column for IP addresses for invalid users

### and sorts the new output by amount from most to least
   if cat $file | grep "Invalid user" | cut -d ' ' -f 10 | uniq -c | sort -rn; then

### prints that it is complete for the first question 
     echo "Complete for first question"
   fi
done

### prints moving onto the second question
echo "Moving onto the second part"

### command that sleeps for 3 seconds
sleep 3

### statement that starts looking through the files
for file in $file; do

### takes the input files and looks for the keywords of Failed password for root,

### looks for matching pattens that contain the from keyword from the second column and takes from the first column, 

### sorts the output and counts for unique value for most values that appear and sorts from most to least appearances
   if cat $file | grep "Failed password for root" | awk -F 'from' '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -nr; then

### prints complete for second question
     echo "Complete for second question"
   fi 
done

### prints moving onto the third part
echo "Moving onto the third part"

### command that pauses for 3 seconds
sleep 3

### statement that starts looking through the file
for file in $file; do

### takes the input file and looks for the keywords of Failed password for ubuntu,

### looks for matching patterns that contains the from keyword from the second column and takes from the first column,

### sorts the output and counts for unique values for the most values that appear
   if cat $file | grep "Failed password for ubuntu" | awk -F 'from' '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -nr; then
     echo "Complete for third question"
   fi
done

### prints moving onto fourth part
echo "Moving onto the fourth part"

### command that pauses for 3 seconds
sleep 3

### statement that starts looking the file 
for file in $file; do

### takes the input file file and looks for the keywords for Invalid user,

### cuts the output to the 8th colomn, sorts it, and counts for unique values that appeared the most,

### and sorts from most to least appearances
   if cat $file | grep "Invalid user" | cut -d ' ' -f 8 | sort | uniq -c | sort -nr; then

### prints complete for fourth question
     echo "Complete for fourth question"
   fi
done

### prints Analysis of files complete
echo "Analysis of files complete"
