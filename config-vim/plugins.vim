"AQUI ESTAN TODos los "Plugins
call plug#begin('~/AppData/Local/nvim/plugged')

" Temas
" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'safv12/andromeda.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" "IDE
Plug 'easymotion/vim-easymotion'
"NERDCOMMENTER
Plug 'scrooloose/nerdcommenter'

"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"NERDTREE
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

"ddc TABNINE)
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
" Install your sources
"Plug 'Shougo/ddc-around'
" Install your filters
"Plug 'Shougo/ddc-matcher_head'
"Plug 'Shougo/ddc-sorter_rank'
"DENOS
Plug 'vim-denops/denops.vim'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"colorizer plugin for #fe4918
Plug 'norcalli/nvim-colorizer.lua'
"Multiple cursor like in vscode
Plug 'terryma/vim-multiple-cursors'
"Have the indent lines 
Plug 'yggdroot/indentline'
"Git Integration ______________
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"Smooth Scrolling
Plug 'psliwka/vim-smoothie'


call plug#end() 
