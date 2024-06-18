#!/bin/bash
REPORT="/mnt/c/Users/DELL/Desktop/system-monitoring/report.txt"
{
	echo "System Monitoring Report"
	echo "========================"
	echo "Date: $(date)"
	echo ""
	echo "CPU and Memory Usage:"
	mpstat
	free -h
	echo ""
	echo "Disk Space Usage:"
	df -h
	echo ""
	echo "Network Activity:"
	ifstat
} > "$REPORT"
mail -s "Daily System Report" akankshauniyalflyhighmedia@gmail.com < "$REPORT"
