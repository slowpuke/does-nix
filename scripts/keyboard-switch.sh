#!/usr/bin/env bash
# Switching between keyboard layouts
CURRENT_LAYOUT=$(setxkbmap -query | awk 'NR==3{print $2}')

if [ "$CURRENT_LAYOUT" = "pl" ]; then
    setxkbmap "it"
else
    setxkbmap "pl"
fi
