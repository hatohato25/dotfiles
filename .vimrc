set nocompatible
filetype plugin indent off

if has('vim_starting')
	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#rc(expand('~/.vim/bundle'))
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle:
" Required:
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'ujihisa/unite-locate'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'taglist.vim'
NeoBundle 'mattn/emmet-vim'

" Arggs for Bundle
set laststatus=2
let g:lightline = {
        \ 'colorscheme': 'powerline',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ }

" Color Scheme
NeoBundle 'tomasr/molokai'
colorscheme molokai
syntax on

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
