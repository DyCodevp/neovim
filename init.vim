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
set laststatus=2               "mostrar barra de estado  
set nowrap                    "No dividir la linea de texto si es muy larga
set relativenumber     "Muestra dependiendo donde esta el cursor donde el 0 y cuenta para arriba y para abajo
set termguicolors           "activa colores en la terminal
set backspace=2
set guioptions-=T
set guioptions-=L
set showtabline=2
set noshowmode              "no mostrar los modos 
set noswapfile                      "no archivos de swap
set colorcolumn=120
highlight ColoColunm ctermbg=0 guibg=lightgrey
call plug#begin('~/.local/share/nvim/plugged')         "llamar a vim-plug  para instalar plugins

"themes
Plug 'joshdick/onedark.vim'                  "Tema onedark
Plug  'morhetz/gruvbox'                      "Tema gruvbox
"AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" IDE
Plug 'easymotion/vim-easymotion' "plug de eaysmotion
Plug 'scrooloose/nerdtree'         "plug de nerdtree
Plug 'christoomey/vim-tmux-navigator' "plug de navegar entre archivos
Plug 'neoclide/coc.nvim', {'branch': 'release'}  "plug de COC 
Plug 'codota/tabnine-vim'   "plug de tabnine 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"poner emogis y iconos en vim
Plug 'ryanoasis/vim-devicons' 
"analysis de codigo
Plug 'dense-analysis/ale'
"idiomas
Plug 'sheerun/vim-polyglot'
"colores de CSS
Plug 'gko/vim-coloresque'
"syntaxis nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"resalta la sangria del archivo
Plug 'thaerkh/vim-indentguides'

call plug#end()
"--------------------------------------------------------------------------------------------------
source .config/nvim/plug-config.vim
"---------------------------------------------------Plugin config----------------------------------
"confi del tema
colorscheme gruvbox       "activa tema gruvbox
let g:gruvbox_contrast_dark = "hard"

"definir tecla lider como coma ','
let mapleader=","
 "config easymotion and nerdtree
nmap <Leader>s <Plug>(easymotion-s2)
"config de nerdtree 
let g:NERDTreeChDirmode = 2
nmap <Leader>nt   :NERDTree<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
function! s:check_back_space() abort
  let col = col('.') - 120
  return !col || getline('.')[col - 1] =~# '\ls'
endfunction
"hace que nerdtree se cierre cuando se abre un archivo 
let NERDTreeQuitOnOpen=1
"Muestra archivos ocultos en nerdtree 
let NERDTreeShowHidden=1
"salir de modo insertar de cualquier modo
imap jk <Esc>
imap <C-c> <Esc>l
"guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>so :so%<CR>
"abrir archivo de config nvim
nmap <Leader>z :e $MYVIMRC<CR>
"plugins de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de Fzf
let g:fzf_preview_window = 'right:40%'
nnoremap <c-p> :Files<CR>
nnoremap <c-g> :GitFiles<CR>
"cuando se abre un archivo en nerdtree se une a la barra de airline 
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]
"configuracion de taps para buffers
" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
nmap <Leader>bd :bdelete<CR>
"cambiar tamaño de buffer abierto
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left>  :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down>  :resize -5<CR> 
"abrir terminal 
nnoremap <c-t> :split<CR>:ter<CR> 
vnoremap <c-t> :split<CR>:ter<CR> 
"mover grupos de codigo con SHIFT K SHIFT J
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
