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
set spell
set foldmethod=indent
set iskeyword+=_ 

map <F5> ^xxj^
map <F6> ^i# <Esc>j^
map <F9> yiwoprint(f'{<Esc>p$a = }')<Esc>hhhhhb

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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

