" vi: foldmethod=marker foldlevel=0
" HurricaneHrndz <carlos@techbyte.ca> vim (neovim) runtime config
" inspired by hauleth/dotfiles, jessfraz/dotfiles
scriptencoding utf-8

let s:current_file = expand('<sfile>')

if !exists('*plugins#reload')
  func! plugins#reload() abort
    exec 'source ' . s:current_file
    call plugins#spec()
  endfunc
endif


func! plugins#spec() abort
  call plug#begin('~/.local/share/nvim/plugged')

    " improve functionality {{{
    " Fuzzy search
    Plug 'junegunn/fzf', {'dir': '~/.local/share/fzf'}
    Plug 'junegunn/fzf.vim'
    " helps easily align text
    Plug 'junegunn/vim-easy-align'
    " vim-surround
    Plug 'tpope/vim-surround'
    " tables
    Plug 'godlygeek/tabular'
    " license
    Plug 'ararslan/license-to-vim'
    " delete and kill buffers
    Plug 'qpkorr/vim-bufkill'
    " sudo
    Plug 'lambdalisue/suda.vim'
    " }}}


    " completion plugins {{{
    let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-explorer',
      \ 'coc-flow',
      \ 'coc-git',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-markdownlint',
      \ 'coc-omnisharp',
      \ 'coc-powershell',
      \ 'coc-pyright',
      \ 'coc-python',
      \ 'coc-rls',
      \ 'coc-snippets',
      \ 'coc-tabnine',
      \ 'coc-tailwindcss',
      \ 'coc-tslint',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-yaml',
      \ 'coc-yank'
    \ ]
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " syntastic: alternate async linter and maker
    Plug 'dense-analysis/ale'
    " snippets
    Plug 'honza/vim-snippets'
    " pairs
    Plug 'cohama/lexima.vim'
    " }}}


    " interface enhancements {{{
    " solarized color schemle
    Plug 'icymind/NeoSolarized'
    " add dev icons
    Plug 'ryanoasis/vim-devicons'
    " git commands
    Plug 'tpope/vim-fugitive'
    " install vim-airline
    Plug 'vim-airline/vim-airline'
    " install vim-airline themes
    Plug 'vim-airline/vim-airline-themes'
    " QuickFix/LocationList Toggle
    Plug 'Valloric/ListToggle'
    " startify
    Plug 'mhinz/vim-startify'
    " indentLine
    Plug 'Yggdroot/indentLine'
    " vim-better-whitepace: highlight trailing whitepsace
    Plug 'ntpeters/vim-better-whitespace'
    " session support
    Plug 'thaerkh/vim-workspace'
    " }}}


    " additional syntax support {{{
    " md syntax support
    Plug 'plasticboy/vim-markdown'
    " md preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install', 'for': 'markdown'  }
    " install dockerfiles syntax and ftdetect
    Plug 'infoslack/vim-docker', { 'for': 'docker' }
    " vim script synatx highlighting
    Plug 'vim-jp/syntax-vim-ex', { 'for': 'vim' }
    " ansible
    Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh --style dictionary' }
    " ansible-doc
    Plug 'phongvcao/ansible-doc.vim'
    " }}}

  " Initialize plugin system
  call plug#end()
endfunc

