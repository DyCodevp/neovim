"AQUI HAY ATAJOS DE TECLADO DE VIM 
"LA CONFIGURACIgN INICIAL Y LOS SO ESTAN EN EL INIT
"ABRIR CONFIGURACION DE INIT.VIM
let mapleader=","
nmap <leader>z :e $MYVIMRC<CR>
"abrir teminal 
nmap <leader>t :split<CR>:term<CR>
"ejecutar archivo de python fast
nnoremap  <leader>n :!python %<CR>
"Get out of insert mode /
"Salir de modo insertar
imap jk  <Esc>
imap <C-c> <Esc>l
"MAPPINS DE SCROLLING DE VIM 
"Ctrl- B  Ctrl- F,desplazarse por la pagina completa
"Ctrl- U  Ctrl- D  desplazarse media página de forma predeterminada
"Ctrl- Y  Ctrl- E desplazarse una línea
"JK
" Use alt + hjkl to resize windows
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
"Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv
"Change working directory
nnoremap <leader>cd :cd %:p:h<cr>
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

"abrir Nerdtree
"open nerdtree
nmap <Leader>nt :NERDTree<CR>

"remap de coc para definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"usar c-space para usar la completion
if &filetype == "javascript" || &filetype == "python" 
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

