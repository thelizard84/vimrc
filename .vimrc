" #### Basic Config ####

let mapleader = ' '

syntax enable
set noerrorbells
set relativenumber
set number
set cursorline
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
highlight ColorColumn ctermbg=0 guibg=lightgrey

nmap <leader>q :q!<CR>
nmap <leader>x :bd!<CR>

command! ConfigEdit execute ":e $MYVIMRC"
command! ConfigReload execute ":so $MYVIMRC"

" #### VimPlug ####
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'ap/vim-buftabline'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-startify'
" Plug 'blueshirts/darcula'
Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'pechorin/any-jump.vim'

call plug#end()


" #### Color Scheme ####

" colo darcula
colorscheme gruvbox
highlight Normal guibg=black


" #### NERDTree #### 

function! ToggleNERDTree()
	NERDTreeToggle
	silent NERDTreeMirror
endfunction

nmap <leader>n :call ToggleNERDTree()<CR>


" #### lightline ####

set laststatus=2


" #### fzf ####

nmap <leader>f :BLines!<CR>
nmap <leader>c :Commands!<CR>


" #### COC ####  Todo: Dosnt work! Fix It!

command! CocPluginInstall execute ":CocInstall coc-tsserver coc-eslint coc-prettier coc-json coc-html coc-css coc-explorer coc-floaterm coc-clangd"


" #### Undotree ####

nmap <leader>u :UndotreeToggle<CR>


" #### Buftabline ####

nmap <leader><right> :bnext<CR>
nmap <leader><left> :bprev<CR>
