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
    color="%{F#FF5555}"  # Vermelho para bateria crítica
fi

# Se estiver carregando, sobrepõe o ícone com raio
if [ "$status" = "Charging" ]; then
    icon=" $icon"
fi

# Se a bateria estiver crítica, aplica cor
if [ "$capacity" -lt 20 ]; then
    echo "$color$icon $capacity%%{F-}"
else
    echo "$icon $capacity%"
fi

