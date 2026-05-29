#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar dracula 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."

# autorandr --change setup

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi

#for i in {1..3}; do
#    xdotool key --clearmodifiers Super+Shift+r
    # Optional: add a delay between key presses
#done

