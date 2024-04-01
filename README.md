# UAH-IS-480
Bash projects from class

This is a collection of bash scripts I did for a bash programming class back in the Fall of 2023. 

awslog directory
securitylogs2.sh takes information from several auth.log files from a AWS instance and looks for any activity that might seem suspicious. First input takes in Invalid User from the 10th column, second takes for Failed password for root attempts for password requests for root account, third takes input for Failed password for ubuntu, and fourth input takes in similar input to the first but from the 8th column. 

midterm directory
midterm.sh takes input from a auth.log file from another AWS instance and outputs the IP addresses from the auth.log file. It then cuts it down to just IP addresses while also counting how many lines there are, number of unique IPs, and listing in ascending order of addresses. 

JWTlogfinder.sh
Takes an auth.log file as input and looks for IP addresses with CRON jobs within the auth.log file and prints out any relevant addresses

combinedlogs.sh
Takes in four auth.log files and looks for IP addresses with CRON jobs within the auth.log files and prints them out for the user to see. 

repeatedlines4.sh
Takes a file as input and outputs for the user to read. Looks throught the input file and looks for repeated messages of DHCPREQUEST in columns 6-8 of the file and appends it to the output file. Second function of the file is to look for any repeated lines in the file for dhcprequest and send to the outbound file to read over. 

secCheck.sh
Looks to see on an Ubuntu OS for STIG UBTU-20-010004 to see if the GUI screen lock is enabled or not. If true, it will say if its compliant or not. If false, it will ask the user if they want to enable or not by asking a yes or no question if the user wants to enable or keep it disabled on their system. 

securitylogs1.sh and securitylogs1v2.sh
Both take in an auth.log and look for information relating to Invalid User, Failed password for Ubuntu, Failed password for root, and Invalid User and prints the result

storebypass-1.sh
Takes a directory path as input and lists the files that contain Speculative Store Bypass and determines if the file is vulnerable, not vulnerable, or undetermined and then prints the file containing the words Speculative Store bypass

vulnerability_pattern.sh
Takes a file as input and looks to see if the file contains the Speculative Store Bypass key words. If there are, it will print Vulnerability found. If not, it will print no vulnerabilities were found. 
