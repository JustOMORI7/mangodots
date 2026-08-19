#!/usr/bin/env bash

if pgrep -f "waybar" > /dev/null; then
    pkill -USR1 waybar
else
    waybar &
fi
