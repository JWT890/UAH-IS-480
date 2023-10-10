#!/bin/bash

### Jon William Taylor
### October 7, 2023
### IS 480 KB

### takes the file as input
files=$1

### prints that the program is analyzing the file
echo "Analyzing file"

### command that waits for 5 seconds
sleep 5

### prints that analysis is compelet and will print results
echo "Analysis complete. Printing results"

### comand that waits for 2 seconds
sleep 2

### statement that starts looking through the file
for file in $files; do

### takes the input file and looks for the keywords of Invalid user,

### cuts the output to just the 8th column, counts by unique values by number,

### and sorts the new output by amount from most to least
   if cat $files | grep "Invalid user" | cut -d ' ' -f 8 | uniq -c | sort -rn; then

### prints that it is compelete for seond question
      echo "Complete for first question"
   fi
done

### prints moving onto the second question
echo "Moving onto second part"

### command that pauses for 3 seconds
sleep 3

### statement that starts looking through the file
for file in $files; do
### takes the input file and and looks for the keywords of Failed password for ubuntu,

### looks for matching patterns that contains the from keyword from the second column and takes from the first column,

### sorts the output and counts for unique values for most values that appear 
   if cat $files | grep "Failed password for ubuntu" | awk -F 'from' '{print $2}' | awk '{print $1}' | sort | uniq -c; then

### prints complete for second question
      echo "Complete for second question"
   fi
done

### prints moving onto the third question
echo "Moving onto third part"

### command that pauses for 3 seconds
sleep 3

### statement that starts looking through the file
for file in $files; do
### takes the input file and looks for the keywords for Failed password for root,

### looks for matching patterns that contains the from keyword from the second column and takes from the first column,

### sorts the output and counts for uniquq value for most values that appear and sorts from most to least appearances
   if cat $files | grep "Failed password for root" | awk -F 'from' '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -nr; then

### prints complete for third question
      echo "Compelete for third question"
   fi
done

### prints moving onto the fourth part
echo "Moving onto fourth part"

### comand that pauses for 3 seconds
sleep 3

### statement that starts looking the file
for file in $files; do

### takes the input files and looks for the keywords for Invalid user,

### cuts the output to the 8th column, sorts it, counts for unique values that appeared the most,

### and sorts from most to least appearances
   if cat $files | grep "Invalid user" | cut -d ' ' -f 8 | sort | uniq -c | sort -nr; then

### prints complete for fourth question
      echo "Complete for fourth question"
   fi
done
