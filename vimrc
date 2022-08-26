call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter' " display git diff in the sign column
Plug 'arcticicestudio/nord-vim' " color scheme"
Plug 'christoomey/vim-tmux-navigator' " seamless vim to tmux integration
Plug 'dense-analysis/ale' " asynchronous lint engine
Plug 'ervandew/supertab' " tab auto-completion
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'jlcrochet/vim-rbs' " Ruby RBS support
Plug 'junegunn/fzf' " fuzzy finder
Plug 'kchmck/vim-coffee-script' " coffee script support
Plug 'mileszs/ack.vim' " search files
Plug 'scrooloose/nerdtree' " file system explorer sidebar
Plug 'shime/vim-livedown' " instant preview of md files in browser
Plug 'vim-airline/vim-airline' " style your vim with ease
Plug 'tpope/vim-endwise' " helps to end certain structures automatically
Plug 'tpope/vim-rails' " massive plugin for working with ruby on rails
Plug 'Xuyuanp/nerdtree-git-plugin' " addon for nerdree for git integration

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let mapleader='_'

let g:loaded_netrw=1
let g:loaded_netrwPlugin=1

set expandtab                     " use spaces, not tabs
set hlsearch                      " activate search result highlighting
set ic                            " case insensitivity on
set list                          " Show invisible characters
set nocompatible                  " be iMproved
set noeol                         " no freakin' end of line
set noshowmode
set nowrap                        " don't wrap lines
set number                        " set line-number
set showcmd                       " show <leader>-commands
set smartindent
set splitbelow                    " split opens below
set splitright                    " split opens right
set wildmenu

set backspace=indent,eol,start    " backspace through everything in insert mode
set clipboard=unnamed             " use system clipboard"
set colorcolumn=80,120
set encoding=utf-8
set laststatus=2                  " Always show status bar
set listchars=nbsp:¬,extends:»,precedes:«,trail:•
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set softtabstop=2                 " control how many columns vim uses when you hit Tab in insert mode
set t_Co=256
set tabstop=2                     " a tab is two spaces
set term=xterm-256color
set termencoding=utf-8
set timeoutlen=3000               " set length of leader timeout
set ttymouse=xterm2               " tmux knows the extended mouse mode

set mouse+=a
set wildignore+=tags,doc,tmp,log

set guioptions-=r                 " remove right-hand scroll bar
set guioptions-=L                 " remove left-hand scroll bar

set backupdir^=~/.vim/_backup//   " where to put backup files.
set directory^=~/.vim/_temp//     " where to put swap files.

command Pry :normal orequire 'pry'; binding.pry<ESC>
command PryHaml :normal o- require 'pry'; binding.pry<ESC>
command PryRspec :normal ofit { require 'pry'; binding.pry}<ESC>
command Debugger :normal odebugger<ESC>

nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>

inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

highlight clear SignColumn
highlight ColorColumn ctermbg=grey
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

let g:loaded_netrw=1
let g:loaded_netrwPlugin=1

syntax on


" airblade/vim-gitgutter

set updatetime=500

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = '~'

let g:gitgutter_override_sign_column_highlight = 0

" dense-analysis/ale

map <silent> <C-X> :ALEToggle<CR>
let g:ale_linters = {
\ 'ruby': ['rubocop'],
\ 'python': ['pylint'],
\ 'tex': ['lacheck']
\}


" junegunn/fzf

map <silent> <C-T> :FZF<CR>


" mileszs/ack.vim

map <C-F> :Ack<space>

" arcticicestudio/nord-vim

colorscheme nord

hi Normal guibg=NONE ctermbg=NONE


" scrooloose/nerdtree

map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$', '\.git$[[dir]]']

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" shime/vim-livedown

let g:livedown_port = 1337


" vim-airline/vim-airline

let g:airline_theme='nord'
let g:airline_skip_empty_sections = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Xuyuanp/nerdtree-git-plugin

let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified':  '*',
      \ 'Staged':    '+',
      \ 'Untracked': '*',
      \ 'Renamed':   '~',
      \ 'Unmerged':  '=',
      \ 'Deleted':   'X',
      \ 'Dirty':     'x',
      \ 'Ignored':   ' ',
      \ 'Clean':     'y',
      \ 'Unknown':   '?'
      \ }