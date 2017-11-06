call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

Plug 'tpope/vim-fugitive'

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

Plug 'thoughtbot/vim-rspec'

Plug 'ayu-theme/ayu-vim'
call plug#end()

"Settings

set relativenumber
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set wrap
set linebreak

" Colours
set termguicolors
set background=dark
colorscheme ayu


function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

let mapleader="\<SPACE>"

" launch fzf finder
map <Leader>t :Files<CR>

" remove trailing whitespace in entire doc
map <Leader>w :FixWhitespace<CR>

nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

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

