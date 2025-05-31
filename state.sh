#!/bin/bash
echo "Date: $(date)" >> /tmp/state.log
echo "Uptime (load and users)" >> /tmp/state.log
uptime >> /tmp/state.log
echo "All Processes (ps -ef) ---" >> /tmp/state.log
ps -ef >> /tmp/state.log
echo "" >> /tmp/state.log
