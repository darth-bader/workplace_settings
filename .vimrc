version 6.0

if &cp | set nocp | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'


set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=de
set encoding=utf8
set ffs=unix,dos,mac

set window=39
set hidden " This allows buffers to be hidden if you've modified a buffer.
let mapleader=" "  " remap <Leader> to <Space>
set ttimeoutlen=100
set nu "Line Numbers
set showcmd
set incsearch
set ic " Case insensitive search
set hls   " Higlhight search
set nobackup  " do not keep a backup file
set ruler   " show the cursor position all the time
set wildmenu "tab enabling menu help
set paste "better pasting for code
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set scrolloff=3

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse+=a
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
endif " has("autocmd")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"config colorsheme, e.g.: let g:solarized_termcolors=256
colorscheme gruvbox "or 'solarized'  or 'mats_desert' or  'solarized'  or 'desert'

set background=dark

set guioptions-=T
set guioptions+=e
set t_Co=256
set guitablabel=%M\ %t

let c_C99 = 1  " enable C99 syntax 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set tw=500 " Linebreak on 500 characters

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set lbr  " Wrap text instead of being on one line

" Show Whitespaces; toggle with ':set list!'
""set listchars=tab:»·,trail:·,eol:¶,extends:>
set nolist
set listchars=tab:»\·,trail:·,eol:¶,space:·

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" To open a new empty buffer: <Space>Ctrl-T
nmap <leader><C-T> :enew<cr>
" Move to the previous buffer: <Space>Tab
nmap <leader><Tab> :bnext <CR>
" Move to the next buffer: <Space>Tab
nmap <leader><S-Tab> :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <leader>bd :bprevious<CR>:bdelete #<CR>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use the system clipboard as unnamend register
"#set clipboard=unnamed

" set Leader+p to 'usual' behaviour: insert before cursor, delete marked first, end after inserted
map  <leader>p "_dgP
nmap <leader>p gP

" set Leader+i to indent saving pasting - and back again
map <leader>i :set autoindent!<CR> :set smartindent!<CR>
" Previous and Next quickfix: <ö> and <ä>
nmap ö :cprevious <CR>
nmap ä :cnext <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""
let g:airline_theme  = 'luna' "'wombat' " 'dark'  "or 'ubaryd'
"see e.g.: https://github.com/bling/vim-airline/wiki/Screenshots 
"let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|git|.class'

" map shortcuts
nmap <leader>c :CtrlP<CR>
nmap <leader>cb :CtrlPBuffer<CR> 
nmap <leader>cm :CtrlPMRUFiles<CR>

""""""""""""""""""""""""""""""
" netrw
""""""""""""""""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

""""""""""""""""""""""""""""""
" fugitive
""""""""""""""""""""""""""""""
set diffopt+=vertical
