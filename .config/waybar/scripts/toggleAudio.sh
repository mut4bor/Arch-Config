#!/bin/bash

# This script toggles audio output between headphones and speakers
current_sink=$(pactl info | grep 'Default Sink' | awk '{print $3}')

# Get your devices writing "pamixer --list-sinks" in the terminal
sink1="alsa_output.pci-0000_30_00.4.analog-stereo" # Headphones
sink2="alsa_output.usb-Generic_BSX_USB_Audio_20210926172016-00.analog-stereo" # Speakers

# Toggle between devices
if [ "$current_sink" == "$sink1" ]; then
    pactl set-default-sink "$sink2"
else
    pactl set-default-sink "$sink1"
fi

