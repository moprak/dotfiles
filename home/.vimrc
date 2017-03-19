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
set scrolloff=1
set sidescrolloff=5
set ttimeout
set ttimeoutlen=100
set display+=lastline
set tabpagemax=50
set autoread
set complete-=i

" Searching
set ignorecase smartcase
set incsearch hlsearch

" Formatting
set sw=4
set ts=4
set sts=4
set expandtab smarttab
set autoindent smartindent
set formatoptions+=j
set nrformats-=octal


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
" set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" Key mapping
set pastetoggle=<F8>
noremap <F4> :set invhlsearch <CR>
noremap <F9> :set invspell <CR>
map Y y$

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
nmap ;tr :%s/\s\+$//
vmap ;tr :s/\s\+$//

syntax on

" This is for managing plugins using vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/minibufexpl.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/netrw.vim'
Plugin 'vim-scripts/omnicppcomplete'
Plugin 'vim-scripts/xterm16.vim'
Plugin 'vim-scripts/Align'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'JuliaLang/julia-vim'
Plugin 'mileszs/ack.vim'
Plugin 'dietsche/vim-lastplace'
Plugin 'lervag/vimtex'
call vundle#end()
" end of vundle stuff, run :PluginInstall to update

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
" set grepprg=grep\ -nH\ $*

" vimtex options
let g:tex_flavor = "latex"
let g:vimtex_enabled=1
let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
" let g:vimtex_view_general_options = ' @pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_quickfix_ignore_all_warnings=1

" Ack options
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif
