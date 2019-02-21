" Config
" ======

" Make sure that all the features of VIM can be used. Compatible mode means
" compatible with vi.
set nocompatible
filetype off

" Plugins
" =======
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required 
" The following command installs plugins  :PluginInstall
Plugin 'gmarik/Vundle.vim'

" All plugins are added here (before call to vundle#end()
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" End of plugins
call vundle#end()
filetype plugin indent on
 
" Settings
" ========

" Tell syntastic plugin to use flake8 checker
let g:syntastic_python_checkers = ['flake8']

" Python PEP8 indentation and settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Full stack (javascript, html, css)  indentation and settings
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable all Python syntax highlighting features
let python_highlight_all = 1
syntax on

" UTF-8 support
set encoding=utf-8

" Row numbers
set number

" Cursorline
set cursorline

" Highlighted search
set hls

" Show the matching part of the pair for [] {} and ()
set showmatch

" Clipboard to accept copy and paste to and from vim
set clipboard=unnamedplus

" Text width limit - to format the entire file, type gg then gqG
"set textwidth=90

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

" Write file and run python file by pressing <F5> from Normal mode
nnoremap <F5> :w<CR>:!clear;python %<CR>

