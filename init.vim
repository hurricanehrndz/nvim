" vi: foldmethod=marker foldlevel=0
" HurricaneHrndz <carlos@techbyte.ca> vim (neovim) runtime config
lua require 'init'

" This is amazing for tmux and ssh
" https://www.reddit.com/r/vim/comments/ac9eyh/talk_i_gave_on_going_mouseless_with_vim_tmux/
" https://sunaku.github.io/tmux-yank-osc52.html
" need to figure who to get parent tty
function! Osc52Yank()
    let buffer=system('base64 -w0', @0)
    "let buffer=substitute(buffer, "\n$", "", "")
    let buffer='\e]52;c;'.buffer.'\x07'
    " Send to SSH_TTY
    silent exe "!echo -ne ".shellescape(buffer)." > ".shellescape("/dev/pts/0")
endfunction
command! Osc52CopyYank call Osc52Yank()
augroup Example
     autocmd!
     autocmd TextYankPost * if v:event.operator ==# 'y' | call Osc52Yank() | endif
augroup END
