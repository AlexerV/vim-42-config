#!/usr/bin/env bash

VIMRC="$HOME/.vimrc"

echo "Configuration de Vim pour 42"

# Backup si le fichier existe déjà
if [ -f "$VIMRC" ]; then
    BACKUP="$HOME/.vimrc.backup.$(date +%Y%m%d_%H%M%S)"
    echo "Sauvegarde de l'ancien .vimrc -> $BACKUP"
    cp "$VIMRC" "$BACKUP"
fi

# Création du .vimrc
cat > "$VIMRC" << 'EOF'

" Interface
set number              " numéros de ligne
set nohlsearch          " pas de surlignage après recherche
syntax on               " coloration syntaxique
set background=dark     " fond sombre

" Indentation (norme 42)
set tabstop=4
set shiftwidth=4
set expandtab           " tabs -> espaces
set autoindent
set smartindent

" Affichage des caractères invisibles
set list
set listchars=tab:│\ ,trail:.,precedes:<,extends:>

" Colonne limite (norme 42)
set colorcolumn=80

" Thème (modifiable)
colorscheme lunaperche

" Raccourcis utiles
" Compiler + exécuter un fichier C
nnoremap <F5> :w<CR>:!cc % -Wall -Wextra -Werror && ./a.out<CR>
nnoremap <F6> :!norminette %<CR>

" Sauvegarde rapide
nnoremap <C-s> :w<CR>

" Quitter rapidement
nnoremap <C-q> :q<CR>

set mouse=a             " activer la souris
set clipboard=unnamedplus " presse-papier système

" Pas de swap (évite fichiers .swp relous)
set noswapfile
EOF

echo ".vimrc créé avec succès !"
