let mapleader = "\<Space>"
"nnoremap <Leader>e :tabe ./
"nnoremap <Leader>n :tabn<CR>
"nnoremap <Leader>p :tabp<CR>
nnoremap <Leader>e :enew<CR>
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprevious<CR>
nnoremap <Leader>bq :bp <BAR> bd #<CR>
"nnoremap <Leader>N :NERDTreeToggle<CR>
"nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" Set 's' to insert single char and then go back to visual mode
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>

set hidden
set splitright

command Nonum set nonumber | set norelativenumber

syntax on
autocmd BufNewFile,BufRead Jenkinsfile setlocal shiftwidth=2 softtabstop=2
" Let vim set working directory to current files directory
" autocmd BufEnter * lcd %:p:h

" -----NERDTREE-----
"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
"let NERDTreeShowHidden=1
"let g:NERDTreeQuitOnOpen = 1

" -----AIRLINE-----
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
" Show only filename in tab instead of path
let g:airline#extensions#tabline#fnamemod = ':t'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Terraform
let g:terraform_align=1

" ------ VISUAL--------
set background=dark
colorscheme molokai-trans
" colorscheme badwolf
" colorscheme blackboard
" colorscheme solarized
" colorscheme holokai
" colorscheme beekai
" colorscheme codeburn
" colorscheme kalisi

" -------CODE --------
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set shiftwidth=4
set number
set relativenumber
set ruler
set showcmd
"set cursorline
set showmatch
set incsearch
set hlsearch

nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

filetype on
filetype indent on

autocmd FileType json setlocal shiftwidth=2 tabstop=2 smartindent

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 smartindent cinkeys=0{,0},0),:,!^F,o,O,e indentkeys=!^F,o,O,0},0],<:>,0-
autocmd FileType yaml let b:did_indent = 1
" Vim will prevent deletion of certain chars without this set
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
"NerdTree
"Plug 'scrooloose/nerdtree'
"Plug 'powerline/powerline'
Plug 'bling/vim-airline'
"Fugitive git
Plug 'tpope/vim-fugitive'
"Terraform plugin
Plug 'hashivim/vim-terraform'
"Jenkinsfile_vim
Plug 'martinda/jenkinsfile-vim-syntax'
"Command-t
Plug 'wincent/command-t'
"Plug 'wincent/command-t', {
"  \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
"  \ }
"vim-go
Plug 'fatih/vim-go'
call plug#end()


"highlight CursorLine ctermbg=18
