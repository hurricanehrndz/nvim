" ale plugin settings

if &runtimepath =~? 'plugged/ale'
    let g:ale_completion_enabled = 0
    let g:ale_sign_error = ''
    let g:ale_sign_warning = '⚠'
    let g:ale_sign_info = 'ℹ'
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
    let g:ale_open_list = 0
    let g:ale_sign_column_always = 1
    let g:ale_linters = {'python': []}
endif
