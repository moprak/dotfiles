set nocompatible
set t_Co=256 "yes, hardcode 256 colors to vim

" Misc options
set backspace=indent,eol,start "backspace everywhere
set number
set mouse= " disable mouse
set ruler " show the cursor position all the time
set history=1000
set undolevels=1000
set showcmd
set showmatch

" Searching
set ignorecase smartcase
set incsearch hlsearch

" Formatting
set sw=4
set ts=4
set sts=4
set expandtab smarttab
set autoindent smartindent

" Buffer switching is easier
set confirm
set hidden

" Command completion
set wildmode=longest,full
set wildmenu
set wildignore=*.o,*.obj,*~

" Show trailing whitespace.
set list
set listchars=trail:.,tab:\ \

" Key mapping
noremap <F4> :set invhlsearch <CR>
noremap <F9> :set invspell <CR>
noremap <F8> :set invpaste <CR>
map Y y$

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

syntax on

" This is for managing plugins using vundle.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'vim-scripts/minibufexpl.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/netrw.vim'
Bundle 'vim-scripts/omnicppcomplete'
Bundle 'vim-scripts/xterm16.vim'
Bundle 'vim-scripts/Align'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
" end of vundle stuff, run :BundleInstall to update

" colorscheme
let xterm16_colormap='soft'
let xterm16_brightness='low'
colorscheme xterm16

" statusline
let g:airline_theme='term'
set ttimeoutlen=50
set laststatus=2
set noshowmode
let g:airline#extensions#whitespace#show_message = 0
let g:airline_symbols={}
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '|'
"let g:airline#extensions#tabline#enable = 1
" use below if line/col is getting painful
"let g:airline_section_b='[%P%:%4l:%c]'
"let g:airline_section_z='%F'
"set statusline=%F%m%r%h%w\ [%l,%v\ %p%%]\ [LEN=%L]\ [%Y]\ [%{&ff}]

" miniBuf options
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

" Taglist options
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-g> :TlistToggle<CR>

filetype plugin indent on
" Latexsuite options
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
