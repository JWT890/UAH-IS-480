#!/bin/bash

### Date: September 7, 2023
### Name: Jon William Taylor
### IS 480 KB

### prints asking for input from user to read the target directory path
echo "Enter the directory path: "
### reads the input from user input
read directory_path

### takes the files in the directory path and lists them in order
files=$(ls $directory_path)

### statement that looks at the files in the directory
for file in $files; do
  ### looks through each file for the words Speculative Store bypass and return a positive result
  if grep -q "Speculative Store Bypass" $file; then
  ### prints the file that is vulnerable 
    echo "$file: This system is vulnerable to Speculative Store Bypass"
  ### looks through each file for to determine if their no vulnerabilities to be found
  elif grep -q "Not Vulnerable" $file; then
  ### prints the file that is not vulnerable
    echo "$file: This system is not vulnerable to Speculative Store Bypass"
  ### looks through each file to determine if the vulnerability is unknown or is not vulnerable
  else
  ### prints which file have unknown vulnerabilities
    echo "$file: Could not determine if this system is vulnerable to Speculative Store Bypass and or not vulnerable"
  fi

### reads the vulnerable file and prints the line with the vulnerability
cat $file | grep "Speculative Store Bypass"
done



### Note: this works well in the target directory, do it there
### Assitance with Google Bard for general structure and directory components
