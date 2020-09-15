" Enable useful Vim functionality
set nocompatible

" Show command in the right bottom bar
set showcmd

" Turn on syntax highlighting
syntax on

" Show matching braces when text indicator is over them
set showmatch 

" Disable the default Vim startup message
set shortmess+=I
" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Always show the status line at the bottom, even if you only have one window open
set laststatus=2

" Enable backspace over anything
set backspace=indent,eol,start

" Set search case-insensitive when all characters being searched are lowercase
" Set search case-sensitive if characters being searched contain any capital letters
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter
set incsearch

" Unbind some useless/annoying default key bindings
" 'Q' in normal mode enters Ex mode. You almost never want this
nmap Q <Nop> 

" Disable audible bell because it's annoying
set noerrorbells visualbell t_vb=

" Enable mouse mode
set mouse+=a

" Prevent bad habits of using arrows for navigation in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Mode information not needed when lightline plugin in on
set noshowmode

" Colorize
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme monokai

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Hightlight cursor-line and cursor-line-number
set cursorline
"hi clear CursorLine " - to clear backhighlight of current line
hi CursorLineNR term=bold cterm=bold
augroup CLsetup
    autocmd! ColorScheme * hi CursorLineNR term=bold cterm=bold
augroup END

" Undotree
nnoremap <Leader>u :UndotreeToggle<CR>
if has("persistent_undo")
    let undo_path=expand('~/.undodir')
    if !isdirectory(undo_path)
        call system('mkdir -p '.undo_path)
    endif 
    let &undodir=undo_path
    set undofile
endif

" ALE settings
let g:ale_completion_enabled = 1
" Linters should be already installed
let g:ale_linters = {'python': ['pyls', 'pylint', 'flake8']}

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

let g:solarized_termtrans = 1

" Switch vim plugin - shortcut
let g:switch_mapping = "-"
