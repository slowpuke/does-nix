#!/usr/bin/env sh

device=$(udiskie-info -0 -a -o "{device_file} {ui_label}" | rofi -dmenu -theme /home/slowpuke/does-nix/slowpuke/rofi/themes/type-7-stripped.rasi | cut -d' ' -f1)

if [ -n "$device" ] ; then

    if mount | grep "$device" ; then
        echo "mounted"
        udisksctl unmount -b ${device}
    else
        echo "not mounted"
        udisksctl mount -b ${device}
    fi
        
fi

