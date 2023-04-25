#!/bin/sh -x

entries="󱆃 Zsh\n Sway\n󱟛 Waybar_Config\n󱟛 Waybar_Style\n NeoVim\n Alacritty"

selected=$(echo -e $entries|wofi --width 250 --height 210 --prompt "Configs: " --dmenu --insensitive --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  zsh)
    exec alacritty -e nvim ~/.zshrc;;
  sway)
    exec alacritty -e nvim ~/.config/sway/config;;
  waybar_config)
    exec alacritty -e nvim ~/.config/waybar/config;;
  waybar_style)
    exec alacritty -e nvim ~/.config/waybar/style.css;;
  alacritty)
    exec alacritty -e nvim ~/.config/alacritty/alacritty.yml;;
  neovim)
    exec alacritty -e nvim ~/.config/nvim/init.vim;;
esac
