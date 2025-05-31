## Question 1: 

## - Create a simple shell script called `state.sh` that will append info listed below into `/tmp/state.log` file:
##  - current date and time
##  - current load and users logged in
##  - all processes running on the machine (long listing that, among other info, includes PID and PPID )
## - Create a cron job that will execute this script every 5 minutes (the state info gets appended into file /tmp/state.log every five minutes)

#!/bin/bash
echo "Date: $(date)" >> /tmp/state.log
echo "Uptime (load and users)" >> /tmp/state.log
uptime >> /tmp/state.log
echo "All Processes (ps -ef) ---" >> /tmp/state.log
ps -ef >> /tmp/state.log
echo "" >> /tmp/state.log
