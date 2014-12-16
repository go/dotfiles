filetype plugin on
filetype indent on
" colorscheme af
colorscheme evening

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=cp932,utf-8,euc-jp
" set tags=./GTAGS,./work/cloudstack/.tags
" set tags=.tags
set browsedir=current
set expandtab
set formatoptions+=m
set fileformats=unix,dos,mac
set backspace=indent,eol,start
set grepprg=grep\ -nH\ $*
set incsearch
set ignorecase
set ruler
set smartindent
set pastetoggle=<F10>
set shiftwidth=2
set tabstop=2
"set textwidth=72
set textwidth=0
"set term=Eterm
set wildmenu
set wrapscan
set showcmd
set title
set guioptions-=mT
set guifont=Ricty_for_Powerline:h10
set guifontwide=Ricty:h10
set foldmethod=syntax
set nobackup

syntax on

let g:changelog_timeformat="%Y-%m-%d"
let g:changelog_username="Go Chiba <go.chiba@gmail.com>"
let autodate_keyword_pre="Last Change: "
let autodate_keyword_post=" J"
let autodate_format="%a %b %d %I:%M %p %Y"
let autodate_start_line=0
let format_join_space=3
let format_allow_over_tw=0
" start neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = "fancy"

map ex :Explore<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
" map <C-]> :Gtags<CR><CR>
" map ^? :GtagsCursor<CR>
" map ^_ :Gtags -r ^R^W<CR>


" Auto Save
autocmd CursorHold * update
set updatetime=500

" Buffer List
map <silent> <C-L> :call BufferList()<cr>
" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

let g:Tex_CompileRule_dvi = 'platex -kanji=utf-8 $*'
let g:Tex_ViewRule_dvi = 'pxdvi'

" Set Key
" General Environment

" Tex Environment
au BufNewFile		  *.tex :TTemplate
au FileType tex :map <leader>ll :! platex %<cr>
au FileType tex :map <leader>lp :! dvips %:r.dvi<cr> :! lpr %:r.ps<cr> 
au FileType tex :set tabstop=2
au FileType tex :set shiftwidth=2

" Python Environment
au FileType python  :map <buffer> <leader><space> :w!<cr> :! python %<cr>
au FileType python  :set shiftwidth=2
au FileType python  :set tabstop=2
" au FileType python  source /usr/share/vim/vimfiles/ftplugin/python/python.vim
" au FileType python  :set complete+=k/home/go/work/pydiction-0.5/pydiction iskeyword+=.,(
au FileType python  :let g:python_syntax_folding=1
" au BufNewFile *.py  :set encoding=utf-8
" au BufNewFile *.py  :set fileencoding=utf-8

" HTML/CSS Environment
au FileType html :set fileencoding=utf-8

" C/C++ Environment

" enable Vimshell (developed by Syougo)
"let g:VimShell_EnableInteractive = 1

" js Environment
au BufNewFile,BufRead  *.js :set syntax=javascript
au FileType javascript :set encoding=utf-8
au FileType javascript :set fileencoding=utf-8
au FileType javascript :set termencoding=utf-8
au FileType javascript :e ++enc=utf-8
" au FileType javascript :setlocal omnifunc=javascriptcomplete#CompleteJS

" Java Environment
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

" coffee Environment
au FileType coffee :set encoding=utf-8
au FileType coffee :set fileencoding=utf-8

" Bundle 'chase/vim-ansible-yaml'
