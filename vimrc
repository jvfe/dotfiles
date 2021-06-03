let mapleader =","	

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
call plug#end()


" Setting pdf viewer for live latex preview
let g:livepreview_previewer = 'zathura'
" Avoiding delay escaping to normal mode
set timeoutlen=1000 ttimeoutlen=0
" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" clipboard
	vnoremap <C-c> "+y
	nnoremap <leader>g ggVG
" Enable autocompletion:
	set wildmode=longest,list,full
" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l
