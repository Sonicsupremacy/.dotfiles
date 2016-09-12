#!/usr/bin/bash
while true; do
    cursong=$(mpc current)
    mpc status | egrep "playing|paused" > /dev/null
    if [ $? -eq 1 ]; then
        echo "   Nothing playing"
    else
        echo "   $cursong"
    fi
    mpc idle player > /dev/null
done
