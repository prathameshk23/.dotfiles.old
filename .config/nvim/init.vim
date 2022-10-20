call plug#begin('~/.config/.nvim/plugged')
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Yuck support
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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
