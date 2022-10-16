call plug#begin('~/.config/.nvim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

" Disable search highlight
nnoremap <CR> :noh<CR><CR>
