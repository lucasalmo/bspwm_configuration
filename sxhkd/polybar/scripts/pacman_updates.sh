#!/bin/bash

# Verifica atualizações do pacman
pacman_updates=$(checkupdates | wc -l)

# Verifica atualizações do AUR (se usar yay)
aur_updates=$(yay -Qua | wc -l)

# Soma total de atualizações
total=$((pacman_updates + aur_updates))

if [ "$total" -eq 0 ]; then
    echo "󰏗 0"
else
    echo "󰏗 $total"
fi
