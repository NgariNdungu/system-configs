set nocompatible		" required
filetype off			" required

" set vundle runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.Vim'

" other plugins come here
" file browser
Plugin 'scrooloose/nerdtree'
" work with rails
Plugin 'tpope/vim-rails'
" code completion
Plugin 'Valloric/YouCompleteMe'

" code snippets with snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" extra snippets with vim-snippets
Plugin 'honza/vim-snippets'

" code commenting
Plugin 'tomtom/tcomment_vim'
" match braces
Plugin 'jiangmiao/auto-pairs' 
" syntax checking with syntastic
Plugin 'vim-syntastic/syntastic'

" code search with silversearcher
Plugin 'mileszs/ack.vim'

" git integration
Plugin 'tpope/vim-fugitive'

" surround
Plugin 'tpope/vim-surround'

" golang support
" Plugin 'fatih/vim-go'

call vundle#end() 		" required
filetype plugin indent on	" required
syntax on

" non-plugin configs come after
"
" indentation, 2 spaces, tab to spaces
set tabstop=2
set shiftwidth=0	" defaults to tabstop
set expandtab
set smartindent
set autoindent
" show line numbers
set number
" highlight search
set hlsearch
" enable mouse
set mouse=a
" use system clipboard
set clipboard=unnamedplus
" snipmate mappings
" https://github.com/Valloric/YouCompleteMe/issues/47 
:imap zz <esc>a<Plug>snipMateNextOrTrigger
:smap zz <Plug>snipMateNextOrTrigger

" nerdtree mappings
" https://medium.com/@todariasova/rails-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
:map <C-\> :NERDTreeToggle<CR>

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

let g:syntastic_ruby_rubocop_args = "--no-display-cop-names --parallel"
" use ag with ack.vim
if executable('ag')
  let g:ackprg = "ag --nogroup --nocolor --column"
endif
