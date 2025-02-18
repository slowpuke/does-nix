#!/usr/bin/env bash

player=$(playerctl -p tauon status 2> /dev/null)
PLAYING=$'\uf04b'
STOPPED=$'\uf04c'

if [ "$player" = "Paused" ]; then
    echo "$STOPPED $(playerctl -p tauon metadata artist) // $(playerctl -p tauon metadata title)"
elif [ "$player" = "Playing" ]; then
    echo "$PLAYING $(playerctl -p tauon metadata artist) // $(playerctl -p tauon metadata title)"
else
    echo ""
fi

