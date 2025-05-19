#!/bin/bash

# Captura a saída do comando acpi
acpi_output=$(acpi -b)

# Extrai a porcentagem da bateria (remove %)
capacity=$(echo "$acpi_output" | grep -oP '\d+%' | tr -d '%')

# Extrai o status (Charging, Discharging, Full, etc.)
status=$(echo "$acpi_output" | awk -F', ' '{print $1}' | awk '{print $3}')

# Define o ícone com base na carga
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

