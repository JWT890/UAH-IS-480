#!/bin/bash

### Name: Jon William Taylor
### Course: IS 480 KB
### August 27, 2023

### takes input as the auth.log file
input_file=auth.log

### searches the file for the IP addresses detected with CRON
grep cron auth.log | cut -d ' ' -f 1-3

### searches the file for the word CRON and prints it
cat auth.log | grep 'CRON'
