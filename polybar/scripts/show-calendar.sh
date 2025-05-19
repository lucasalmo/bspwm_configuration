#!/bin/bash

# Fecha se já estiver aberto
if pgrep -x "gsimplecal" > /dev/null; then
    pkill gsimplecal
else
    gsimplecal &
fi

