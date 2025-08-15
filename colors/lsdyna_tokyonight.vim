" Tokyo Night LS-DYNA Highlight Override
" File: colors/lsdyna_tokyonight.vim
"
" SPDX-License-Identifier: GPL-3.0-or-later
" Copyright (c) 2025 Nogunix
"
" Portions based on tokyonight.nvim (Apache-2.0)
" https://github.com/folke/tokyonight.nvim
"
" Purpose:
"   Provide Tokyo Night inspired highlight groups for LS-DYNA files.
"   Safe to use with any base colorscheme (does not clear or reset others).

" Palette
let s:bg        = '#1a1b26'
let s:fg        = '#c0caf5'
let s:blue      = '#7aa2f7'
let s:cyan      = '#7dcfff'
let s:yellow    = '#e0af68'
let s:comment   = '#565f89'
let s:search_bg = '#3d59a1'
let s:visual_bg = '#364a82'
let s:col_bg    = '#2f3550'

" 256-color approximations
let s:ct_bg        = 234
let s:ct_fg        = 189
let s:ct_blue      = 111
let s:ct_cyan      = 117
let s:ct_yellow    = 179
let s:ct_comment   = 60
let s:ct_searchbg  = 61
let s:ct_visualbg  = 60
let s:ct_colbg     = 60

if &filetype ==# 'lsdyna' || (exists('b:current_syntax') && b:current_syntax ==# 'lsdyna')
  execute 'highlight Normal guifg=' . s:fg . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight Search guifg=' . s:fg . ' guibg=' . s:search_bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_searchbg . ' cterm=NONE'
  execute 'highlight Visual guifg=NONE guibg=' . s:visual_bg . ' gui=NONE ctermfg=NONE ctermbg=' . s:ct_visualbg . ' cterm=NONE'
  execute 'highlight Folded guifg=' . s:comment . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_comment . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight Cursor guifg=' . s:bg . ' guibg=' . s:fg . ' gui=NONE ctermfg=' . s:ct_bg . ' ctermbg=' . s:ct_fg . ' cterm=NONE'
  execute 'highlight CursorLine guifg=NONE guibg=' . s:visual_bg . ' gui=NONE ctermfg=NONE ctermbg=' . s:ct_visualbg . ' cterm=NONE'
  execute 'highlight StatusLine guifg=' . s:fg . ' guibg=' . s:blue . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_blue . ' cterm=NONE'
  execute 'highlight Pmenu guifg=' . s:fg . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight PmenuSel guifg=' . s:bg . ' guibg=' . s:fg . ' gui=NONE ctermfg=' . s:ct_bg . ' ctermbg=' . s:ct_fg . ' cterm=NONE'
  execute 'highlight lsdynaComment guifg=' . s:comment . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_comment . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight lsdynaKeywordName guifg=' . s:yellow . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_yellow . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight lsdynaKeywordOption guifg=' . s:blue . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_blue . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight lsdynaTitle guifg=' . s:cyan . ' guibg=' . s:bg . ' gui=NONE ctermfg=' . s:ct_cyan . ' ctermbg=' . s:ct_bg . ' cterm=NONE'
  execute 'highlight lsdynaColumn guifg=' . s:fg . ' guibg=' . s:col_bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_colbg . ' cterm=NONE'
endif

" Auto re-apply when LS-DYNA files are opened
augroup lsdyna_tokyonight
  autocmd!
  autocmd FileType lsdyna source <sfile>
augroup END
