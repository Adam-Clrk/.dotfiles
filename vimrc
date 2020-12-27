if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
set tabstop=4
set shiftwidth=4
set linebreak
set backspace=3

set ttimeout
set ttimeoutlen=100
set timeoutlen=3000

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'itchyny/lightline.vim'

Plug 'ghifarit53/tokyonight-vim'

Plug 'ycm-core/YouCompleteMe'

let g:ycm_java_jdtls_extension_path = [
  \ '/home/adam/.vim/plugged/vimspector/gadgets/linux'
  \ ]

Plug 'puremourning/vimspector'

call plug#end()

let NERDTreeIgnore = ['\~$', '\.class$']

"Lightline
set laststatus=2
set noshowmode

"Tokyo night
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

let g:lightline = {'colorscheme' : 'tokyonight'}

let g:vimspector_enable_mappings = 'HUMAN'
