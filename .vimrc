"################################
" Plugin Manager
"################################
set rtp+=~/.vim/bundle/Vundle.vim
filetype off                            "required for Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'        "status bar
Plugin 'vim-airline/vim-airline-themes' "status bar themes
Plugin 'tpope/vim-fugitive'             "git
" Plugin 'ctrlpvim/ctrlp.vim'             "fuzzy finder
Plugin 'junegunn/fzf'                   "fuzzy finder
Plugin 'junegunn/fzf.vim'               "fuzzy finder
Plugin 'scrooloose/nerdtree'            "folder tree
Plugin 'vim-syntastic/syntastic'        "syntax checker
Plugin 'tpope/vim-commentary'           "commenting blocks of code
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/surround'
Plugin 'MarcWeber/vim-addon-mw-utils'   "SnipMate dependency
Plugin 'tomtom/tlib_vim'                "SnipMate dependency
Plugin 'garbas/vim-snipmate'            "code snippet with tab completion
Plugin 'honza/vim-snippets'             "code snippet with tab completion
Plugin 'dsfcode/hive.vim.git'           "syntax highlighting for Hive
Plugin 'nanotech/jellybeans.vim'        "color scheme
Plugin 'slim-template/vim-slim.git'     "syntax highlighting for slim
Plugin 'rizzatti/dash.vim'              "search terms in docs browser app Dash
call vundle#end()
filetype on

"################################
" Plugin Settings
"################################
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_check_on_wq = 0

"################################
" Setup
"################################
syntax on
colorscheme jellybeans
set showmode
set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set history=1000
set encoding=utf-8
set nocompatible
set clipboard=unnamed
set ruler
set laststatus=2                "show status bar"
set backspace=indent,eol,start  "allow backspace in insert mode
set showcmd                     "show incomplete cmds down the bottom
set gcr=a:blinkon0              "disable cursor blink
set visualbell                  "no sounds"
set listchars=tab:>·,trail:·    "make tabs and trailing spaces visible
" set grepprg=rg                  "use ripgrep instead of instead of grep
set lazyredraw                  "prevent redraw while executing macros
set list
set noswapfile | set nowritebackup | set nobackup " Make vim run faster by turning off swap files/backup

"################################
" Auto Commands
"################################
autocmd FileType python,ruby,javascript setlocal colorcolumn=80
autocmd FileType python setlocal commentstring=#%s
autocmd FileType ruby setlocal commentstring=#%s
autocmd FileType sql setlocal commentstring=--%s
autocmd FileType hive setlocal commentstring=--%s
autocmd FileType sh setlocal commentstring=#%s
autocmd FileType markdown setlocal commentstring=<!--\ %s\ -->
autocmd FileType html setlocal commentstring=<!--\ %s\ -->
autocmd FileType javascript setlocal commentstring=//%s

"################################
" Key Mappings
"################################
inoremap kj <Esc>
cnoremap kj <Esc>
let mapleader = ","
map <leader>n :NERDTree<cr>
map <Leader>w <C-w>w
" map <leader>p :CtrlP<cr>
map <leader>p :Files<cr>
" yw vep OR yw cw<C-r>0<ESC> - change word using current paste buffer (requires cursor at start of word before pasting)


