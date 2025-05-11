" vim runtime configuration file

" Plug-in
call plug#begin('~/.vim/plugged')

" C/C++
Plug 'vim-syntastic/syntastic'			" real-time syntax check
Plug 'preservim/tagbar'					" code browsing(dependency - ctags)
Plug 'dense-analysis/ale'				" Asynchronous Linter + LSP
Plug 'octol/vim-cpp-enhanced-highlight'	" C++ syntax highlight

" Productivity
Plug 'preservim/nerdtree'		" file system explorer
Plug 'preservim/nerdcommenter'	" comment toggle
Plug 'vim-scripts/taglist.vim'	" similar to tagbar
Plug 'MarcWeber/vim-addon-mw-utils' " required by vim-snipmate
Plug 'garbas/vim-snipmate'		" code snippet

" Basic utils
Plug 'tpope/vim-sensible'	" set sane options
Plug 'junegunn/fzf.vim'		" fuzzy finder (dependency - fzf)

call plug#end()

" setup
set ai cindent	" autoindent & cindent
set nu			" display row-number
syntax enable	" syntax highlight
colo darkblue	" colorscheme
set ts=4 sw=4	" tabstop value & shiftwidth
set hls			" highlight search
set mouse=a		" mouse wheel
set sm			" showmatch
set ruler		" show info along bottom
set incsearch	" highlight as you type your search

" C
autocmd FileType c setlocal
  \ textwidth=80
  \ colorcolumn=80

" C++
autocmd FileType cpp setlocal
  \ textwidth=120
  \ colorcolumn=120

" git
autocmd FileType gitcommit setlocal
  \ textwidth=72
  \ colorcolumn=72,50
  \ formatoptions+=t

" abbreviations
ab ME gjk.100.010.110@gmail.com
ia T0 <C-R>=strftime("%Y.%m.%d-%H:%M:%S")<CR>

" keymapping
" nmap imap vmap cmap
