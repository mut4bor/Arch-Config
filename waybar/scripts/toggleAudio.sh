#!/bin/bash

current_sink=$(pactl info | grep 'Default Sink' | awk '{print $3}')

 # My headphone device
sink1="alsa_output.usb-Generic_BSX_USB_Audio_20210926172016-00.analog-stereo" # My speaker device
sink2="alsa_output.pci-0000_30_00.4.analog-stereo" 

# Toggle between sinks
if [ "$current_sink" == "$sink1" ]; then
    pactl set-default-sink "$sink2"
else
    pactl set-default-sink "$sink1"
fi

