" Install vim-plug
   if empty(glob('C:/Users/gwisw/vimfiles/autoload/plug.vim'))
      silent !curl -fLo C:/Users/gwisw/vimfiles/autoload/plug.vim --create-dirs
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
         autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
 endif 

"vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'              "Note taking
Plug 'suan/vim-instant-markdown'    "Markdown preview
Plug 'plasticboy/vim-markdown'      "Markdown Syntax
Plug 'jiangmiao/auto-pairs'         "Completes pairs such as parenthesis
Plug 'scrooloose/nerdtree'          "File Browser
Plug 'tpope/vim-surround'           "Change and add tahs surrounding a word or sentence
Plug 'tpope/vim-commentary'         "Allows for easy commenting in vim
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'               "Fuzzy finder
Plug 'airblade/vim-rooter'          "Sets the working directory to the root directory
Plug 'christoomey/vim-system-copy'      "Allows vim to copy objects (such as iw) with xsel
Plug 'christoomey/vim-tmux-navigator'
"UI enhancements
Plug 'joshdick/onedark.vim'         "Theme
"Plug 'itchyny/lightline.vim'        "Theme
Plug 'vim-airline/vim-airline'      "Line
Plug 'mhinz/vim-signify'            "Changes at the number line
Plug 'Yggdroot/indentline'          "Show lines on indentation
Plug 'dracula/vim',{'as':'dracula'}                  "Theme
Plug 'arcticicestudio/nord-vim'     "Theme
Plug 'morhetz/gruvbox'              "Theme
Plug 'ayu-theme/ayu-vim'            "Theme
Plug 'rakr/vim-one'                 "Theme
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"let g:lightline = {
  "  \ 'colorscheme': 'onedark'
 "   \ 
"}

"Background
set t_Co=256
set t_ut=

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

let g:one_allow_italics = 1;
colorscheme gruvbox
set background=dark

"Basic settings
set nocompatible
filetype plugin on
"filetype markdown let g:indentLine_enabled=0
autocmd FileType markdown let g:indentLine_enabled=0
syntax on
set number
set relativenumber
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set ignorecase
set hlsearch
set incsearch
set formatoptions-=cro      
set clipboard=unnamedplus   
set splitbelow splitright   
set noshowmode              
set laststatus=2            
set go+=a                   
set history=1000
set noswapfile
set conceallevel=0
"Create Lines outside edit mode

let mapleader=" "
map <leader>md :InstantMarkdownPreview<CR>
map <leader>o o<esc>
map <leader>O O<esc>

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:instant_markdown_autostart = 0	" disable autostart

let g:airline#extensions#tabline#enabled                      = 1
let g:airline#extensions#tabline#buffer_min_count             = 1
let g:airline#extensions#tabline#tab_min_count                = 1
let g:airline#extensions#tabline#buffer_idx_mode              = 1
let g:airline#extensions#tabline#buffer_nr_show               = 0
let g:airline#extensions#tabline#show_buffers                 = 1
let g:airline#extensions#branch#enabled                       = 1
let g:airline#extensions#tagbar#enabled                       = 1
let g:airline_powerline_fonts                                 = 1
let g:airline#extensions#whitespace#enabled       = 0
let g:airline#extensions#tabline#fnamemod         = ':t'
let g:airline_theme                               = 'hybrid'
let g:airline_section_c                           = '%{fnamemodify(expand("%"), ":~:.")}'
let g:airline_section_x                           = '%{fnamemodify(getcwd(), ":t")}'
let g:airline_section_y = airline#section#create(['filetype'])
