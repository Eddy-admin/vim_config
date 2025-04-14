" Mode non compatible vi
set nocompatible

" Utiliser Vim-Plug pour gérer les plugins
call plug#begin('~/.vim/plugged')

" Plugins de thème
Plug 'morhetz/gruvbox'

" Plugins utiles
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'

call plug#end()

" Thème 
syntax enable
" Sélectionner le thème
colorscheme default
set background=dark " Ou 'light' 

" Afficher le numéro de ligne et de colonnes 
set ruler

" Afficher les numéros de ligne relatif
set number
set relativenumber

" Historique de commandes 
set history=256

" Afficher les commandes incomplètes
set showcmd

" Afficher le mode en cours 
set showmode

" Afficher toutes les complétions des commandes 
set wildmenu

" Prise en compte de la souris
set mouse=a 

" Afficher @@@ quand une ligne n'est pas entièrement affichée
set display=truncate

" Afficher une barre verticale au niveau du curseur 
set cursorcolumn

" Sourcer un fichier automatiquement après enregistrement 
" autocmd FileWritePost,BufWritePost * :source %

" Configuration des plugins

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" FZF
set rtp+=~/.fzf

" CoC (Conqueror of Completion)
" Utiliser CocInstall pour installer les extensions CoC
" Exemple : :CocInstall coc-json coc-python
" let g:coc_global_extensions = ['coc-json', 'coc-pyright']

" GitGutter
set updatetime=100

" indentLine
let g:indentLine_enabled = 1

" NERDCommenter
let g:NERDSpaceDelims = 1
