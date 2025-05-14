#!/bin/bash

mensagem="
󰍹  AJUDA - TECLAS DE ATALHO DO SISTEMA

󰘳  Aplicativos:
    Super + Enter ..................... Abrir terminal
    Super + Espaço .................... Menu de aplicativos (rofi)
    Super + Shift + F ................. Abrir navegador Brave

󰘕  Sistema:
    Super + Escape .................... Recarregar teclas (sxhkd)
    F1 ................................ Menu de energia
 󰋼   F2 ................................ Este menu de ajuda

󰖯  Janelas:
    Super + W ......................... Fechar janela
    Super + Shift + W ................. Forçar encerramento
 󰘲   Super + M ......................... Alternar layout (tiled/monocle)
 󰓡   Super + G ......................... Trocar com maior janela
    Super + Space ..................... Alternar modo flutuante

󰍛  Navegação:
    Super + 1..9 ...................... Ir para área de trabalho
    Super + Shift + 1..9 .............. Mover janela para desktop
 󰒉   Super + H / L / J / K ............... Navegar entre janelas
 󰒋   Super + Shift + H / L / J / K ..... Trocar posição das janelas

󰒓  Layout e Tamanhos:
    Super + Alt + H / J / K / L ....... Expandir janela
    Super + Alt + Shift + H/J/K/L ..... Reduzir janela

󰌌  Brilho:
 󰛨   XF86MonBrightnessUp ............... Aumentar brilho (10%)
 󰛩   XF86MonBrightnessDown ............. Reduzir brilho (10%)

[ Pressione ESC para fechar ]
"

echo "$mensagem" | rofi -e - -theme ~/.config/rofi/theme/help.rasi
