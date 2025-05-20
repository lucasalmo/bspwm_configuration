#!/bin/bash

ROFI_THEME="$HOME/.config/rofi/themes/config1.rasi"

HELP_CONTENT=$(cat <<EOF
<span font="FiraCode Nerd Font Bold 16" foreground="#7aa2f7"> BSPWM Hotkeys</span>

<span foreground="#7dcfff">   Básicos</span>
<b>  + Enter</b>      Abrir terminal
<b>  + Espaço</b>     Lançar/Escolher aplicativos
<b>  + W</b>          Fechar Janela
<b>  + Shift  + f</b> Abre Navegador (Brave)

<span foreground="#7dcfff">   Workspaces</span>
<b>  + 1-9</b>       Mudar workspace
<b>  + Shift + 1-9</b> Mover janela

<span foreground="#7dcfff">   Layouts</span>
<b>  + T</b>         Layout Tile
<b>  + S</b>         Layout Floating
<b>  + F</b>         Tela cheia

<span foreground="#7dcfff">󰍛   Controles</span>
<b>  + Alt + R</b>   Reiniciar BSPWM
<b>  + Shift + B</b> Bloquear tela
<b>  + alt + l</b> aumenta o tamanho da janela que esta do lado esquerdo da tela
<b>  + alt + h</b> aumenta o tamanho da janela que esta do lado direito da tela
<b>  + alt + shift + h</b> diminui o tamanho da janela que esta do lado esquerdo da tela
<b>  + alt + shift + l</b> diminui o tamanho da janela que esta do lado direito da tela
<b>F2</b>            Mostrar esta ajuda
EOF
)

rofi -dmenu -p "" -theme "$ROFI_THEME" -markup-rows <<< "$HELP_CONTENT"
