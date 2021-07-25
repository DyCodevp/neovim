# neomvim
<body>
set number              "Muestra el numero de lineas"
set mouse=a              "Deja  interactuar con el mouse"
set numberwidth=1       "Setear ancho de los numeros
set clipboard=unnamedplus     "Copiar al clipboard
syntax enable            "Activa la syntaxis
set showcmd                "Muesta comandos en la consola
set ruler                  " Muestra linea donde se trabaja
set encoding=utf-8           "Setear codificacion de archivos
set  showmatch                " Muestra  el parentesis que esta cerrandor
set  sw=2                    "Cambiar el vez de tabs con espacios
set nowrap                    "No dividir la linea de texto si es muy larga
set relativenumber     "Muestra dependiendo donde esta el cursor donde el 0 y cuenta para arriba y para abajo
set laststatus=2          "Linea de comando siempre sea visible
set termguicolors           "activa colores en la terminal

call plug#begin('~/.local/share/nvim/plugged')         "llamar a vim-plug  para instalar plugins

"themes
Plug 'joshdick/onedark.vim'                  "Tema onedark
Plug  'morhetz/gruvbox'                      "Tema gruvbox

" IDE
Plug 'easymotion/vim-easymotion' "plug de eaysmotion
Plug 'scrooloose/nerdtree'         "plug de nerdtree
Plug 'christoomey/vim-tmux-navigator' "plug de navegar entre archivos

call plug#end()
"confi del tema
colorscheme gruvbox       "activa tema gruvbox
let g:gruvbox_contrast_dark = "hard"
 "config easymotion and nerdtree
let NERDTreeQuitOnOpen=1 

let mapleader=" "         "tecla lider espacio
"llama a easymotion con espacio-s
nmap <Leader>s <Plug>(easymotion-s2)
"llma a nerdtree con espacio-nt
nmap <Leader>nt :NERDTreeFind<CR>

"guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"abrir archivo de config nvim
nmap <Leader>e :e $MYVIMRC<CR>
<body>
