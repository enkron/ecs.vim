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
let g:colors_name = "ecs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               General                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal ctermfg=white ctermbg=NONE guifg=#ffffff guibg=NONE

hi ModeMsg ctermfg=black ctermbg=white cterm=bold,italic guifg=#ffffff guibg=#96653a
hi Cursor ctermfg=NONE guifg=NONE guibg=NONE
hi LineNr ctermfg=darkgray ctermbg=NONE guifg=#666666 guibg=NONE
hi CursorLine ctermfg=NONE ctermbg=darkgray cterm=NONE term=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr ctermfg=black ctermbg=darkgray cterm=bold term=bold guifg=#96653a guibg=#1a1a1a
hi Directory ctermfg=blue guifg=#6e6ec4 guibg=NONE
hi ErrorMsg ctermfg=black ctermbg=red cterm=bold term=bold guifg=#000000 guibg=#ff0000
hi WarningMsg ctermfg=red ctermbg=NONE guifg=#ff0000 guibg=NONE
hi MatchParen ctermfg=darkcyan ctermbg=black cterm=bold term=bold guifg=#ffffff guibg=#990000
hi MoreMsg ctermfg=black guifg=#000000 guibg=NONE
hi NonText ctermfg=grey guifg=#666666 guibg=NONE
hi Search ctermfg=darkcyan ctermbg=darkgray cterm=bold term=bold guifg=#96653a guibg=#1a1a1a
hi link IncSearch Search
hi StatusLine ctermbg=black ctermfg=lightgray guifg=#1a1a1a guibg=#1a1a1a
hi User1 ctermfg=black ctermbg=lightgray cterm=NONE guifg=#ffffff guibg=#1a1a1a
hi User2 ctermfg=darkred ctermbg=lightgray cterm=bold guifg=#990000 guibg=#1a1a1a
hi User3 ctermfg=black ctermbg=lightgray cterm=bold guifg=#ffffff guibg=#990000
hi User4 ctermfg=lightgray ctermbg=black cterm=bold guifg=#cccccc guibg=#1a1a1a
hi User5 ctermfg=brown ctermbg=lightgray cterm=bold guifg=#96653a guibg=#1a1a1a
hi User6 ctermfg=brown ctermbg=lightgray cterm=bold guifg=#666666 guibg=#1a1a1a
hi VertSplit ctermfg=white ctermbg=NONE cterm=bold term=bold guifg=#ffffff guibg=NONE
hi Visual ctermfg=darkcyan ctermbg=darkgrey cterm=bold term=bold guifg=NONE guibg=#1a1a1a

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

hi Pmenu ctermfg=grey ctermbg=black guifg=#666666 guibg=NONE
hi PmenuSel ctermfg=darkblue ctermbg=black guifg=#96653a guibg=NONE

hi Identifier ctermfg=darkblue ctermbg=NONE cterm=NONE term=NONE guifg=#3333ff guibg=NONE
hi Function ctermfg=white cterm=bold guifg=#ffffff guibg=NONE

hi Statement ctermfg=darkblue guifg=#3333ff guibg=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement

hi Operator ctermfg=darkmagenta cterm=bold term=bold guifg=#3e3b70 guibg=NONE
hi Keyword ctermfg=brown cterm=bold guifg=#96653a guibg=NONE

hi Macro ctermfg=blue guifg=#6e6ec4 guibg=NONE

hi PreProc ctermfg=darkblue cterm=bold guifg=#3333ff guibg=NONE
hi PreCondit ctermfg=blue guifg=#6e6ec4 guibg=NONE
hi link Include PreProc
hi link Define PreProc

hi Type ctermfg=darkblue guifg=#3f6969 guibg=NONE
hi link StorageClabluess Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=brown cterm=bold,italic term=bold guifg=#3972a8 guibg=NONE
hi StorageClass ctermfg=darkmagenta cterm=bold term=bold guifg=#3e3b70 guibg=NONE

hi SpecialChar ctermfg=brown guifg=#3972a8 guibg=NONE
hi Tag ctermfg=darkblue guifg=#3333ff guibg=NONE
hi Delimeter ctermfg=brown guifg=#3972a8 guibg=NONE

hi SpecialKey ctermfg=brown cterm=bold term=bold guifg=#3972a8 guibg=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=undercurl guisp=#990000
hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=undercurl guisp=#3972a8
hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=undercurl guisp=#3f6969
hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=undercurl guisp=#666666

hi Todo ctermfg=grey ctermbg=darkgrey cterm=bold,italic guifg=#666666 guibg=#666666
hi Error ctermfg=88 ctermbg=NONE cterm=italic guifg=#990000 guibg=NONE
hi DiffChange ctermfg=white ctermbg=brown guifg=#ffffff guibg=#3972a8
hi Folded ctermfg=white ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE
hi Title ctermfg=88 ctermbg=NONE cterm=bold guifg=#990000 guibg=NONE
hi Underlined ctermfg=blue ctermbg=NONE cterm=underline guifg=#6e6ec4 guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Language Syntax Highlighting                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi vimGroupName ctermfg=brown ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE
hi vimGroup ctermfg=brown ctermbg=NONE cterm=bold guifg=#3972a8 guibg=NONE

" Markdown
hi markdownH1 ctermfg=brown ctermbg=NONE cterm=bold guifg=#96653a guibg=NONE
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
hi markdownListMarker ctermfg=brown ctermbg=NONE cterm=NONE guifg=#96653a guibg=NONE
hi markdownRule ctermfg=grey ctermbg=NONE cterm=bold guifg=#666666 guibg=NONE

" YAML
hi yamlBlockMappingKey ctermfg=brown ctermbg=NONE cterm=NONE guifg=#96653a guibg=NONE
hi link yamlFlowMappingKey yamlBlockMappingKey
hi yamlKeyValueDelimiter ctermfg=darkgray ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE
hi yamlBlockCollectionItemStart ctermfg=brown ctermbg=NONE cterm=NONE guifg=#96653a guibg=NONE
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
