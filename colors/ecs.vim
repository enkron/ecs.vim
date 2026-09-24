" Vim color file
" Maintainer:   Sergei Belokon <srj.belokon@gmail.com>
" Repository:   https://github.com/enkron/ecs.vim
" Last Change:  2026 Sep 24

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "ecs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               General                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE

hi ModeMsg ctermfg=231 ctermbg=61 cterm=bold,italic guifg=#ffffff guibg=#3972a8
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi LineNr ctermfg=241 ctermbg=NONE guifg=#666666 guibg=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE term=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr ctermfg=68 ctermbg=234 cterm=bold term=bold guifg=#5a93c8 guibg=#1a1a1a
hi Directory ctermfg=104 ctermbg=NONE guifg=#8a8ae0 guibg=NONE
hi ErrorMsg ctermfg=203 ctermbg=234 cterm=bold term=bold guifg=#ff5f5f guibg=#3a1414 gui=bold
hi WarningMsg ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE
hi MatchParen ctermfg=68 ctermbg=NONE cterm=bold,underline term=bold guifg=#5a93c8 guibg=NONE gui=bold,undercurl guisp=#3e3b70
hi MoreMsg ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi NonText ctermfg=241 ctermbg=NONE guifg=#666666 guibg=NONE
" Background only (#3f6969 teal tint), so matches keep their syntax colors
hi Search ctermfg=NONE ctermbg=237 cterm=NONE term=bold guifg=NONE guibg=#1f3d3d gui=NONE
hi IncSearch ctermfg=231 ctermbg=61 cterm=bold term=bold guifg=#ffffff guibg=#3972a8
hi link CurSearch IncSearch
hi StatusLine ctermfg=241 ctermbg=234 cterm=NONE guifg=#666666 guibg=#1a1a1a gui=NONE
hi StatusLineNC ctermfg=236 ctermbg=234 cterm=NONE guifg=#333333 guibg=#1a1a1a
hi User1 ctermfg=231 ctermbg=234 cterm=NONE guifg=#ffffff guibg=#1a1a1a
hi User2 ctermfg=68 ctermbg=234 cterm=bold guifg=#5a93c8 guibg=#1a1a1a
hi User3 ctermfg=231 ctermbg=61 cterm=bold guifg=#ffffff guibg=#3972a8
hi User4 ctermfg=252 ctermbg=234 cterm=bold guifg=#cccccc guibg=#1a1a1a
hi User5 ctermfg=68 ctermbg=234 cterm=bold guifg=#5a93c8 guibg=#1a1a1a
hi User6 ctermfg=241 ctermbg=234 cterm=bold guifg=#666666 guibg=#1a1a1a
hi VertSplit ctermfg=231 ctermbg=NONE cterm=bold term=bold guifg=#ffffff guibg=NONE
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE term=NONE guifg=NONE guibg=#333333
hi VisualNOS ctermfg=NONE ctermbg=235 cterm=NONE term=NONE guifg=NONE guibg=#2a2a2a
hi SignColumn ctermfg=241 ctermbg=NONE guifg=#666666 guibg=NONE
hi FoldColumn ctermfg=241 ctermbg=NONE guifg=#666666 guibg=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1a1a1a
hi WildMenu ctermfg=231 ctermbg=61 cterm=bold guifg=#ffffff guibg=#3972a8
hi Question ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi TabLine ctermfg=241 ctermbg=234 cterm=NONE guifg=#666666 guibg=#1a1a1a
hi TabLineSel ctermfg=231 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE
hi TabLineFill ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1a1a1a
hi EndOfBuffer ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE
hi Conceal ctermfg=244 ctermbg=NONE guifg=#7f7f7f guibg=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1a1a1a
hi QuickFixLine ctermfg=NONE ctermbg=237 cterm=bold guifg=NONE guibg=#263a52
hi Ignore ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE
hi link LineNrAbove LineNr
hi link LineNrBelow LineNr
hi link CursorLineSign CursorLine
hi link CursorLineFold CursorLine
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link PopupNotification Pmenu
hi ToolbarLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1a1a1a
hi ToolbarButton ctermfg=231 ctermbg=237 cterm=bold guifg=#ffffff guibg=#263a52
hi debugPC ctermfg=NONE ctermbg=237 guifg=NONE guibg=#263a52
hi debugBreakpoint ctermfg=203 ctermbg=234 cterm=bold guifg=#ff5f5f guibg=#3a1414
" Added/Changed/Removed: diff and git filetypes (Vim 9.1+)
hi Added ctermfg=78 ctermbg=NONE guifg=#73c991 guibg=NONE
hi Changed ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi Removed ctermfg=203 ctermbg=NONE guifg=#f06a6a guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Generic Syntax Highlighting                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Comment ctermfg=244 ctermbg=NONE cterm=italic guifg=#7f7f7f guibg=NONE
hi SpecialComment ctermfg=252 ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE

hi Constant ctermfg=104 ctermbg=NONE term=bold cterm=bold guifg=#8a8ae0 guibg=NONE
hi String ctermfg=231 ctermbg=NONE cterm=italic guifg=#ffffff guibg=NONE
hi Character ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi Number ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi Boolean ctermfg=173 ctermbg=NONE cterm=bold term=bold guifg=#c9826f guibg=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=bold term=bold guifg=#5a93c8 guibg=NONE

" Solid backing so completion and LSP hover popups do not float over code
hi Pmenu ctermfg=252 ctermbg=234 cterm=NONE guifg=#cccccc guibg=#141820 gui=NONE
hi PmenuSel ctermfg=231 ctermbg=237 cterm=bold guifg=#ffffff guibg=#263a52 gui=bold
hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#141820
hi PmenuThumb ctermfg=NONE ctermbg=238 guifg=NONE guibg=#3a4050
hi PmenuMatch ctermfg=104 ctermbg=234 cterm=bold guifg=#8a8ae0 guibg=#141820 gui=bold
hi PmenuMatchSel ctermfg=104 ctermbg=237 cterm=bold guifg=#8f8fe0 guibg=#263a52 gui=bold

hi Identifier ctermfg=105 ctermbg=NONE cterm=NONE term=NONE guifg=#8088ff guibg=NONE
hi Function ctermfg=231 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE

hi Statement ctermfg=105 ctermbg=NONE guifg=#8088ff guibg=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement

hi Operator ctermfg=104 ctermbg=NONE cterm=bold term=bold guifg=#9a94d9 guibg=NONE
hi Keyword ctermfg=68 ctermbg=NONE cterm=bold guifg=#5a93c8 guibg=NONE

hi Macro ctermfg=104 ctermbg=NONE guifg=#8a8ae0 guibg=NONE

hi PreProc ctermfg=105 ctermbg=NONE cterm=bold guifg=#8088ff guibg=NONE
hi PreCondit ctermfg=104 ctermbg=NONE guifg=#8a8ae0 guibg=NONE
hi link Include PreProc
hi link Define PreProc

hi Type ctermfg=73 ctermbg=NONE guifg=#6fa3a3 guibg=NONE
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=68 ctermbg=NONE cterm=bold,italic term=bold guifg=#5a93c8 guibg=NONE
hi StorageClass ctermfg=104 ctermbg=NONE cterm=bold term=bold guifg=#9a94d9 guibg=NONE

hi SpecialChar ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE
hi Tag ctermfg=105 ctermbg=NONE guifg=#8088ff guibg=NONE
hi Delimiter ctermfg=68 ctermbg=NONE guifg=#5a93c8 guibg=NONE

hi SpecialKey ctermfg=68 ctermbg=NONE cterm=bold term=bold guifg=#5a93c8 guibg=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#b3554a
hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#3972a8
hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#3f6969
hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl guifg=NONE guibg=NONE gui=undercurl guisp=#666666

hi Todo ctermfg=68 ctermbg=NONE cterm=bold,italic guifg=#5a93c8 guibg=NONE
hi Error ctermfg=203 ctermbg=NONE cterm=italic guifg=#f06a6a guibg=NONE
" Diff: dim background tints only, syntax colors stay readable; DiffText is
" one step brighter than DiffChange to mark the changed part of the line
hi DiffAdd ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#16302a gui=NONE
hi DiffChange ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#1a2a3d gui=NONE
hi DiffDelete ctermfg=238 ctermbg=234 cterm=NONE guifg=#5c3440 guibg=#2a1418 gui=NONE
hi DiffText ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE guibg=#2e4a6e gui=NONE
hi Folded ctermfg=231 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE
hi Title ctermfg=203 ctermbg=NONE cterm=bold guifg=#f06a6a guibg=NONE
hi Underlined ctermfg=104 ctermbg=NONE cterm=underline guifg=#8a8ae0 guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Plugin Highlighting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yegappan/lsp symbol references (autoHighlight). Unset, they link to
" Search/DiffChange/DiffDelete. Background only, so syntax colors show
" through: steel blue for reads, muted indigo for writes,
" slate for plain text matches, all well above CursorLine (#1a1a1a).
hi LspTextRef ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#2a2f38 gui=NONE
hi LspReadRef ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#263a52 gui=NONE
hi LspWriteRef ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#3b3563 gui=NONE

" yegappan/lsp diagnostic signs. Unset, they link to ErrorMsg/Search/Pmenu,
" which paint filled blocks in the sign column; colored glyphs only instead.
hi LspDiagSignErrorText ctermfg=203 ctermbg=NONE cterm=bold guifg=#ff5f5f guibg=NONE gui=bold
hi LspDiagSignWarningText ctermfg=179 ctermbg=NONE cterm=bold guifg=#d7af5f guibg=NONE gui=bold
hi LspDiagSignInfoText ctermfg=104 ctermbg=NONE cterm=NONE guifg=#8a8ae0 guibg=NONE gui=NONE
hi LspDiagSignHintText ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Language Syntax Highlighting                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi vimGroupName ctermfg=68 ctermbg=NONE cterm=bold guifg=#5a93c8 guibg=NONE
hi vimGroup ctermfg=68 ctermbg=NONE cterm=bold guifg=#5a93c8 guibg=NONE

" Markdown
hi markdownH1 ctermfg=68 ctermbg=NONE cterm=bold guifg=#5a93c8 guibg=NONE
hi markdownH2 ctermfg=173 ctermbg=NONE cterm=bold guifg=#c9826f guibg=NONE
hi markdownH3 ctermfg=104 ctermbg=NONE cterm=bold guifg=#8a8ae0 guibg=NONE
hi markdownH4 ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6fa3a3 guibg=NONE
hi link markdownH5 markdownH4
hi link markdownH6 markdownH4
hi markdownHeadingDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE

hi markdownBold ctermfg=252 ctermbg=NONE cterm=bold guifg=#cccccc guibg=NONE
hi markdownItalic ctermfg=252 ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE
hi markdownBoldItalic ctermfg=252 ctermbg=NONE cterm=bold,italic guifg=#cccccc guibg=NONE
hi markdownStrike ctermfg=241 ctermbg=NONE cterm=strikethrough guifg=#666666 guibg=NONE

hi markdownCode ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5a93c8 guibg=NONE
hi markdownCodeDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi markdownCodeBlock ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5a93c8 guibg=NONE

hi markdownLinkText ctermfg=104 ctermbg=NONE cterm=underline guifg=#8a8ae0 guibg=NONE
hi markdownUrl ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6fa3a3 guibg=NONE
hi markdownUrlDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi markdownUrlTitle ctermfg=252 ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE

hi markdownBlockquote ctermfg=244 ctermbg=NONE cterm=italic guifg=#7f7f7f guibg=NONE
hi markdownListMarker ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5a93c8 guibg=NONE
hi markdownRule ctermfg=241 ctermbg=NONE cterm=bold guifg=#666666 guibg=NONE

" YAML
hi yamlBlockMappingKey ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5a93c8 guibg=NONE
hi link yamlFlowMappingKey yamlBlockMappingKey
hi yamlKeyValueDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlBlockCollectionItemStart ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5a93c8 guibg=NONE
hi yamlFlowIndicator ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlFlowString ctermfg=252 ctermbg=NONE cterm=italic guifg=#cccccc guibg=NONE
hi yamlFlowStringDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlDocumentStart ctermfg=241 ctermbg=NONE cterm=bold guifg=#666666 guibg=NONE
hi link yamlDocumentEnd yamlDocumentStart
hi yamlBool ctermfg=173 ctermbg=NONE cterm=bold guifg=#c9826f guibg=NONE
hi link yamlNull yamlBool
hi yamlAnchor ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6fa3a3 guibg=NONE
hi yamlAlias ctermfg=73 ctermbg=NONE cterm=italic guifg=#6fa3a3 guibg=NONE
hi link yamlNodeTag yamlAnchor
hi yamlBlockMappingMerge ctermfg=68 ctermbg=NONE cterm=bold guifg=#5a93c8 guibg=NONE
hi link yamlFlowMappingMerge yamlBlockMappingMerge
hi yamlMappingKeyStart ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlBlockScalarHeader ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
