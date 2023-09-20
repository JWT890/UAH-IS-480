#!/bin/bash

### Name: Jon William Taylor
### Course: IS 480 KB
### August 30, 2023

### reads all files as input
input_file1=230.auth.log
input_file2=230.auth.log.1
input_file3=78.auth.log
input_file4=78.auth.log.1

### prints reading first log
echo "Reading first log"

### pauses for 3 seconds
sleep 3

### for loop takes the first file listed above
for input_file1 in "${input_file1[@]}"
do 
### looks for CRON in input file
grep -E "CRON" "$input_file1"
done

### prints reading second log
echo "Reading second log"

### pauses for 3 seconds
sleep 3

### for loop takes the second file listed above
for input_file2 in "${input_file2[@]}"
do 
### looks for CRON in input file
grep -E "CRON" "$input_file2"
done

### prints reading third log
echo "Reading third log"

### pauses for 3 seconds
sleep 3

### for loop takes the third file listed above
for input_file3 in "${input_file3[@]}"
do 
### looks for CRON in input file
grep -E "CRON" "$input_file3"
done

### prints reading fourth log
echo "Reading fourth log"

### pauses for 3 seconds
sleep 3

### for loop takes the fourth file listed above
for input_file4 in "${input_file4[@]}"
do
### looks for CRON in input file
grep -E "CRON" "$input_file4"
done

### sleeps for 2 seconds
sleep 2

### prints that all files have been read
echo "All files have been read"


