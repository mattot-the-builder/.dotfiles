#!/bin/bash
if pgrep -x wf-recorder >/dev/null; then
    pkill -SIGUSR1 wf-recorder
    notify-send "🎥 Screen Recording" "Recording stopped."
else
    wf-recorder -f "$HOME/Videos/recording_$(date +'%Y-%m-%d_%H-%M-%S').mkv" &
    notify-send "🎥 Screen Recording" "Recording started (Full screen)."
fi
