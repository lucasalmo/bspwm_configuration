#!/bin/bash

capacity=$(cat /sys/class/power_supply/axp288_fuel_gauge/capacity)
status=$(cat /sys/class/power_supply/axp288_fuel_gauge/status)

if [ "$capacity" -ge 90 ]; then
    icon=""
elif [ "$capacity" -ge 70 ]; then
    icon=""
elif [ "$capacity" -ge 50 ]; then
    icon=""
elif [ "$capacity" -ge 20 ]; then
    icon=""
else
    icon=""
    echo "%{F#FF5555}$icon $capacity%%{F-}"  # Vermelho para bateria crítica
    exit
fi

if [ "$status" = "Charging" ]; then
    icon=" $icon"
fi

echo "$icon $capacity%"
