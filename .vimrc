" General Settings
set nu                      " Show line numbers
set rnu                     " Show relative line numbers
set scrolloff=5             " Keep 5 lines of context when scrolling
set nowrap                  " Do not wrap lines
set mouse=a                 " Enable mouse support
set spell                   " Enable spell checking
set foldmethod=indent       " Fold based on indentation
set foldnestmax=2           " Limit folding to 2 levels
nnoremap <space> za         " Toggle fold with Space

" Key Mappings
nnoremap <F5> :w<CR>j       " Save and move one line down
nnoremap <F6> I# <Esc>j     " Comment the current line and move down
nnoremap <F9> yiwoprint(f'{<Esc>p$a = }')<Esc>hhhhhb  " Python debug print

" Vimspector Mappings
nnoremap <Leader>dd :call vimspector#Launch()<CR>          " Launch Vimspector
nnoremap <Leader>de :call vimspector#Reset()<CR>           " Reset Vimspector
nnoremap <Leader>dc :call vimspector#Continue()<CR>        " Continue execution
nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR> " Toggle breakpoint
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR> " Clear breakpoints
nnoremap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>dk <Plug>VimspectorRestart                   " Restart Vimspector
nmap <Leader>dh <Plug>VimspectorStepOut                   " Step out
nmap <Leader>dl <Plug>VimspectorStepInto                  " Step into
nmap <Leader>dj <Plug>VimspectorStepOver                  " Step over

" Change Cursor Shape for Insert and Normal Modes
if exists('&t_SI')
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
endif

" Plugin Manager (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'tmhedberg/SimpylFold'
Plug 'Valloric/YouCompleteMe'
Plug 'puremourning/vimspector'
Plug 'morhetz/gruvbox'
call plug#end()

" Auto Commands
autocmd VimEnter * wincmd p  " Focus last active window

" Folding Highlight Customization
hi Folded ctermbg=grey guibg=grey

# colorscheme desert

colorscheme gruvbox " Use the gruvbox theme

syntax on           " Enable syntax highlighting
set background=dark " Set the background (dark/light)
