#!/bin/bash
#Linux System Report Generator

echo "Creating system report..."

echo "Linux System Report" > system_report.txt
echo "===================" >> system_report.txt

echo "" >> system_report.txt
echo "Hostname:" >> system_report.txt
hostname >> system_report.txt

echo "" >> system_report.txt
echo "Kernel Version:" >> system_report.txt
uname -r >> system_report.txt

echo "" >> system_report.txt
echo "Disk Usage:" >> system_report.txt
df -h >> system_report.txt

echo "" >> system_report.txt
echo "Memory Usage:" >> system_report.txt
free -h >> system_report.txt

echo "" >> system_report.txt
echo "Top 5 Running Processes" >> system_report.txt
ps aux --sort=%cpu | head -n 6 >> system_report.txt

echo "System report created successfully!"