" Automatic vim plug install if needed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Aesthetics - Main
Plug 'morhetz/gruvbox' " Theme
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'ryanoasis/vim-devicons' " Adds glyphs to some plugins
Plug 'junegunn/rainbow_parentheses.vim' " Highlight parenthesis
Plug 'tpope/vim-fugitive' " Git client
Plug 'preservim/nerdtree' " NerdTree
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Golang
Plug '907th/vim-auto-save' " AutoSave
Plug 'jiangmiao/auto-pairs' " Auto close pairs
Plug 'tpope/vim-rhubarb' " GitHub compatibility
Plug 'kien/ctrlp.vim' " Ctrlp search

call plug#end()

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
set termguicolors

""" Coloring
let g:gruvbox_italic=1
syntax on
color gruvbox
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
" Uncomment the following to make hidden chars visible
" set list listchars=trail:»,tab:»-
" set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Nerdtree specific

nnoremap <C-n> :NERDTreeToggle<CR>

""" Abbreviations

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

""" Autocommands

autocmd BufWritePost *.go :silent GoFmt
