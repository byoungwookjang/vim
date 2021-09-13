" Vundle
set nocompatible              
filetype off                 

" Configuration

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
    let g:airline_theme='bubblegum'

" Latex configuration
Plugin 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsEditSplit="vertical"
Plugin 'honza/vim-snippets'

Plugin 'lervag/vimtex'
    let g:tex_flavor='latex'
    "let g:vimtex_view_enabled = 0
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    let g:vimtex_view_general_viewer = 'sumatraPDF'
    let g:vimtex_view_general_options = '-reuse-instance @pdf'
    let g:vimtex_view_general_options_latexmk = '-reuse-instance'

Plugin 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'

setlocal nospell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Multi Cursor
Plugin 'terryma/vim-multiple-cursors'

" Dracula Theme
Plugin 'dracula/Vim', {'name':'dracula'}


call vundle#end()
" Pathogen first

" Basic Settings
filetype plugin indent on
syntax on
set clipboard=unnamed
set guifont=Menlo:h14
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set fileencodings=utf-8,euckr
set scrolloff=10
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
" set visualbell
" set belloff=esc
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set noundofile
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set linebreak
set nolist
set formatoptions=qrn1
"set colorcolumn=80

" Aesthetics
let g:dracula_colorterm = 0
color dracula

"packadd! dracula
" syntax enable
"colorscheme dracula

" Mappings and shortcuts
" nnoremap j jzz
" nnoremap k kzz

" Ctrl - s to save
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a

" Basics

" inoremap jk <ESC>
let mapleader = ","

" Arrows are unvimlike 

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Miscellaneous 

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
au FocusLost * :wa
vnoremap . :norm.<CR>

" Latex Configurations
"let g:vimtex_view_general_viewer = 'wslview'
"let g:vimtex_view_general_options = '-reuse-instance @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Leader shortcuts

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>j VipJ
nnoremap <leader>q gqip
nnoremap <leader>f 1z=
nnoremap <leader>s ]s
nnoremap <leader>u :!git pull website master && git commit -am 'Standard commit.' && git push website master<CR><CR>
nnoremap <leader>p :!git commit -am 'Standard commit.' && git push origin master<CR><CR>
nnoremap <leader>d :read !date<CR>
nnoremap <leader>r :!!<CR>
nnoremap <leader>m :normal @a
nnoremap <leader>l :CtrlP<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>
nnoremap <leader>c :nohl<CR>
nnoremap <leader>pa :set nopaste!<CR>
nnoremap <leader>rc :so $MYVIMRC<CR>
nnoremap <leader>b :BlogSave publish<CR>
"nnoremap <leader>r :! /Users/daniel/Documents/whup.sh<CR><CR>
nnoremap <leader>h :set ft=HTML<CR><CR>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTree
nnoremap :tn :tabnew
nnoremap :tc :tabclose
nnoremap :to :tabonly

" Control shortcuts

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Windows terminal cursor
let &t_SI="\<CSI>5\ q"
let &t_SR="\<CSI>7\ q"
let &t_EI="\<CSI>2\ q"

" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

