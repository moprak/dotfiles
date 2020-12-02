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


" Fortran options
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

syntax on

" This is for managing plugins using vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/minibufexpl.vim'
Plugin 'vim-scripts/taglist.vim'
" Plugin 'vim-scripts/omnicppcomplete'
Plugin 'vim-scripts/xterm16.vim'
Plugin 'vim-scripts/Align'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-abolish'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'JuliaLang/julia-vim'
Plugin 'mileszs/ack.vim'
Plugin 'dietsche/vim-lastplace'
Plugin 'lervag/vimtex'
call vundle#end()
" end of vundle stuff, run :PluginInstall to update

" colorscheme
let xterm16_colormap='soft'
let xterm16_brightness='med'
colorscheme xterm16

" statusline
let g:airline_theme='term'
set ttimeoutlen=50
set laststatus=2
set noshowmode
let g:airline#extensions#whitespace#show_message = 0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = ''
let g:airline_section_z='%3p%%:%4l:%2v'

" miniBuf options
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

" Taglist options
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-g> :TlistToggle<CR>

filetype plugin indent on

" vimtex options
let g:tex_flavor = "latex"
let g:vimtex_enabled=1
let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
" let g:vimtex_view_general_options = ' @pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_quickfix_open_on_warning=0
if !exists('g:vimtex_toc_config')
    let g:vimtex_toc_config = {}
endif
let g:vimtex_toc_config.split_width = 29
let g:vimtex_toc_config.show_numbers = 0
let g:vimtex_toc_config.show_help = 0

" Ack options
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" jedi-vim options
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "2"
