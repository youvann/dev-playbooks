set number
syntax on

" 2 space characters instead of tabulation
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
" only for python files
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" add yaml stuffs
"au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" fzf mappings
nnoremap <C-o> :Files<CR>
nnoremap <C-O> :Files!<CR>

""""""""""""
" NERDTree "
""""""""""""
" cheat sheet
" show hidden files : shift + i
" switch between bar and file : ctrl + w + w

" toggle NERDTree panel
map <C-s> :NERDTreeToggle<CR>

" show hidden files
let NERDTreeShowHidden=1

" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Jump to the main window.
autocmd VimEnter * wincmd p

"""""""""""
" VimPlug "
"""""""""""

" Automatic installation

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pearofducks/ansible-vim'

" Initialize plugin system
call plug#end()
