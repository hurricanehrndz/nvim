" airline settings
scriptencoding utf-8

if &runtimepath =~? 'plugged/vim-airline'
  let g:airline_theme='solarized'
  let g:airline_solarized_bg='dark'
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#tabline#enabled=1
  let g:airline#extensions#tabline#show_buffers=1
  let g:airline#extensions#tabline#show_tabs=0
  let g:airline#extensions#tabline#show_tab_type=1
  let g:airline#extensions#tabline#buffer_idx_mode=1
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
  let g:airline_powerline_fonts=1

  if !exists('g:airline_symbols')
    let g:airline_symbols={}
  endif
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.crypt = ''
  let g:airline_symbols.linenr = ''
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.notexists = ''
  let g:airline_symbols.spell = ''
  let g:airline_symbols.whitespace = ''
  let g:airline_symbols.paste = 'ρ'
  let g:airline#extensions#tabline#buffer_idx_format = {
      \ '0': '➓ ',
      \ '1': '➊ ',
      \ '2': '➋ ',
      \ '3': '➌ ',
      \ '4': '➍ ',
      \ '5': '➎ ',
      \ '6': '➏ ',
      \ '7': '➐ ',
      \ '8': '➑ ',
      \ '9': '➒ '
    \}
  let g:airline#extensions#coc#enabled = 1
  let g:airline#extensions#tabline#keymap_ignored_filetypes =
    \ ['vimfiler', 'nerdtree', 'coc-explorer']
endif
