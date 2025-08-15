" LS-DYNA Column Highlight Override
" File: colors/lsdyna_column_override.vim
"
" SPDX-License-Identifier: GPL-3.0-or-later
" Copyright (c) 2025 Nogunix
"
" Portions based on tokyonight.nvim (Apache-2.0)
" https://github.com/folke/tokyonight.nvim
"
" Purpose:
"   Only override the lsdynaColumn highlight group.
"   Safe to use with any base colorscheme (does not clear or reset others).

" Desired colors for column background
let s:fg     = '#e6e9ff'  " bright text
let s:col_bg = '#2f3550'  " moderate blue background

" 256-color approximations
let s:ct_fg    = 255
let s:ct_colbg = 60

if &filetype ==# 'lsdyna' || (exists('b:current_syntax') && b:current_syntax ==# 'lsdyna')
  execute 'highlight lsdynaColumn guifg=' . s:fg . ' guibg=' . s:col_bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_colbg . ' cterm=NONE'
endif

" Auto re-apply when LS-DYNA files are opened
augroup lsdyna_column_override
  autocmd!
  autocmd FileType lsdyna source <sfile>
augroup END
