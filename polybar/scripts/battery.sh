#!/bin/bash

info=$(acpi -b)

# Extrai a porcentagem e status
capacity=$(echo "$info" | grep -oP '\d+%' | tr -d '%')
status=$(echo "$info" | grep -oP 'Charging|Discharging|Full')

# Define ícone conforme status
if [ "$status" = "Charging" ]; then
    icon=""  # ícone de raio
elif [ "$capacity" -ge 90 ]; then
    icon=""
elif [ "$capacity" -ge 70 ]; then
    icon=""
elif [ "$capacity" -ge 40 ]; then
    icon=""
elif [ "$capacity" -ge 20 ]; then
    icon=""
else
    icon=""
fi

# Cor vermelha se carga baixa
if [ "$capacity" -le 15 ]; then
    echo "%{F#FF5555}$icon $capacity%%{F-}"
else
    echo "$icon $capacity%"
fi

