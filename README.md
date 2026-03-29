# Vim 42 Config

Configuration simple de Vim adaptée aux exigences de l'école 42 (norme, C, confort minimal).

---

## Installation
```bash
git clone https://github.com/AlexerV/vim-42-config.git
cd vim-42-config
chmod +x setup_vim_42.sh
./setup_vim_42.sh
```

---

## Features
- Indentation conforme à la norme 42 (4 espaces)
- Colonne limite à 80 caractères
- Affichage des caractères invisibles
- Raccourci compilation C (`F5`)
- Thème personnalisable

---

## Détail de la configuration
<details> <summary>Voir l’explication ligne par ligne</summary>

### Interface
| Ligne                 | Explication                                 |
| --------------------- | ------------------------------------------- |
| `set number`          | Affiche les numéros de ligne                |
| `set nohlsearch`      | Désactive le surlignage après une recherche |
| `syntax on`           | Active la coloration syntaxique             |
| `set background=dark` | Optimise l’affichage pour un thème sombre   |

---

### Indentation (norme 42)
| Ligne              | Explication                                  |
| ------------------ | -------------------------------------------- |
| `set tabstop=4`    | Une tabulation vaut 4 espaces                |
| `set shiftwidth=4` | Indentation de 4 espaces                     |
| `set expandtab`    | Remplace les tabs par des espaces            |
| `set autoindent`   | Reprend l’indentation précédente             |
| `set smartindent`  | Améliore l’indentation automatique (C, etc.) |

---

| Ligne                                                | Explication                       |
| ---------------------------------------------------- | --------------------------------- |
| `set list`                                           | Affiche les caractères invisibles |
| `set listchars=tab:│\ ,trail:.,precedes:<,extends:>` | Personnalise l’affichage          |

---

### Norme 42
| Ligne                | Explication                      |
| -------------------- | -------------------------------- |
| `set colorcolumn=80` | Affiche une limite à 80 colonnes |

---

### Thème
| Ligne                    | Explication                    |
| ------------------------ | ------------------------------ |
| `colorscheme lunaperche` | Applique le thème (modifiable) |

---

### Raccourcis
| Ligne        | Explication                     |
| ------------ | ------------------------------- |
| `<F5>`       | Compile et exécute un fichier C |
| `<F6>`       | Lance `norminette`              |
| `<Ctrl + S>` | Sauvegarde rapide               |
| `<Ctrl + Q>` | Quitte Vim                      |

---

### Confort
| Ligne                       | Explication                      |
| --------------------------- | -------------------------------- |
| `set mouse=a`               | Active la souris                 |
| `set clipboard=unnamedplus` | Utilise le presse-papier système |

---

### Fichiers temporaires
| Ligne            | Explication                   |
| ---------------- | ----------------------------- |
| `set noswapfile` | Désactive les fichiers `.swp` |


</details>

---

## Aperçu des thèmes
```bash
chmod +x preview_vim_colors.sh
./preview_vim_colors.sh
```

---

## Fichier configuré
Le script crée/modifie :
```bash
~/.vimrc
```
Une sauvegarde est faite automatiquement si le fichier existe déjà.

