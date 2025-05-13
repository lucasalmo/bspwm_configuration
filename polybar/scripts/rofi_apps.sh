#!/bin/bash

# Caminho do tema
THEME="$HOME/.config/rofi/theme/config1.rasi"

# Verifica se o rofi está instalado
if ! command -v rofi &> /dev/null; then
    notify-send "Erro" "Rofi não está instalado. Instale com: sudo apt install rofi"
    exit 1
fi

# Usa o tema personalizado se existir
if [ -f "$THEME" ]; then
    rofi -show drun -theme "$THEME"
else
    # Fallback para tema padrão do rofi
    rofi -show drun
fi

