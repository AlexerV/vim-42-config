#!/usr/bin/env bash

vim -c 'edit $VIMRUNTIME/syntax/hitest.vim' \
    -c 'for cs in getcompletion("", "color") | execute "colorscheme " .. cs | redraw | echo "colorscheme: " .. cs .. " (appuie sur une touche)" | call getchar() | endfor'
