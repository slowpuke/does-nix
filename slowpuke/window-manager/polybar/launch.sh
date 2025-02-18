#!/bin/bash

killall -q polybar

# this might be an issue on nix, if it is comment it out
while pgrep -u $UID x polybar >/dev/null; do sleep 1; done

polybar real &

