#!/usr/bin/env bash

SAVE_DIR="$HOME/Videos/Recordings"
mkdir -p "$SAVE_DIR"

FILE_NAME="$SAVE_DIR/recording_$(date +%Y%m%d_%H%M%S).mp4"

if pgrep -x wf-recorder > /dev/null; then
    pkill -INT wf-recorder
    notify-send "Ekran Kaydı" "Kayıt durduruldu ve kaydedildi." -i media-tape
else
    notify-send "Ekran Kaydı" "Kayıt başladı..." -i media-record
    wf-recorder -f "$FILE_NAME"
fi
