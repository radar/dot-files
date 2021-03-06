call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag -l --ignore node_modules -g ""'


Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'danro/rename.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'bronson/vim-trailing-whitespace'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'alvan/vim-closetag'
Plug 'janko-m/vim-test'
Plug 'mxw/vim-jsx'
Plug 'flowtype/vim-flow'
Plug 'thoughtbot/vim-rspec'

Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/vim-slash'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:rainbow_active = 1

"Colours
colorscheme dracula
set termguicolors
set background=dark
highlight LineNr guifg=#9a9a9a

set relativenumber
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set wrap
set linebreak
" makes yank actions copy to the system clipboard
set clipboard=unnamedplus

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
let g:fzf_tags_command = 'ctags -R'


let mapleader="\<SPACE>"

" launch fzf finder
map <Leader>f :Files<CR>
map <Leader>F :Ag<CR>
map <Leader>t :BTags<CR>
map <Leader>y :Tags<CR>
map <Leader>b :Buffers<CR>

" remove trailing whitespace in entire doc
map <Leader>w :FixWhitespace<CR>
map <Leader>m gqap

nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>c :!mkdir -p %:h<CR>:w

" clear search highlight
nmap \q :nohlsearch<CR>
nmap ; :Buffers<CR>

" reflow an entire paragraph
nnoremap Q gqap

" jump to beginning of line in prompt
cnoremap <C-a>  <Home>

set incsearch
set ignorecase
set smartcase
set hlsearch

" markdown files to auto-wrap at 80 characters
au BufRead,BufNewFile *.md setlocal textwidth=80

set mouse=nicr
