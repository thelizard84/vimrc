" #### Basic Config ####

syntax enable
set noerrorbells
set relativenumber
set number
set cursorline
set cursorcolumn
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
" set signcolumn=yes
" set colorcolumn=80
set cmdheight=1
highlight ColorColumn ctermbg=0 guibg=lightgrey


" #### Vim Mouse Support ####

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


" #### Some Keybinds ####

let mapleader = ' '

nmap <leader>q :q!<CR>
nmap <leader>x :bd!<CR>
nmap <leader>vs :vsplit<CR>
nmap <leader>s :split<CR>


" #### Some Commands ####

command! ConfigEdit execute ":e $MYVIMRC"
command! ConfigReload execute ":so $MYVIMRC"

" #### VimPlug ####
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'ap/vim-buftabline'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-startify'
" Plug 'blueshirts/darcula'
" Plug 'gruvbox-community/gruvbox'
" Plug 'morhetz/gruvbox'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'mbbill/undotree'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'pechorin/any-jump.vim'
" Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'frc1418/vim-victis'
call plug#end()


" #### Color Scheme ####

" colo darcula
" let g:gruvbox_contrast_dark = 'hard'
colorscheme papaya
" colorscheme material
highlight Normal guibg=#282828


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


" #### COC ####

" command! CocPluginInstall execute ":CocInstall coc-tsserver coc-eslint coc-prettier coc-json coc-html coc-css coc-explorer coc-floaterm coc-clangd"


" #### Undotree ####

nmap <leader>u :UndotreeToggle<CR>


" #### Buftabline ####

nmap <leader><right> :bnext<CR>
nmap <leader><left> :bprev<CR>


" #### Windows (GVIM) ####

nmap <leader>win :set guifont=Cascadia_Code_PL:h16<CR>
