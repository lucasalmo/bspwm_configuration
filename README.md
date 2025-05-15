# bspwm_configuration
Script ainda em construção

## Install
Lista de pacotes
```bash
bspwm sxhkd polybar nerd-fonts pcmanfm lxappearance xfce4-terminal feh flameshot network-manager-applet acpi i3lock rofi xorg-xinit xorg sddm vim wget curl xfce4-power-manager yazi git github-cli pacman-contrib acpid
```

O pacote pacman contrib é essencial para verificar as atualizações do sistema, já o pacote acpid é necessário para utilização do botão power pois o bspwm não lida diretamente com eventos de hardware

Os nomes dos pacotes podem mudar de acordo com a distribuição que você estiver utilizando, aqui o processo foi feito com o arch linux

Para obter as atualizações na polybar é necessário adicionar o conteúdo abaixo no [](/etc/sudoers)

```bash
seu_usuário ALL=(ALL) NOPASSWD: /usr/bin/pacman -Syu
```
substitua o nome do seu usuário em **seu usuário**

