" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"
" TO FIND COLOR CHAR PLACE CURSOR AND ENTER: echo 'Normali '.join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'))
hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
"let g:colors_name="molokai-transparent"
let g:colors_name="molokai-trans"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

hi Boolean         guifg=#AF5FFF
hi Character       guifg=#AFAF87
hi Number          guifg=#AF5FFF
hi String          guifg=#AFAF87
hi Conditional     guifg=#D7005F               gui=bold
hi Constant        guifg=#AF5FFF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#5ED6FE
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#87FF00               gui=bold
hi Error           guifg=#A29CA3 guibg=#C91B78
hi ErrorMsg        guifg=#FF00AF guibg=#000000 gui=bold
hi Exception       guifg=#87FF00               gui=bold
hi Float           guifg=#AF5FFF
hi FoldColumn      guifg=#BCBCBC guibg=#000000
hi Folded          guifg=#BCBCBC guibg=#000000
hi Function        guifg=#87FF00
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#D7FFAF guibg=#000000

hi Keyword         guifg=#D7005F               gui=bold
hi Label           guifg=#AFAF87               gui=none
hi Macro           guifg=#D7FFAF               gui=italic
hi SpecialKey      guifg=#5ED6FE               gui=italic

hi MatchParen      guifg=#0bd4db guibg=#0000FF gui=bold
hi ModeMsg         guifg=#AFAF87
hi MoreMsg         guifg=#AFAF87
hi Operator        guifg=#D7005F

" complete menu
hi Pmenu           guifg=#5ED6FE guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#5ED6FE

hi PreCondit       guifg=#87FF00               gui=bold
hi PreProc         guifg=#87FF00
hi Question        guifg=#5ED6FE
hi Repeat          guifg=#D7005F               gui=bold
hi Search          guifg=#D5D7D7 guibg=#5F8787
" marks column
hi SignColumn      guifg=#87FF00 guibg=#1C1C1C
hi SpecialChar     guifg=#D7005F               gui=bold
hi SpecialComment  guifg=#BCBCBC               gui=bold
hi Special         guifg=#5ED6FE guibg=bg      gui=italic
if has("spell")
    "hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellBad    guisp=#FF00AF gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#D7005F               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#5ED6FE
hi Tag             guifg=#D7005F               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#5ED6FE
hi Type            guifg=#5ED6FE               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#4E4E4E
hi Visual                        guibg=#4E4E4E
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#5ED6FE guibg=#000000

if s:molokai_original == 1
   hi Normal          guifg=#D0D0D0 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   hi Normal          guifg=#D0D0D0 guibg=#000000
   hi Comment         guifg=#8787AF
   hi CursorLine                    guibg=#293739
   hi CursorColumn                  guibg=#293739
   hi ColorColumn                   guibg=#1C1C1C
   hi LineNr          guifg=#BCBCBC guibg=#1C1C1C
   hi NonText         guifg=#BCBCBC
   hi SpecialKey      guifg=#BCBCBC
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=none
      hi CursorLine               ctermbg=234   cterm=none
   endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
"   hi Delimiter       ctermfg=241
   hi Delimiter       ctermfg=247

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232

   if has("spell")
    hi SpellBad       ctermfg=160 ctermbg=none  cterm=underline
    hi SpellCap       cterm=underline
    hi SpellLocal     cterm=underline
    hi SpellRare      cterm=underline
   endif

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
"   hi VisualNOS                   ctermbg=238
"   hi Visual                      ctermbg=235
   hi VisualNOS                   ctermbg=241
   hi Visual                      ctermbg=239
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

"   hi Comment         ctermfg=59
   hi Comment         ctermfg=103
   hi CursorColumn                ctermbg=234
   hi ColorColumn                 ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=234
"   hi NonText         ctermfg=59
"   hi SpecialKey      ctermfg=59
   hi NonText         ctermfg=103
   hi SpecialKey      ctermfg=103
end
