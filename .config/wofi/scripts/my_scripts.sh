#!/bin/sh -x

entries=" Configs\n Power_Menu\n Bookmarks\n Scripts\n0 Assignments"

selected=$(echo -e $entries|wofi --width 250 --height 210 --prompt "Edit Script: " --dmenu --insensitive --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  configs)
    exec alacritty -e nvim ~/.config/wofi/scripts/configs.sh;;
  power_menu)
    exec alacritty -e nvim ~/.config/wofi/scripts/wofi_power.sh;;
  bookmarks)
    exec alacritty -e nvim ~/.config/wofi/scripts/bookmarks.sh;;
  scripts)
    exec alacritty -e nvim ~/.config/wofi/scripts/my_scripts.sh;;
  assignments)
    exec alacritty -e nvim ~/.config/wofi/scripts/quick_assignments.sh;;
esac
