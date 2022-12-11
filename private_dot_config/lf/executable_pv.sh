#!/bin/sh

case "$1" in
  *.tar*) tar tf "$1";;
  *.zip) unzip -l "$1";;
  *.rar) unrar l "$1";;
  *.7z) 7z l "$1";;
  *.pdf) pdftotext "$1" -;;
  *.md) glow -s dark "$1";;
  *.bmp|*.jpg|*.jpeg|*.png|*.xpm|*.webp|*.gif|*.jfif)
    chafa "${1}" -f sixel -s "$((${2}-2))x${3}" | sed 's/#/\n#/g';;
  *) bat --color=always --paging=never "$1";;
esac

