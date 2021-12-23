"AQUI LA CONFIGURACION DE LOS PLUGINS 
"VIM AIRLINE
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"██████╗░██╗░░░░░██╗░░░██╗░██████╗░░░░░░░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░░░░░░░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░█████╗██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗╚════╝██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝░░░░░░╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░░░░░░░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

"import COC config
source ~/AppData/Local/nvim/config-vim/coc-config.vim

"▄▀█ █ █▀█ █░░ █ █▄░█ █▀▀
"█▀█ █ █▀▄ █▄▄ █ █░▀█ ██▄

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:ariline_powerline_fonts = 1

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

"Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
" Customize global settings scss setl iskeyword+=@-@
" CONFIGURACION DE KITE
let  g:kite_supported_languages  = ['python', 'javascript'] 
"COC
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
