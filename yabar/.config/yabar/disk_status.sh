#!/bin/bash
USAGE=$(df -h --output=target,pcent /dev/sdb{1,3} |\
	awk '{if(NR!=1){printf "%s %s used | ", $1, $2}}')
echo "   ${USAGE%???}"
