call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'luochen1990/rainbow'
Plug 'github/copilot.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
call plug#end()

nnoremap <silent> <C-a> :NERDTreeToggle <CR>
nmap <Leader>r :NERDTreeRefreshRoot <CR>
let NERDTreeShowHidden=1


set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on
set noswapfile
set backspace=2
set colorcolumn=120
