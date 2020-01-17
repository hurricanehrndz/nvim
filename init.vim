" vi: foldmethod=marker foldlevel=0
" HurricaneHrndz <carlos@techbyte.ca> vim (neovim) runtime config
" inspired by hauleth/dotfiles, jessfraz/dotfiles
scriptencoding utf-8

syntax on                   " Syntax highlighting
set shell=/bin/bash


" plug.vim {{{ "
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plugins#reload()
" }}}


" Identation {{{
set autoindent              " Indent at the same level of the previous line
filetype plugin indent on   " Automatically detect file types.

set shiftwidth=4 expandtab

set textwidth=80
set nowrap linebreak formatoptions+=l
" }}}


" User interface {{{
set cmdheight=2             " Better display for messages
set number                  " Line numbers on
set signcolumn=yes          " Always have sign column
set hidden                  " hide buffer when abandoned

set updatetime=500          " refresh rate of diagnostic msg
set history=50              " Set history to sane value
set whichwrap=""            " original vi setting
set shortmess+=c            " don't give commpletion messages.
set lazyredraw

set nojoinspaces            " no two spaces after punctuation on a join (J)
set notimeout
set ttimeout                " time out for key codes
set ttimeoutlen=100         " wait up to 100ms after Esc for special key
set clipboard=unnamedplus   " Set the + register as the default

" wildmenu files/direcotries {{{
" wildcard completion for files and directories
" ignore case when completing filename + dirs
set wildignorecase
set fileignorecase
set wildmode=list:longest,full

set wildignore+=.hg,.git,.svn                    " Version Controls
set wildignore+=*.aux,*.out,*.toc                " Latex Indermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " Binary Imgs
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " Compiled Object files
set wildignore+=*.spl                            " Compiled speolling world list
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX SHIT
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tmp   " Linux/MacOSX
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python Object codes
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*~,**/.git/**,**/tmp/**
set wildignore+=**/.direnv,**/node_modules/**    " Dev files
" }}}
" Display tabs and trailing spaces visually {{{
set fillchars=vert:┃,fold:·
if !has('win32') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▶\ ,trail:␣,extends:❯,precedes:❮,nbsp:·'
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                    " Show problematic characters.
" }}}
" cursor settings {{{
set mouse=a
set sidescrolloff=10         " Min columns to keep left and right of cursor
set scrolloff=5              " Min lines to keep above and below the cursor
" }}}
" Split in CORRECT places {{{
set splitright splitbelow
" }}}
" Folding {{{
set foldmethod=syntax       " syntax highlighting specifies folds
set foldlevel=999           " open all folds
nnoremap <expr> <CR> foldlevel('.') ? 'za' : "\<CR>"
" }}}
" completion {{{
set complete=.,w,b,t,k,kspell " Scan cur buf, other win buf, buf list,
set completeopt=menuone,noselect,noinsert
" }}}
" }}}


" Permanent undo {{{
set undofile
" }}}


" Search {{{
" Smart case searches
set ignorecase smartcase

if exists('+inccommand')
    " show effects of subs incrementally
    set inccommand=nosplit
endif

if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat=%f:%l:%c:%m,%f:%l%m,%f\ \ %l%m
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --vimgrep
    set grepformat^=%f:%l:%c:%m
endif

" Quickly disable highligh
nnoremap <silent> <space>, :<C-u>nohlsearch<CR>
" }}}


" Disable backups {{{
" conflicts with Language Servers
set nobackup
set nowritebackup
" }}}


" session options {{{
"  blank buffers
set sessionoptions-=blank

" If you only want to save the current tab page:
set sessionoptions-=tabpages

" If you don't want help windows to be restored:
set sessionoptions-=help
" }}}


" Window navigation {{{
" Use alt + hjkl to nav windows
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" }}}

