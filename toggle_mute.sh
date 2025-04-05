#!/bin/bash

MUTE_STATUS=$(amixer get Master | grep -o "\[off\]")

if [ "$MUTE_STATUS" == "[off]" ]; then
    amixer set Master unmute
else
    amixer set Master mute
fi
    
