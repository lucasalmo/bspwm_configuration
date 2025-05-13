#!/bin/bash

chosen=$(printf " Reiniciar Polybar\n Bloquear\n⏻ Desligar\n Reiniciar\n Sair" | rofi -dmenu -p "Menu")

case "$chosen" in
    " Reiniciar Polybar")
        polybar-msg cmd restart
        ;;
    " Bloquear")
        i3lock  # ou "betterlockscreen -l" dependendo do seu sistema
        ;;
    "⏻ Desligar")
        systemctl poweroff
        ;;
    " Reiniciar")
        systemctl reboot
        ;;
    " Sair")
        bspc quit 
        ;;
esac

