#!/bin/bash

chosen=$(printf "  Reiniciar Polybar\n  Bloquear\n⏻  Desligar\n  Reiniciar\n  Sair" | rofi -dmenu -p "Menu" -theme ~/.config/rofi/themes/config1.rasi)

case "$chosen" in
  *"Reiniciar Polybar"*)
    polybar-msg cmd restart
    ;;
  *"Bloquear"*)
    sh ~/.config/bspwm/scripts/lock.sh
    ;;
  *"Desligar"*)
    systemctl poweroff
    ;;
  *"Reiniciar"*)
    systemctl reboot
    ;;
  *"Sair"*)
    bspc quit
    ;;
esac
