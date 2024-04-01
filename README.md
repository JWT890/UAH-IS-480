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


