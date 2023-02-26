" Name:		Potions.vim 
" Version:	0.1.0
" Maintainer:	github.com/acciolatte
" License:	The MIT License (MIT)
" 
" A minimal purple colourscheme for vim.
"
"""

hi clear 

if exists('syntax on')
    syntax reset
endif

let g:colors_name ='potion'

let s:grey40		  = {"gui": "#262626", "cterm": "235" }
let s:grey42		  = {"gui": "#6C6C6C", "cterm": "242" }
let s:mediumGrey	  = {"gui": "#767676", "cterm": "243" }
let s:lightGrey		  = {"gui": "#A8A8A8", "cterm": "248" }
let s:lighterGrey	  = {"gui": "#C6C6C6", "cterm": "251" }
let s:lightestGrey	  = {"gui": "#EEEEEE", "cterm": "255" }
let s:purple		  = {"gui": "#8700ff", "cterm": "93" }
let s:purple1		  = {"gui": "#AF00FF", "cterm": "129" }
let s:white		  = {"gui": "#FFFFFF", "cterm": "238" }

let s:black	  = {"gui": "#121212", "cterm": "234" }
let s:DarkMagenta	  = {"gui": "#5F005F", "cterm": "91" }

let s:grey7		  = {"gui": "#121212", "cterm": "233" }
let s:grey63		  = {"gui": "#AF87AF", "cterm": "139" }
let s:plum4		  = {"gui": "#875F87", "cterm": "96" }
let s:purple1		  = {"gui": "#AF00FF", "cterm": "129" }
let s:mediumPurple1	  = {"gui": "#AF87FF", "cterm": "141" }
let s:mediumPurple2	  = {"gui": "#AF5FFF", "cterm": "135" }
let s:mediumPurple3	  = {"gui": "#875FD7", "cterm": "98" }
let s:violet		  = {"gui": "#D787D7", "cterm": "177" }
let s:darkViolet	  = {"gui": "#8700D7", "cterm": "92" }

let s:background  = &background

if &background == "dark"
    let s:bg	=s:grey7
else
    let s:bg	=s:white
    let s:norm	=s:grey40

endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:purple1})

call s:h("Comment",        {"fg": s:plum4, "gui": "italic"})
call s:h("Cursor",	  {"bg": s:mediumPurple1, "fg": s:mediumPurple1})

call s:h("PreProc",	{"fg": s:mediumPurple2})
hi! link Include	PreProc
hi! link Define		PreProc
hi! link Macro		PreProc
hi! link PreCondit	PreProc

call s:h("Type",	{"fg": s:mediumPurple2})
hi! link StorageClass	Type
hi! link Structure	Type
hi! link Typedef	Type

call s:h("Special",	{"fg": s:mediumPurple3, "gui": "italic"})
hi! link SpecialChar	Special 
hi! link Tag		Special
hi! link Delimiter	Special
hi! link SpecialComment Special
hi! link Debug		Special

call s:h("Constant",	{"fg": s:grey63})
hi! link Character	Constant
hi! link Number		Constant
hi! link Boolean	Constant
hi! link Float		Constant
hi! link String		Constant

call s:h("Identifier", {"fg": s:violet})
hi! link Identifier	Normal
hi! link Function	Identifier

call s:h("Statement", {"fg": s:mediumPurple2})
hi! link Conditional	Statement
hi! link Repeat		Statement
hi! link Label		Statement
hi! link Keyword	Statement
hi! link Exception	Statement

call s:h("Operator", {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("LineNr", {"fg": s:darkViolet})

call s:h("Error",   {"fg": s:lighterGrey, "bg": s:darkViolet, "cterm": "bold"})
call s:h("CursonLineNC", {"fg": s:violet, "bg": s:darkViolet})



if has("gui_running")
    call s:h("SpellBad",    {"gui": "underline", "sp": s:darkViolet})
else
    call s:h("SpellBad",    {"cterm": "underline", "fg": s:darkViolet})
endif
