#!/usr/bin/env bash

color=$(hyprpicker)

if [ -n "$color" ]; then
    echo -n "$color" | wl-copy
    
    icon_path="/tmp/color_preview.png"
    convert -size 64x64 xc:"$color" "$icon_path"
    
    notify-send -i "$icon_path" "Color Picker" "Copied: $color"
    
    rm -f "$icon_path"
fi
