"Temporarily turn off filetype indentation
filetype off

"Load Pathogen
call pathogen#infect()

"Turn filetype indentation on again
filetype plugin indent on
syntax enable

"Configure Nerd Tree
map <F2> :NERDTreeToggle<CR>

"Configure Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"Configure Solarized
call togglebg#map("<F5>")

"Setup editor font
set guifont=Inconsolata-dz:h14,Inconsolata-dz\ 14,Consolas:h14
nnoremap <F3> :set guifont=*<CR>

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F6> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>

"Leader
let mapleader = ","

"Sudo save
cmap w!! %!sudo tee > /dev/null %

"Easy .vimrc handling
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Swedish layout
nnoremap ö :
vnoremap ö :
nnoremap § ^

"Reduce strain
inoremap kj <Esc>

"make j and k do what they should
nnoremap j gj
nnoremap k gk

"simplify window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"center on search
nnoremap n nzz
nnoremap N Nzz

"character encoding
set encoding=utf-8

"Look and feel
set background=dark
if has('gui_running')
  colorscheme solarized
endif

set nu "line numbers
set colorcolumn=85
"set textwidth=79
set ruler
set visualbell
"set shortmess=atI "Less messages

"Scrolling
set scrolloff=3 "Context around cursor
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"search
set hlsearch "highlight
set incsearch "incremental
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
set ignorecase "case insensitive search
set smartcase "caps => case sensitive

"tabs
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

"Indentation
vnoremap < <gv
vnoremap > >gv
set autoindent
set smartindent

"Trailing whitespace
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

"Copy paste
set clipboard+=unnamed

"Code
syntax on "Syntax
runtime macros/matchit.vim "Match if/else/tags etc. with %

"Backspace
set backspace=indent,eol,start

"Wildmenu
set wildmenu
set wildmode=list:longest,full

"History
set history=1000

"Spell checking
set spell
nmap <silent> <leader>s :set spell!<CR>

"Lauch in Node
nnoremap <F9> :w<CR>:!node %<CR>

"Use templates in ~/.vim/skel/
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
