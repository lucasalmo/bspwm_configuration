#!/bin/bash

# Finaliza instâncias anteriores da Polybar
killall -q polybar

# Aguarda até que os processos anteriores finalizem
while pgrep -u $UID -x polybar >/dev/null;
do sleep 1; done

# Inicia a Polybar com a barra principal (assumindo que o nome seja 'main')
polybar example &
