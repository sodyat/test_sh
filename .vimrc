call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'


call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

