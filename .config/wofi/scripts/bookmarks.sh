#!/bin/sh -x

entries="Canvas\nCitrix\nYouTube\nGithub"

selected=$(echo -e $entries|wofi --width 250 --height 210 --prompt "Bookmarks: " --dmenu --insensitive --cache-file /dev/null | awk '{print tolower($1)}')

case $selected in
  canvas)
    exec firefox https://login.uts.edu.au/;;
  citrix)
    exec firefox https://utsworkspace.cloud.com/Citrix/StoreWeb/;; 
  youtube)
    exec firefox https://www.youtube.com;;
  github)
    exec firefox https://www.github.com/lequas
esac
