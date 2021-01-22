call plug#begin()

" Aesthetics - Main
Plug 'dracula/vim' " Theme
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'ryanoasis/vim-devicons' " Adds glyphs to some plugins
Plug 'junegunn/rainbow_parentheses.vim' " Highlight parenthesis
Plug 'tpope/vim-fugitive' " Git client
Plug 'preservim/nerdtree' " NerdTree
call plug#end()


""" Coloring
syntax on
color dracula
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
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Nerdtree specific

nnoremap <C-t> :NERDTreeToggle<CR>

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
autocmd TextChanged,TextChangedI <buffer> silent write " Save file after changes
