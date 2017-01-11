" Settings
" ========

" Row numbers
set number

" Highlighted search
set hls

" Clipboard to accept copy and paste to and from vim
set clipboard=unnamedplus

" Text width limit - to format the entire file, type gg then gpG
set textwidth=80

" Configure search path to find files from current directory
set path+=,**

" Allow plugins to be loaded
set nocompatible
filetype plugin on


" Remappings
" ==========

" Easy expansion of the active file directory - type %% on Vim's command-line
" prompt, it automatically expands to the path of the active buffer just as
" though we had typed %:h<Tab>.
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

