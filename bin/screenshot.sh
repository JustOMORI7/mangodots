#!/usr/bin/env bash

wayfreeze --after-freeze-cmd 'grim -g "$(slurp)" /tmp/ss.png; pkill wayfreeze; swappy -f /tmp/ss.png; rm -f /tmp/ss.png'
