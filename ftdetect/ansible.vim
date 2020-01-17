" greddy matching of playbooks folder

function! s:isAnsible()
  let filepath = expand('%:p')
  if filepath =~? '\v/playbooks/.*\.ya?ml$' | return 1 | en
  return 0
endfunction

augroup filetype_ansible
  autocmd!
  autocmd BufNewFile,BufRead * if s:isAnsible() | set ft=yaml.ansible | en
augroup end
