#!/usr/bin/env bash
killall -q polybar

while pgrep -u $UID -x polybar >/devnull; do sleep 1; done

# launch bar
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
