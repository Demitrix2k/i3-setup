#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
#added in bluetooth kill because lazy
rfkill block bluetooth
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar wpgtk
