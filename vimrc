" copy from vundle installation guide https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:vim-scripts/taglist.vim.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
" call :FixWhitespace to fix trailing whitespace
Plugin 'git@github.com:bronson/vim-trailing-whitespace.git'
call vundle#end()
filetype plugin indent on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" basic configurations
syntax on
set number
set ruler
set encoding=utf-8
set tabstop=4
set expandtab
set shiftwidth=4
set showmatch
set autoindent
set smartindent
set incsearch
set hlsearch
set showmatch
set nobackup
set tags=tags
set path+=**
set font=Consolas:h12

" auto add cscope.out
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set nocsverb
        if filereadable("cscope.out")
                cs add cscope.out
        elseif $CSCOPE_DB != ""
                cs add $CSCOPE_DB
        endif
        set csverb
endif

" right margin line show
set textwidth=80
set colorcolumn=+1
"hi ColorColumn ctermbg=blue guibg=lightgrey

" color theme configurations
syntax enable
set t_Co=256
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
if has('gui_running')
    set background=dark
else
    set background=dark
endif
colorscheme solarized

" taglist config
nnoremap <silent> <F8> :TlistToggle<CR><CR>
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1

" key mapping
" default <lender> is '\'
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>	
