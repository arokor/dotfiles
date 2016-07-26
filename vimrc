"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-unimpaired'
Plug 'tomtom/tcomment_vim'
Plug 'neomake/neomake'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JSON.vim'
Plug 'groenewege/vim-less'

call plug#end()

"Turn filetype indentation on again
filetype plugin indent on
syntax enable

"Configure Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"neomake
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost * Neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

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

"US layout
nnoremap ; :
vnoremap ; :

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

"Neovim terminal
tnoremap <leader>t <C-\><C-n>

"center on search
nnoremap n nzz
nnoremap N Nzz

"character encoding
set encoding=utf-8

"Look and feel

" colorscheme solarized
colorscheme gruvbox

set background=dark

call togglebg#map("<F5>")


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

nmap <leader>k :Explore<cr>
nmap <leader>l :Lexplore<cr>
let g:netrw_liststyle=3
