" copy from vundle installation guide https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:vim-scripts/taglist.vim.git'
"Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'git@github.com:davidhalter/jedi-vim.git'
Plugin 'git@github.com:tpope/vim-fugitive.git'
Plugin 'zivyangll/git-blame.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/LeaderF'
" call :FixWhitespace to fix trailing whitespace
"Plugin 'git@github.com:bronson/vim-trailing-whitespace.git'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'bling/vim-airline'
Plugin 'zivyangll/git-blame.vim'
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
"set tabstop=4
"set expandtab
"set shiftwidth=4
set showmatch
set autoindent
set smartindent
set incsearch
set hlsearch
set showmatch
set nobackup
set tags=tags
set path+=**
set foldmethod=syntax
set foldlevelstart=99
set laststatus=2
set ignorecase

" cscope
cs add cscope.out
" enable quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

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
    set guifont=Consolas:h12
else
    set background=dark
endif
colorscheme solarized

" taglist config
filetype on
nnoremap <silent> <F8> :TlistToggle<CR><CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_WinWidth = 50
let Tlist_Auto_Open = 1

" LeaderF config
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" key mapping
" default <lender> is '\'
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>b :<C-u>call gitblame#echo()<CR>
nmap <F4> :cnext <CR>
nmap <F3> :cprev <CR>
nmap <F5> :tprev <CR>
nmap <F6> :tnext <CR>
nmap <leader>f :LeaderfFile --file ./cscope.files<CR>
nmap <leader>a :LeaderfTag<CR>
