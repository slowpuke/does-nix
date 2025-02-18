#!/usr/bin/env bash

GLYPH=$'\uf3df'
for i in /sys/class/power_supply/ps-controller-battery-*/capacity; do
    if [ "$i" = "/sys/class/power_supply/ps-controller-battery-*/capacity" ]; then
        echo ""
    else
        echo "$GLYPH $(cat "$i")%"
    fi
done

