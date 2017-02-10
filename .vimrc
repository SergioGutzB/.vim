set t_Co=256
syntax enable
set background=dark

filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
"" set mouse=a
set autoindent

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
" Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'marijnh/tern_for_vim'
" Plugin 'bling/vim-airline'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
"plugin for ReacJS"
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
"Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'docunext/closetag.vim'
Plugin 'jaxbot/syntastic-react'
Plugin 'justinj/vim-react-snippets'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'burnettk/vim-angular'
Plugin 'shougo/neocomplete.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"


"" =============
" Plugin config
" =============

" ctrlp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_follow_symlinks = 1

" Syntastic n00b settings :)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indentLine
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'


" NERDTree
" autocmd VimEnter * NERDTree
let NERDTreeShowHidden = 0
let g:NERDTreeWinSize=34

" airline
" " NeoVim doesn't currently support changing the font,
" " so no patched power/airline fonts :()
"let g:airline_powerline_fonts = 1

" ================
" " display settings
" " ================
"
" " syntax highlighting
syntax enable
colorscheme molokai

" display whitespace
set list
set listchars=eol:¬,tab:»·,extends:>,precedes:<,trail:·

" set indentation to be four spaces
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" enable autoindent
set autoindent
filetype plugin indent on

" highlight current line
set cursorline

" don't highlight searches
set nohlsearch

" show line numbers
set number

" show relative line numbers
" set relativenumber

" show absolute line numbers in insert mode
" autocmd InsertEnter * set number norelativenumber
" autocmd InsertLeave * set relativenumber
" enable soft word wrap
set linebreak
" only redraw when needed
set lazyredraw
" " set gui font
" " NeoVim doesn't currently support changing the font,
" " so no patched power/airline fonts :()
set guifont=Deja\ Vu\ Sans\ Mono\ for\ Powerline


" ================
" " command settings
" " ================
"
" " show autocomplete for commands
set wildmenu
" search while typing
set incsearch


" =============
" " misc settings
" " =============
"
" " hide buffers
set hidden
" backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" ======================
" configuration css scss
" "=====================

au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=

"======================
" configuration commentary
"======================
autocmd FileType apache setlocal commentstring=#\ %s

"==========================
"configuration Emmet
"============================
"
let g:user_emmet_mode='a'    "enable all function in all mod"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

let g:multi_cursor_use_default_mapping=0


au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END


"LESS"
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

"NODE"
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif

"close tag"
au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim

"snippets react

let g:syntastic_javascript_checkers = ['eslint']


"=====================
"   neocomplete
"====================

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

"====================
"   python ident pep8
"====================
let g:pymode_indent = 0


"====================
"   vim jsbeautifull
"====================
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprev<cr>


let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
