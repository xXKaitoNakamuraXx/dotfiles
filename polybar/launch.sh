#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# wait untill the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar, using default config location ~/.config/polybar/config
polybar example &

echo "Polybar Launched..."
