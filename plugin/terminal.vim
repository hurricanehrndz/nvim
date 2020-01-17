" Terminal settings

" No nvim nestings
if has('nvim') && executable('nvr')
  let $VISUAL="nvr --remote-wait +'set bufhidden=wipe'"
  let $GIT_EDITOR="nvr --remote-wait +'set bufhidden=wipe'"
endif
