" theme
if (has('termguicolors'))
  set termguicolors
endif

" https://groups.google.com/forum/#!topic/powerline-support/oxlqveXcVms
if has('nvim')
  set guicursor= 
endif
set background=dark                                    " dark background

if !empty(globpath(&runtimepath, 'colors/NeoSolarized.vim'))
  let g:gitgutter_override_sign_column_highlight = 0 " preserve scheme
  let g:neosolarized_italic=1                        " Enable italics
  let g:neosolarized_underline=0                     " Enable underline
  let g:neosolarized_bold=1                          " Enable underline
  let g:neosolarized_vertSplitBgTrans=1
  let g:neosolarized_diffmode='low'
  " Transparent background
  hi! Normal ctermbg=NONE guibg=NONE
  hi! NonText ctermbg=NONE guibg=NONE
  " Fix neovim, not highlighting tabs
  hi! link Whitespace SpecialKey
  " do this last
  colorscheme NeoSolarized                           " Set colorscheme to solarized
endif

