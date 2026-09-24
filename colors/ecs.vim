" Vim color file
" Maintainer:   Sergei Belokon <srj.belokon@gmail.com>
" Repository:   https://github.com/enkron/ecs.vim
" Last Change:  2025 Nov 20

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
set t_Co=256
if has("termguicolors")
        set termguicolors
endif
if !has('gui_running')
    let &t_Cs = "\e[4:3m"
    let &t_Ce = "\e[4:0m"
endif
let g:colors_name = "ecs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               General                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal ctermfg=white ctermbg=NONE guifg=#ffffff guibg=NONE

hi ModeMsg ctermfg=black ctermbg=white cterm=bold,italic guifg=#ffffff guibg=#3972a8
hi Cursor ctermfg=NONE guifg=NONE guibg=NONE
hi LineNr ctermfg=darkgray ctermbg=NONE guifg=#666666 guibg=NONE
hi CursorLine ctermfg=NONE ctermbg=darkgray cterm=NONE term=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr ctermfg=black ctermbg=darkgray cterm=bold term=bold guifg=#3972a8 guibg=#1a1a1a
hi Directory ctermfg=blue guifg=#6e6ec4 guibg=NONE
hi ErrorMsg ctermfg=red ctermbg=52 cterm=bold term=bold guifg=#ff5f5f guibg=#3a1414 gui=bold
hi WarningMsg ctermfg=red ctermbg=NONE guifg=#ff0000 guibg=NONE
hi MatchParen ctermfg=blue ctermbg=NONE cterm=bold,underline term=bold guifg=#3972a8 guibg=NONE gui=bold,undercurl guisp=#3e3b70
hi MoreMsg ctermfg=blue ctermbg=NONE guifg=#3972a8 guibg=NONE
hi NonText ctermfg=grey guifg=#666666 guibg=NONE
" Background only (#3f6969 teal tint), so matches keep their syntax colors
hi Search ctermfg=NONE ctermbg=23 cterm=NONE term=bold guifg=NONE guibg=#1f3d3d gui=NONE
hi IncSearch ctermfg=black ctermbg=blue cterm=bold term=bold guifg=#000000 guibg=#3972a8
hi link CurSearch IncSearch
hi StatusLine ctermfg=lightgray ctermbg=black cterm=NONE guifg=#666666 guibg=#1a1a1a gui=NONE
hi StatusLineNC ctermfg=darkgray ctermbg=black cterm=NONE guifg=#333333 guibg=#1a1a1a
hi User1 ctermfg=white ctermbg=black cterm=NONE guifg=#ffffff guibg=#1a1a1a
hi User2 ctermfg=blue ctermbg=black cterm=bold guifg=#3972a8 guibg=#1a1a1a
hi User3 ctermfg=white ctermbg=blue cterm=bold guifg=#ffffff guibg=#3972a8
hi User4 ctermfg=lightgray ctermbg=black cterm=bold guifg=#cccccc guibg=#1a1a1a
hi User5 ctermfg=blue ctermbg=black cterm=bold guifg=#3972a8 guibg=#1a1a1a
hi User6 ctermfg=brown ctermbg=black cterm=bold guifg=#666666 guibg=#1a1a1a
hi VertSplit ctermfg=white ctermbg=NONE cterm=bold term=bold guifg=#ffffff guibg=NONE
hi Visual ctermfg=NONE ctermbg=darkgrey cterm=NONE term=NONE guifg=NONE guibg=#333333
hi VisualNOS ctermfg=NONE ctermbg=darkgrey cterm=NONE term=NONE guifg=NONE guibg=#2a2a2a
hi SignColumn ctermfg=darkgray ctermbg=NONE guifg=#666666 guibg=NONE
hi FoldColumn ctermfg=darkgray ctermbg=NONE guifg=#666666 guibg=NONE
hi ColorColumn ctermfg=NONE ctermbg=darkgray guifg=NONE guibg=#1a1a1a
hi WildMenu ctermfg=black ctermbg=blue cterm=bold guifg=#000000 guibg=#3972a8
hi Question ctermfg=blue ctermbg=NONE guifg=#3972a8 guibg=NONE
hi TabLine ctermfg=darkgray ctermbg=black cterm=NONE guifg=#666666 guibg=#1a1a1a
hi TabLineSel ctermfg=white ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE
hi TabLineFill ctermfg=NONE ctermbg=black guifg=NONE guibg=#1a1a1a
hi EndOfBuffer ctermfg=darkgray ctermbg=NONE guifg=#333333 guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Generic Syntax Highlighting                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Comment ctermfg=grey cterm=italic guifg=#666666 guibg=NONE
hi SpecialComment ctermfg=lightgrey cterm=italic guifg=#cccccc guibg=NONE

hi Constant ctermfg=blue term=bold cterm=bold guifg=#6e6ec4 guibg=NONE
hi String ctermfg=white cterm=italic guifg=#ffffff guibg=NONE
hi Character ctermfg=brown guifg=#3972a8 guibg=NONE
hi Number ctermfg=brown guifg=#3972a8 guibg=NONE
hi Boolean ctermfg=brown cterm=bold term=bold guifg=#965949 guibg=NONE
hi Float ctermfg=brown cterm=bold term=bold guifg=#3972a8 guibg=NONE

" Solid backing so completion and LSP hover popups do not float over code
hi Pmenu ctermfg=lightgrey ctermbg=234 cterm=NONE guifg=#cccccc guibg=#141820 gui=NONE
hi PmenuSel ctermfg=white ctermbg=238 cterm=bold guifg=#ffffff guibg=#263a52 gui=bold
hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#141820
hi PmenuThumb ctermfg=NONE ctermbg=240 guifg=NONE guibg=#3a4050
hi PmenuMatch ctermfg=blue ctermbg=234 cterm=bold guifg=#6e6ec4 guibg=#141820 gui=bold
hi PmenuMatchSel ctermfg=blue ctermbg=238 cterm=bold guifg=#8f8fe0 guibg=#263a52 gui=bold

hi Identifier ctermfg=darkblue ctermbg=NONE cterm=NONE term=NONE guifg=#3333ff guibg=NONE
hi Function ctermfg=white cterm=bold guifg=#ffffff guibg=NONE

hi Statement ctermfg=darkblue guifg=#3333ff guibg=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement

hi Operator ctermfg=darkmagenta cterm=bold term=bold guifg=#3e3b70 guibg=NONE
hi Keyword ctermfg=blue cterm=bold guifg=#3972a8 guibg=NONE

hi Macro ctermfg=blue guifg=#6e6ec4 guibg=NONE

hi PreProc ctermfg=darkblue cterm=bold guifg=#3333ff guibg=NONE
hi PreCondit ctermfg=blue guifg=#6e6ec4 guibg=NONE
hi link Include PreProc
hi link Define PreProc

hi Type ctermfg=darkblue guifg=#3f6969 guibg=NONE
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=brown cterm=bold,italic term=bold guifg=#3972a8 guibg=NONE
hi StorageClass ctermfg=darkmagenta cterm=bold term=bold guifg=#3e3b70 guibg=NONE

hi SpecialChar ctermfg=brown guifg=#3972a8 guibg=NONE
hi Tag ctermfg=darkblue guifg=#3333ff guibg=NONE
hi Delimiter ctermfg=brown guifg=#3972a8 guibg=NONE

hi SpecialKey ctermfg=brown cterm=bold term=bold guifg=#3972a8 guibg=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#b3554a
hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#3972a8
hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#3f6969
hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#666666

hi Todo ctermfg=blue ctermbg=NONE cterm=bold,italic guifg=#3972a8 guibg=NONE
hi Error ctermfg=88 ctermbg=NONE cterm=italic guifg=#990000 guibg=NONE
" Diff: dim background tints only, syntax colors stay readable; DiffText is
" one step brighter than DiffChange to mark the changed part of the line
hi DiffAdd ctermfg=NONE ctermbg=22 cterm=NONE guifg=NONE guibg=#16302a gui=NONE
hi DiffChange ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#1a2a3d gui=NONE
hi DiffDelete ctermfg=52 ctermbg=NONE cterm=NONE guifg=#5c3440 guibg=#2a1418 gui=NONE
hi DiffText ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#2e4a6e gui=NONE
hi Folded ctermfg=white ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE
hi Title ctermfg=88 ctermbg=NONE cterm=bold guifg=#990000 guibg=NONE
hi Underlined ctermfg=blue ctermbg=NONE cterm=underline guifg=#6e6ec4 guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Plugin Highlighting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yegappan/lsp symbol references (autoHighlight). Unset, they link to
" Search/DiffChange/DiffDelete. Background only, so syntax colors show
" through: steel blue for reads, muted indigo (#6e6ec4 family) for writes,
" slate for plain text matches, all well above CursorLine (#1a1a1a).
hi LspTextRef ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#2a2f38 gui=NONE
hi LspReadRef ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#263a52 gui=NONE
hi LspWriteRef ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE guibg=#3b3563 gui=NONE

" yegappan/lsp diagnostic signs. Unset, they link to ErrorMsg/Search/Pmenu,
" which paint filled blocks in the sign column; colored glyphs only instead.
hi LspDiagSignErrorText ctermfg=red ctermbg=NONE cterm=bold guifg=#ff5f5f guibg=NONE gui=bold
hi LspDiagSignWarningText ctermfg=179 ctermbg=NONE cterm=bold guifg=#d7af5f guibg=NONE gui=bold
hi LspDiagSignInfoText ctermfg=blue ctermbg=NONE cterm=NONE guifg=#6e6ec4 guibg=NONE gui=NONE
hi LspDiagSignHintText ctermfg=grey ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Language Syntax Highlighting                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi vimGroupName ctermfg=brown ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE
hi vimGroup ctermfg=brown ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE

" Markdown
hi markdownH1 ctermfg=blue ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE
hi markdownH2 ctermfg=brown ctermbg=NONE cterm=bold guifg=#965949 guibg=NONE
hi markdownH3 ctermfg=blue ctermbg=NONE cterm=bold guifg=#6e6ec4 guibg=NONE
hi markdownH4 ctermfg=darkcyan ctermbg=NONE cterm=NONE guifg=#3f6969 guibg=NONE
hi link markdownH5 markdownH4
hi link markdownH6 markdownH4
hi markdownHeadingDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE

hi markdownBold ctermfg=white ctermbg=NONE cterm=bold guifg=#cccccc guibg=NONE
hi markdownItalic ctermfg=white ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE
hi markdownBoldItalic ctermfg=white ctermbg=NONE cterm=bold,italic guifg=#cccccc guibg=NONE
hi markdownStrike ctermfg=grey ctermbg=NONE cterm=strikethrough guifg=#666666 guibg=NONE

hi markdownCode ctermfg=darkcyan ctermbg=NONE cterm=NONE guifg=#3972a8 guibg=NONE
hi markdownCodeDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi markdownCodeBlock ctermfg=darkcyan ctermbg=NONE cterm=NONE guifg=#3972a8 guibg=NONE

hi markdownLinkText ctermfg=blue ctermbg=NONE cterm=underline guifg=#6e6ec4 guibg=NONE
hi markdownUrl ctermfg=darkcyan ctermbg=NONE cterm=NONE guifg=#3f6969 guibg=NONE
hi markdownUrlDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi markdownUrlTitle ctermfg=white ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE

hi markdownBlockquote ctermfg=grey ctermbg=NONE cterm=italic guifg=#666666 guibg=NONE
hi markdownListMarker ctermfg=blue ctermbg=NONE cterm=NONE guifg=#3972a8 guibg=NONE
hi markdownRule ctermfg=grey ctermbg=NONE cterm=bold guifg=#666666 guibg=NONE

" YAML
hi yamlBlockMappingKey ctermfg=blue ctermbg=NONE cterm=NONE guifg=#3972a8 guibg=NONE
hi link yamlFlowMappingKey yamlBlockMappingKey
hi yamlKeyValueDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlBlockCollectionItemStart ctermfg=blue ctermbg=NONE cterm=NONE guifg=#3972a8 guibg=NONE
hi yamlFlowIndicator ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlFlowString ctermfg=white ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE
hi yamlFlowStringDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlDocumentStart ctermfg=grey ctermbg=NONE cterm=bold guifg=#666666 guibg=NONE
hi link yamlDocumentEnd yamlDocumentStart
hi yamlBool ctermfg=brown ctermbg=NONE cterm=bold guifg=#965949 guibg=NONE
hi link yamlNull yamlBool
hi yamlAnchor ctermfg=darkcyan ctermbg=NONE cterm=NONE guifg=#3f6969 guibg=NONE
hi yamlAlias ctermfg=darkcyan ctermbg=NONE cterm=italic guifg=#3f6969 guibg=NONE
hi link yamlNodeTag yamlAnchor
hi yamlBlockMappingMerge ctermfg=darkcyan ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE
hi link yamlFlowMappingMerge yamlBlockMappingMerge
hi yamlMappingKeyStart ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlBlockScalarHeader ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
