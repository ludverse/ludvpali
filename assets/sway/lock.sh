#!/usr/bin/env bash

BRIGHTNESS=$(brightnessctl get) &&
brightnessctl set 0 &&
swaylock &&
brightnessctl set $BRIGHTNESS

