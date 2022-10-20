call plug#begin('~/.config/.nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'elkowar/yuck.vim'
call plug#end()

set number relativenumber
set tabstop=4
set shiftwidth=4
set noexpandtab

filetype plugin indent on
autocmd FileType asm setlocal ft=nasm expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2

" Disable search highlight
nnoremap <CR> :noh<CR><CR>
