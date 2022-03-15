set rnu
set nu
set nowrap
set scrolloff=4
set mouse
set scrolloff=5
set mouse
set foldmethod=indent
set foldnestmax=2
set noremap <space> za
set 
set foldmethod=indent


let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'

Plug 'mhinz/vim-startify'

Plug 'tmhedberg/SimpylFold'

Plug 'Valloric/YouCompleteMe'
call plug#end()

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

hi Folded ctermbg=256

bo term
resize 13