" Settings
" ========

" Make sure that all the features of VIM can be used. Compatible mode means
" compatible with vi.
set nocompatible

" Execute Tim Pope's plugin manager called Pathogen
execute pathogen#infect()

" Allow plugins to be loaded
filetype plugin indent on

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


" Remappings
" ==========

" Easy expansion of the active file directory - type %% on Vim's command-line
" prompt, it automatically expands to the path of the active buffer just as
" though we had typed %:h<Tab>.
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

