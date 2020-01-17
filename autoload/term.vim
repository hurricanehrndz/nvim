" ToggleTerm

let g:term#win = 0
let g:term#name = 'ToggleTerminal1'

function! term#_WipeOutTerms(term_bufs) abort
  for term_buf in a:term_bufs
    exec 'silent! bwipeout! ' . term_buf
  endfor
endfunction

function! term#_OpenNew(height) abort
  botright new
  exec 'silent! resize ' . a:height
  call termopen($SHELL, {'detach': 0})
  exec 'silent! file ' . g:term#name
  set nobuflisted
  let s:deleted_term_bufs = filter(range(1, bufnr('$')), 'bufname(v:val) =~? "term://.*"')
  call term#_WipeOutTerms(s:deleted_term_bufs)
endfunction

function! term#_OpenOld(height) abort
  exec 'silent! botright sbuffer +resize' . a:height . ' '. g:term#name
endfunction

function! term#_Open(height) abort
  if bufexists(g:term#name)
    call term#_OpenOld(a:height)
  else
    call term#_OpenNew(a:height)
  endif
endfunction

function! term#Toggle(height) abort
  if win_gotoid(g:term#win)
    hide
  else
    call term#_Open(a:height)
    startinsert!
    let g:term#win = win_getid()
  endif
endfunction

