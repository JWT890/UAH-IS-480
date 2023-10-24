#!/bin/bash

file=$1

full_path=$(realpath "$1")
IPList="iplist.txt"

egrep -o "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" $file > $IPList

echo "Group Members: Keith Walsh & Jon Taylor"
echo "##########################################"
echo
echo "Course: IS 480 Kali & Bash"
echo
echo "##########################################"
echo
date
echo
echo "##########################################"

echo "The log file for the analysis is pulled from."
echo
echo $full_path

echo "The number of lines is:"
cat $file | wc -l
echo "##########################################"
echo "The number of unique IP addresses in the file is"
cat $IPList | sort | uniq | wc -l 
echo "##########################################"
echo "The list of unique IP addresses sorted in ascending order"
cat $IPList | sort | uniq | sort -V
echo "#########################################"
echo "I can do anything I put my mind to"
