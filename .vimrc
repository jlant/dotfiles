" =============================================================================
" Plugins
" =============================================================================
" Using Vim's built-in plugin manager
" Created the following directories for the plugins
" ~/.vim/pack/plugins/start - plugins automatically loaded when vim starts
" ~/.vim/pack/plugins/opt - plugins loaded when you use command :packadd [plugin_name]

" =============================================================================
" General Settings
"   For help on a setting run :help <setting>
" =============================================================================
syntax on
filetype plugin indent on

set autoindent
set clipboard=unnamedplus
set confirm
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set hlsearch
set incsearch
set nocompatible
set number
set omnifunc=syntaxcomplete#Complete
" set omnifunc=ale#completion#OmniFunc
set path+=,**
set relativenumber
set showmatch
set spelllang=en_us
set wildmenu

" =============================================================================
" Specific Settings
"   - Python and Full Stack Development
" =============================================================================
" Python PEP8 indentation and settings
au BufNewFile,BufRead *.py,*.rst,*.md
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

" =============================================================================
" Vim's builtin file explorer Netrw configurations
"   :Explore
" =============================================================================
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 25

" =============================================================================
" Remappings and Abbreviations
" =============================================================================
" Add a blank line above and below current line
" https://superuser.com/questions/607163/inserting-a-blank-line-in-vim
nnoremap <silent> ]<Space> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
nnoremap <silent> [<Space> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>

" Write file and run python file by pressing <F5> from Normal mode
nnoremap <F5> :w<CR>:!clear;python3 %<CR>

" Abbreviation for bash shebang
abbr _bash #!/bin/env bash<CR>

" =============================================================================
" Settings specific for plugins
" =============================================================================
" lightline.vim
" -------------
"   - Make sure status line shows all info
"   - Add colored statusline
"   - Add solarized light colored statusline
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" ALE
" ---
"   - Add fixers
"   - Enable automatic fixing
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\}

let g:ale_fix_on_save = 1

" Goyo + Limelight
" ----------------
"   - Add color for Limelight
"   - Set automatic commands to toggle Limelight on and off Goyo
let g:limelight_conceal_ctermfg = 'gray'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Solarized colorscheme
" ---------------------
"   - https://github.com/altercation/vim-colors-solarized
set background=dark
colorscheme solarized

" =============================================================================
" Other
"   - Highlighting for spelling mistakes comes after colorscheme setting
" =============================================================================
highlight SpellBad cterm=underline ctermfg=darkred guifg=darkred
highlight SpellLocal cterm=underline ctermfg=darkred guifg=darkred
highlight SpellRare cterm=underline ctermfg=darkred guifg=darkred
highlight SpellCap cterm=underline ctermfg=darkred guifg=darkred
