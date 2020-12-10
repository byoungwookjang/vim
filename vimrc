" Configuration



" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'posva/vim-vue'
Plugin 'bling/vim-airline'
Plugin 'roxma/nvim-yarp'
Plugin 'ncm2/ncm2'
" Filepath completion
Plugin 'ncm2/ncm2-path'
" Multi Cursor
Plugin 'terryma/vim-multiple-cursors'

" Neosnippet
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" Python autocomplete. pip install jedi first
Plugin 'davidhalter/jedi-vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()

" Trigger configuration. You need to change this to something other than
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

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
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
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
set colorcolumn=80

" Aesthetics

" Mappings and shortcuts

" Basics

inoremap jk <ESC>
let mapleader = ","

" Arrows are unvimlike 

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Miscellaneous 

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
au FocusLost * :wa
vnoremap . :norm.<CR>

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
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>
nnoremap <leader>c :nohl<CR>
nnoremap <leader>pa :set nopaste!<CR>
nnoremap <leader>rc :so $MYVIMRC<CR>
nnoremap <leader>b :BlogSave publish<CR>
"nnoremap <leader>r :! /Users/daniel/Documents/whup.sh<CR><CR>
nnoremap <leader>h :set ft=HTML<CR><CR>
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-t> <C-w>w
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
