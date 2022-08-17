set nocompatible " Set no compatible

" Plugins - Vim-plug
" ``````````````````
" Plug 'rhysd/vim-clang-format'

call plug#begin()
" |-- Colorschemes --|
Plug 'NLKNguyen/papercolor-theme'
"" |-- Lightline --|
Plug 'itchyny/lightline.vim'
let g:lightline = {
            \ 'active': {
            \     'left': [['mode', 'paste'], ['readonly', 'filename_logo', 'modified', 'p4Info']],
            \     'right': [['lineinfo'], ['fileformat', 'percent']]
            \ },
            \ 'inactive': {
            \     'left': [['mode', 'paste'], ['readonly', 'filename_logo', 'modified']],
            \     'right': [['lineinfo'], ['percent']]
            \ },
            \ 'colorscheme': 'PaperColor',
            \ 'component': {
            \   'lineinfo': ' %l:%v',
            \ },
            \ 'component_function': {
            \   'filename_logo': 'MyFilename',
            \   'fileformat': 'MyFileformat',
            \   'readonly': 'LightlineReadonly',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }
function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

let g:fStat = {}

" |-- Devicons --|
" Plug 'ryanoasis/vim-devicons'
function! MyFileformat()
    let fmtLogo = { 
                \ 'dos'  : '',
                \ 'mac'  : '',
                \ 'unix' : ''
                \ }
    return fmtLogo[&fileformat]
endfunction

function! MyFilename()
    let fileLogo = {
                \ 'ai'              : '',
                \ 'awk'             : '',
                \ 'bash'            : '',
                \ 'c'               : '',
                \ 'clojure'         : '',
                \ 'coffee'          : '',
                \ 'cpp'             : '',
                \ 'csh'             : '',
                \ 'css'             : '',
                \ 'd'               : '',
                \ 'dart'            : '',
                \ 'dosbatch'        : '',
                \ 'dosini'          : '',
                \ 'erlang'          : '',
                \ 'fish'            : '',
                \ 'forth'           : '',
                \ 'go'              : '',
                \ 'haml'            : '',
                \ 'haskell'         : '',
                \ 'hbs'             : '',
                \ 'html'            : '',
                \ 'ico'             : '',
                \ 'java'            : '',
                \ 'javascript'      : '',
                \ 'javascriptreact' : '',
                \ 'json'            : '',
                \ 'ksh'             : '',
                \ 'less'            : '',
                \ 'lhaskell'        : '',
                \ 'log'             : '',
                \ 'lua'             : '',
                \ 'markdown'        : '',
                \ 'ocaml'           : 'λ',
                \ 'perl'            : '',
                \ 'php'             : '',
                \ 'plaintex'        : 'ﭨ',
                \ 'python'          : '',
                \ 'r'               : '',
                \ 'rmd'             : '',
                \ 'rs'              : '',
                \ 'ruby'            : '',
                \ 'sass'            : '',
                \ 'scala'           : '',
                \ 'scss'            : '',
                \ 'sh'              : '',
                \ 'slim'            : '',
                \ 'sln'             : '',
                \ 'sql'             : '',
                \ 'styl'            : '',
                \ 'suo'             : '',
                \ 'svg'             : '',
                \ 'swift'           : '',
                \ 'tads'            : '',
                \ 'tcl'             : '',
                \ 'tcsh'            : '',
                \ 'toml'            : '',
                \ 'tsx'             : '',
                \ 'twig'            : '',
                \ 'typescript'      : '',
                \ 'verilog'         : '',
                \ 'vim'             : '',
                \ 'vue'             : '',
                \ 'xml'             : '',
                \ 'yaml'            : '',
                \ 'zsh'             : '',
                \ }

    if( fileLogo->has_key(&filetype))
        return fileLogo[&filetype] . ' ' . expand('%:t') 
    else
        return expand('%:t')
    endif
endfunction


call plug#end()


" Variables
" `````````
" {{{
let &titleold             = getcwd() " Set console title to path on vim exit
let c_curly_error         = 1        " Show curly braces error
let c_space_errors        = 1        " Highlight trailing spaces
let g:diff_translations   = 0        " Disables localisations and speeds up syntax highlighting in diff mode
let g:load_doxygen_syntax = 1        " Recognize doxygen comment style
let g:netrw_liststyle     = 3        " Set netrw style as tree
" }}}


" Config Options
" ``````````````
" {{{
set autoread              " Auto reload changed file
set autowrite             " Auto write changes
set clipboard=unnamedplus " Use + clipboard buffer
set foldnestmax=2         " Max fold level
set nobackup              " Do not create backup file
set noswapfile            " Disable swap file
set path+=**              " Look for all files in sub dirs
set termwinkey=<ESC>      " Set termwinkey as ESC
" }}}


" Editor Settings
" ```````````````
" {{{
set backspace=2  " Set backspace to indent,eol,start
set breakindent  " Every wrapped line will continue visually indented
set cpoptions+=Z " When using w! while the 'readonly' option is set,don't reset 'readonly'
set expandtab    " Convert tabs to spaces
set history=1000 " Increase undo limit
set shiftwidth=4 " When shifting, indent using spaces
set tabstop=4    " Indent using spaces
set wrap         " Wrap text
" }}}


" UI Options
" ``````````
let g:netrw_banner = 0        " Turn off banner in netrw
set background=light           " Select appropriate colors for dark or light
set cinoptions+=l1,N-s,E-s,(0,w1
set confirm                  " Raise dialog on quit if file has unsaved changes
set culopt=number,screenline " Highlight current line and line number of current window
set cursorline               " Highlight the line currently under cursor
set diffopt+=vertical        " Open diff in vertical split
set encoding=utf-8           " Handles multibyte characters correctly
set laststatus=2             " Show status line on the bottom on multiple files
set lazyredraw               " Don't redraw screen on macros, registers and other commands.
set lcs=space:·,tab:>-      " Show space as ·, tab as clear spaces
" set list                     " Show special characters
set mouse=a                  " Enable mouse support
set noshowmode               " Don't show INSERT/NOMRAL/VISUAL modes
set number                   " Enable line number
set ruler                    " Show cursor position all time
set shortmess=aoOtT          " Short messages
set showcmd                  " Display incomplete command
set splitbelow               " Place new window below on :split
set splitright               " Place new window right on :vsplit
set t_Co=256                 " Set color depth
set termguicolors            " Enable true colors support
set title                    " Set console title
set ttyfast                  " Smooth rendering
set ttymouse=sgr             " Fix mouse support in half screen
set visualbell               " Flash the screen instead of beeping on errors
set wildmenu                 " Show matching text on status line when <TAB>
set whichwrap=b,s,<,>,[,]    " move cursor across lines, Normal: <,>, Insert:[,]
syn enable       " Syntax highlighting on, w/o overriding
colorscheme PaperColor " Set colorscheme 
highlight clear CursorLine   " No underline on text when cursorline is on
highlight clear CursorLineNR " No underline on line numbers when cursorline is on


" Search Options
" ``````````````
" {{{
set hlsearch   " Enable search highlighting
set ignorecase " Ignore case when searching
set incsearch  " Incremental search that shows partial matches
set smartcase  " Switch search to case-sensitive when query contains an uppercase letter
" }}}


" Filetype Specific Options
" `````````````````````````
" {{{
autocmd BufNewFile,BufRead *.make set filetype=make 
autocmd BufNewFile,BufRead *.sv set filetype=verilog
autocmd BufNewFile,BufRead *.vg set filetype=verilog
"autocmd Filetype make set noexpandtab shiftwidth=7 softtabstop=0 nocin
filetype indent on " File based indentation
" }}}


" Mappings
" ````````
" {{{
map <C-a> ^
map <C-e> $
" }}}


let g:termdebug_wide = 163
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif " remember file position when closed
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
let ycm_confirm_extra_conf = 0

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
autocmd VimLeave * let &t_me="\e[0 q" " resets cursor
" vim: fdm=marker
