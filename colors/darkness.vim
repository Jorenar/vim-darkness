" Name:       Darkness
" License:    The MIT License (MIT)

" SETUP -----------------------------------------------------------------------

" Set background to dark
set background=dark

" Reset syntax highlighting
hi clear
if exists('syntax on')
    syntax reset
endif

" Declare theme name
let g:colors_name='darkness'


" DEFINE REUSABLE COLORS ------------------------------------------------------

let s:almost_black      = 233
let s:black             = 16
let s:blue              = 12
let s:dark_blue         = 4
let s:dark_cyan         = 6
let s:dark_green        = 2
let s:dark_grey         = 236
let s:dark_red          = 1
let s:dark_yellow       = 3
let s:darker_blue       = 18
let s:darker_grey       = 234
let s:grey              = 240
let s:light_green       = 10
let s:light_grey        = 249
let s:light_steel_blue  = 146
let s:medium_grey       = 245
let s:red               = 9
let s:white             = 15
let s:yellow            = 11
let s:yellowish         = 229


let s:bg                = s:black
let s:faint             = s:darker_grey
let s:norm              = s:light_grey
let s:norm_inverted     = s:dark_grey
let s:subtle            = s:grey


" UTILITY FUNCTION ------------------------------------------------------------

function! s:h(group, style)
    execute "highlight" a:group
                \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
                \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg    : "NONE")
                \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg    : "NONE")
endfunction


" HIGHLIGHTING ----------------------------------------------------------------

" Text
call s:h("Comment",       {"fg": s:subtle})
call s:h("DiffAdd",       {"fg": s:dark_green})
call s:h("DiffChange",    {"fg": s:white})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffText",      {"fg": s:dark_cyan})
call s:h("Normal",        {"fg": s:norm, "bg": s:bg})
call s:h("Title",         {"cterm": "bold"})
call s:h("Todo",          {"fg": s:white, "cterm": "bold,underline"})
call s:h("Underlined",    {"fg": s:norm, "cterm": "underline"})

" In-text
call s:h("ColorColumn",   {"bg": s:almost_black})
call s:h("CursorColumn",  {"bg": s:faint})
call s:h("CursorLine",    {"bg": s:faint})
call s:h("Folded",        {"fg": s:medium_grey, "cterm": "italic"})
call s:h("IncSearch",     {"fg": s:grey, "bg": s:yellow})
call s:h("MatchParen",    {"fg": s:norm, "bg": s:subtle})
call s:h("NonText",       {"fg": s:grey})
call s:h("Search",        {"fg": s:norm, "bg": s:subtle})
call s:h("Visual",        {"bg": s:norm_inverted})

" UI
"call s:h("CursorLineNr",  {"fg": s:white})
call s:h("FoldColumn",    {"fg": s:subtle})
call s:h("LineNr",        {"fg": s:subtle})
call s:h("MoreMsg",       {"fg": s:grey, "cterm": "bold"})
call s:h("Pmenu",         {"fg": s:norm, "bg": s:subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:dark_grey})
call s:h("Question",      {"fg": s:red})
call s:h("QuickFixLine",  {"cterm": "underline"})
call s:h("SignColumn",    {"bg": s:bg})
call s:h("StatusLine",    {"fg": s:medium_grey, "bg": s:almost_black})
call s:h("StatusLineNC",  {"fg": s:subtle, "bg": s:faint})
call s:h("TabLine",       {"fg": s:subtle, "bg": s:faint})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:faint})
call s:h("TabLineSel",    {"fg": s:norm, "bg": s:almost_black})
call s:h("VertSplit",     {"fg": s:faint, "bg": s:faint})
call s:h("WarningMsg",    {"fg": s:yellowish})
call s:h("WildMenu",      {"fg": s:norm, "bg": s:norm_inverted})


" LINKING ---------------------------------------------------------------------

hi!  link  VimCommentString  Comment

hi!  link  Constant          Normal
hi!  link  Identifier        Normal
hi!  link  Statement         Normal
hi!  link  PreProc           Normal
hi!  link  Type              Normal
hi!  link  Special           Normal

hi!  link  ModeMsg           MoreMsg
