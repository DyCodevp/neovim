syntax on
set rnu
set showcmd
set noshowmode
set mouse=a
set number
set termguicolors
set guioptions-=T                                   " No Tool bar
set cursorline                                     " Highliht the current line
set clipboard=unnamed
set hidden                                         " When on a buffer becomes hidden when it is abandoned
set nowrap
set encoding=UTF-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set nohlsearch
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=90
highlight ColorColumn ctermbg=0  guibg=lightgrey
set noswapfile
set nobackup
set undofile
set cmdheight=1
"SO de los archivos
so ~/Appdata/local/nvim/config-vim/plugins.vim
so ~/Appdata/local/nvim/config-vim/mappins.vim
so ~/Appdata/local/nvim/config-vim/plug-config.vim

"___________________________________________________________________________________________
"___________________THEMES__________________________________________________________________
colorscheme gruvbox 
let g:gruvbox_contrast_dark = "hard"
"colorscheme dracula 
"colorscheme onedark
"let g:gruvbox_contrast_dark = "medium"
"colorscheme tokyonight
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 0
"Close tags automatically

"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js,*.py'
"-----------------------------------------------------------------
"Ambiente virtual de python
let g:python3_host_prog = ' C:\Users\dylan\.virtualenvs\nvim-uK8WQlMR'

