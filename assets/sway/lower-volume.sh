#!/usr/bin/env bash

wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
if [[ $volume == *"0.00"* ]]; then
	wpctl set-mute @DEFAULT_AUDIO_SINK@ 1
fi
