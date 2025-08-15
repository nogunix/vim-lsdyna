" LS-DYNA Tokyonight-like Colorscheme (LS-DYNA groups only)
" File: colors/lsdyna_tokyonight.vim
"
" SPDX-License-Identifier: GPL-3.0-or-later
" Copyright (c) 2025 Nogunix
"
" Portions of this work are based on tokyonight.nvim by Folke (Apache-2.0).
" Upstream SPDX-License-Identifier: Apache-2.0
" Upstream: https://github.com/folke/tokyonight.nvim
" Per Apache-2.0 §4, retain this notice when redistributing.
"
" Notes:
" - This colorscheme intentionally only defines LS-DYNA-specific highlight groups
"   (lsdyna*). It should not affect unrelated groups.
" - Place this file under your plugin's colors/ directory:
"     vim-lsdyna/colors/lsdyna_tokyonight.vim
" - Usage:
"     :colorscheme lsdyna_tokyonight
"   (It will only take effect where lsdyna* groups are used by the ftplugin/syntax.)
"
" No script-local functions are used to avoid E746 errors.
"
" -----------------------------------------------------------------------------

if has('termguicolors')
  set termguicolors
endif

set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'lsdyna_tokyonight'

" --- Palette tuned for moderate boundary columns ---
let s:fg       = '#e6e9ff'  " brighter main text for better contrast
let s:cyan     = '#7dcfff'  " bright cyan (titles)
let s:yellow   = '#e0af68'  " vivid yellow (keyword names)
let s:green    = '#9ece6a'  " vivid green (options/success)
let s:red      = '#f7768e'  " vivid red (errors/emphasis)
let s:comment  = '#737aa2'  " brighter comment for readability
let s:col_bg   = '#2f3550'  " softer blue background for moderate boundary

" --- 256-color approximations ---
let s:ct_fg       = 255
let s:ct_cyan     = 117
let s:ct_yellow   = 179
let s:ct_green    = 114
let s:ct_red      = 203
let s:ct_comment  = 103
let s:ct_colbg    = 60

" --- LS-DYNA highlight groups ---
execute 'highlight lsdynaComment guifg=' . s:comment . ' guibg=NONE gui=NONE ctermfg=' . s:ct_comment . ' ctermbg=NONE cterm=NONE'
execute 'highlight lsdynaKeywordName guifg=' . s:yellow . ' guibg=NONE gui=bold ctermfg=' . s:ct_yellow . ' ctermbg=NONE cterm=bold'
execute 'highlight lsdynaKeywordOption guifg=' . s:green  . ' guibg=NONE gui=NONE ctermfg=' . s:ct_green  . ' ctermbg=NONE cterm=NONE'
execute 'highlight lsdynaTitle guifg=' . s:cyan   . ' guibg=NONE gui=bold ctermfg=' . s:ct_cyan   . ' ctermbg=NONE cterm=bold'

" Fixed-width column background for better visual separation
execute 'highlight lsdynaColumn guifg=' . s:fg . ' guibg=' . s:col_bg . ' gui=NONE ctermfg=' . s:ct_fg . ' ctermbg=' . s:ct_colbg . ' cterm=NONE'

" Symbolic links (adjust to your syntax groups if needed)
hi def link lsdynaError   Error
hi def link lsdynaWarning Todo
