#!/usr/bin/env bash

wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
