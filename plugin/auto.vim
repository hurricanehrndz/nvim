"  various auto commands
augroup filetype_json
  autocmd!
  autocmd FileType json setlocal sw=2 et
    \ | syntax match Comment +\/\/.\+$+
  autocmd FileType json let g:vim_json_syntax_conceal = 0
augroup END

augroup filetype_yml
  autocmd!
  autocmd FileType yaml setlocal sw=2 et
augroup END

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal sw=2 et fileformat=unix
augroup END

augroup filetype_help
  autocmd!
  autocmd FileType help noremap <buffer> <silent> <C-c> :q<cr>
  autocmd FileType help noremap <buffer> <silent> q :q<cr>
augroup END

augroup filetype_ansible
  autocmd!
  autocmd FileType yaml.ansible nnoremap <silent> K :call ansibledoc#AnsibleDoc(expand('<cword>'))<CR>
  autocmd FileType ansibledoc.ansible noremap <buffer> <silent> <C-c> :q<cr>
  autocmd FileType ansibledoc.ansible noremap <buffer> <silent> q :q<cr>
augroup END

augroup filetype_fzf
  autocmd!
  autocmd FileType fzf tunmap <buffer> <Esc>
  autocmd FileType fzf tnoremap <buffer> <silent> <C-c> <C-c> :q<cr>
augroup END

augroup terminal_open
  autocmd!
  autocmd TermOpen * setlocal norelativenumber | setlocal nonumber
  autocmd TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
augroup END

augroup filetype_gitcommit
  autocmd!
  autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=wipe
augroup END

augroup coc_explorer_cleanup
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && len(getbufinfo({'buflisted':1})) == 1 && &filetype ==? 'coc-explorer') | q | endif
augroup END

" coc nvim completion autocmds {{{
" Highlight symbol under cursor on CursorHold
augroup cursor_hold
  autocmd!
  autocmd CursorHold  * silent call CocActionAsync('highlight')
  autocmd CursorHoldI * silent call CocActionAsync('showSignatureHelp')
augroup END

augroup plugin_coc_vim
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup END
" }}}
