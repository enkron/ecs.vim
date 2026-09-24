vim9script
# Vim color file
# Name:         ecs
# Maintainer:   Sergei Belokon <srj.belokon@gmail.com>
# Repository:   https://github.com/enkron/ecs.vim
# Last Change:  2026 Sep 25

set background=dark
hi clear
if exists('syntax_on')
    syntax reset
endif
g:colors_name = 'ecs'

########################################################################
#                               Palette                                #
########################################################################
# name: [gui hex, nearest xterm-256 index]. Tints are blended into the
# #000000 terminal background (Normal has no guibg), so they assume it.
const p: dict<list<string>> = {
    none:            ['NONE', 'NONE'],

    # Neutrals
    white:           ['#ffffff', '231'],
    grey80:          ['#cccccc', '252'],
    grey50:          ['#7f7f7f', '244'],
    grey40:          ['#666666', '241'],
    grey20:          ['#333333', '236'],
    surface:         ['#1a1a1a', '234'],

    # Text accents, all >= 4.5:1 on black
    blue:            ['#5a93c8', '68'],
    indigo:          ['#8088ff', '105'],
    violet:          ['#8a8ae0', '104'],
    lavender:        ['#9a94d9', '104'],
    teal:            ['#6fa3a3', '73'],
    copper:          ['#c9826f', '173'],
    red:             ['#f06a6a', '203'],
    amber:           ['#d7af5f', '179'],
    green:           ['#73c991', '78'],

    # Bright variants, only used by the :terminal ANSI palette
    red_bright:      ['#ff8787', '210'],
    green_bright:    ['#95e0ad', '115'],
    amber_bright:    ['#f0cc80', '222'],
    blue_bright:     ['#8ab4e0', '110'],
    lavender_bright: ['#b8b0f0', '147'],
    teal_bright:     ['#95c8c8', '116'],

    # Solid fills (mode message, current search match, statusline)
    accent:          ['#3972a8', '61'],

    # Background tints
    popup:           ['#141820', '234'],
    thumb:           ['#3a4050', '238'],
    selected:        ['#263a52', '237'],
    visual:          ['#1f3550', '237'],
    visual_nos:      ['#1a2b40', '236'],
    search:          ['#1f3d3d', '237'],
    ref_text:        ['#2a2f38', '236'],
    ref_write:       ['#3b3563', '238'],
    error_bg:        ['#3a1414', '234'],
    diff_add:        ['#16302a', '235'],
    diff_change:     ['#1a2a3d', '236'],
    diff_delete:     ['#2a1418', '234'],
    diff_delete_fg:  ['#5c3440', '238'],
    diff_text:       ['#2e4a6e', '239'],

    # Underline (guisp) colors
    spell_bad:       ['#b3554a', '131'],
    indigo_dark:     ['#3e3b70', '239'],
    teal_dark:       ['#3f6969', '59'],
}

# Hi(group, fg, bg[, attr[, sp]]): fg, bg and sp are palette keys; attr is
# a :hi attribute list (eg. 'bold,italic') applied to both cterm and gui.
def Hi(group: string, fg: string, bg: string, attr = 'NONE', sp = '')
    var cmd = $'hi {group} guifg={p[fg][0]} guibg={p[bg][0]} gui={attr}'
        .. $' ctermfg={p[fg][1]} ctermbg={p[bg][1]} cterm={attr}'
    if sp != ''
        cmd ..= $' guisp={p[sp][0]}'
    endif
    execute cmd
enddef

def Link(group: string, target: string)
    execute $'hi! link {group} {target}'
enddef

########################################################################
#                               General                                #
########################################################################
Hi('Normal', 'white', 'none')

Hi('ModeMsg', 'white', 'accent', 'bold,italic')
Hi('Cursor', 'none', 'none')
Hi('LineNr', 'grey40', 'none')
Link('LineNrAbove', 'LineNr')
Link('LineNrBelow', 'LineNr')
Hi('CursorLine', 'none', 'surface')
Hi('CursorLineNr', 'blue', 'surface', 'bold')
Link('CursorLineSign', 'CursorLine')
Link('CursorLineFold', 'CursorLine')
Hi('CursorColumn', 'none', 'surface')
Hi('ColorColumn', 'none', 'surface')
Hi('Directory', 'violet', 'none')
Hi('ErrorMsg', 'red', 'error_bg', 'bold')
Hi('WarningMsg', 'amber', 'none')
Hi('MatchParen', 'blue', 'none', 'bold,undercurl', 'indigo_dark')
Hi('MoreMsg', 'blue', 'none')
Hi('Question', 'blue', 'none')
Hi('NonText', 'grey40', 'none')
Hi('EndOfBuffer', 'grey20', 'none')
Hi('Conceal', 'grey50', 'none')
Hi('Ignore', 'grey20', 'none')

# Search is background only (teal tint), so matches keep their syntax
# colors; the current match stays a solid fill so it stands out.
Hi('Search', 'none', 'search')
Hi('IncSearch', 'white', 'accent', 'bold')
Link('CurSearch', 'IncSearch')

# Blue selection tint, kept dim enough that syntax colors stay readable
Hi('Visual', 'none', 'visual')
Hi('VisualNOS', 'none', 'visual_nos')
Hi('QuickFixLine', 'none', 'selected', 'bold')

Hi('StatusLine', 'grey40', 'surface')
Hi('StatusLineNC', 'grey20', 'surface')
Link('StatusLineTerm', 'StatusLine')
Link('StatusLineTermNC', 'StatusLineNC')
Hi('User1', 'white', 'surface')
Hi('User2', 'blue', 'surface', 'bold')
Hi('User3', 'white', 'accent', 'bold')
Hi('User4', 'grey80', 'surface', 'bold')
Link('User5', 'User2')
Hi('User6', 'grey40', 'surface', 'bold')
Hi('VertSplit', 'white', 'none', 'bold')
Hi('SignColumn', 'grey40', 'none')
Hi('FoldColumn', 'grey40', 'none')
Hi('Folded', 'white', 'none', 'bold')
Hi('WildMenu', 'white', 'accent', 'bold')
Hi('TabLine', 'grey40', 'surface')
Hi('TabLineSel', 'white', 'none', 'bold')
Hi('TabLineFill', 'none', 'surface')
Hi('ToolbarLine', 'none', 'surface')
Hi('ToolbarButton', 'white', 'selected', 'bold')
Hi('Title', 'red', 'none', 'bold')

# Solid backing so completion and LSP hover popups do not float over code
Hi('Pmenu', 'grey80', 'popup')
Hi('PmenuSel', 'white', 'selected', 'bold')
Hi('PmenuSbar', 'none', 'popup')
Hi('PmenuThumb', 'none', 'thumb')
Hi('PmenuMatch', 'violet', 'popup', 'bold')
Hi('PmenuMatchSel', 'violet', 'selected', 'bold')
Link('PopupNotification', 'Pmenu')

# Diff: dim background tints only, syntax colors stay readable; DiffText is
# one step brighter than DiffChange to mark the changed part of the line
Hi('DiffAdd', 'none', 'diff_add')
Hi('DiffChange', 'none', 'diff_change')
Hi('DiffDelete', 'diff_delete_fg', 'diff_delete')
Hi('DiffText', 'none', 'diff_text')
# Added/Changed/Removed: diff and git filetypes (Vim 9.1+)
Hi('Added', 'green', 'none')
Hi('Changed', 'blue', 'none')
Hi('Removed', 'red', 'none')

Hi('SpellBad', 'none', 'none', 'undercurl', 'spell_bad')
Hi('SpellCap', 'none', 'none', 'undercurl', 'accent')
Hi('SpellRare', 'none', 'none', 'undercurl', 'teal_dark')
Hi('SpellLocal', 'none', 'none', 'undercurl', 'grey40')

Hi('debugPC', 'none', 'selected')
Hi('debugBreakpoint', 'red', 'error_bg', 'bold')

########################################################################
#                     Generic Syntax Highlighting                      #
########################################################################
Hi('Comment', 'grey50', 'none', 'italic')
Hi('SpecialComment', 'grey80', 'none', 'italic')
Hi('Todo', 'blue', 'none', 'bold,italic')

Hi('Constant', 'violet', 'none', 'bold')
Hi('String', 'white', 'none', 'italic')
Hi('Character', 'blue', 'none')
Link('Number', 'Character')
Hi('Float', 'blue', 'none', 'bold')
Hi('Boolean', 'copper', 'none', 'bold')

Hi('Identifier', 'indigo', 'none')
Hi('Function', 'white', 'none', 'bold')

Hi('Statement', 'indigo', 'none')
Link('Conditional', 'Statement')
Link('Repeat', 'Statement')
Link('Exception', 'Statement')
Link('Label', 'Statement')
Hi('Operator', 'lavender', 'none', 'bold')
Hi('Keyword', 'blue', 'none', 'bold')

Hi('PreProc', 'indigo', 'none', 'bold')
Link('Include', 'PreProc')
Link('Define', 'PreProc')
Hi('PreCondit', 'violet', 'none')
Link('Macro', 'PreCondit')

Hi('Type', 'teal', 'none')
Link('Structure', 'Type')
Link('Typedef', 'Type')
Link('StorageClass', 'Operator')

Hi('Special', 'blue', 'none', 'bold,italic')
Link('SpecialChar', 'Character')
Link('Delimiter', 'Character')
Link('Tag', 'Statement')
Hi('SpecialKey', 'blue', 'none', 'bold')

Hi('Underlined', 'violet', 'none', 'underline')
Hi('Error', 'red', 'none', 'italic')

########################################################################
#                         Plugin Highlighting                          #
########################################################################
# yegappan/lsp symbol references (autoHighlight). Unset, they link to
# Search/DiffChange/DiffDelete. Background only, so syntax colors show
# through: steel blue for reads, muted indigo for writes, slate for plain
# text matches, all well above CursorLine (surface).
Hi('LspTextRef', 'none', 'ref_text')
Hi('LspReadRef', 'none', 'selected')
Hi('LspWriteRef', 'none', 'ref_write')

# yegappan/lsp diagnostic signs. Unset, they link to ErrorMsg/Search/Pmenu,
# which paint filled blocks in the sign column; colored glyphs only instead.
Hi('LspDiagSignErrorText', 'red', 'none', 'bold')
Hi('LspDiagSignWarningText', 'amber', 'none', 'bold')
Hi('LspDiagSignInfoText', 'violet', 'none')
Hi('LspDiagSignHintText', 'grey40', 'none')

########################################################################
#                     Language Syntax Highlighting                     #
########################################################################
Hi('vimGroupName', 'blue', 'none', 'bold')
Link('vimGroup', 'vimGroupName')

# Markdown (runtime syntax/markdown.vim). Prose stays Normal and the markup
# recedes: every piece of punctuation (#, *, _, ~~, `, [], (), <>) shares
# one dim grey, since vimrc forces conceallevel=0 and it is always visible.
# Emphasis is carried by attributes rather than color, so bold and italic
# text is never dimmer than the text around it.
Hi('markdownH1', 'blue', 'none', 'bold')
Hi('markdownH2', 'copper', 'none', 'bold')
Hi('markdownH3', 'violet', 'none', 'bold')
Hi('markdownH4', 'teal', 'none', 'bold')
Hi('markdownH5', 'teal', 'none')
Link('markdownH6', 'markdownH5')
Hi('markdownHeadingDelimiter', 'grey40', 'none')
Link('markdownHeadingRule', 'markdownHeadingDelimiter')

Hi('markdownBold', 'none', 'none', 'bold')
Hi('markdownItalic', 'none', 'none', 'italic')
Hi('markdownBoldItalic', 'none', 'none', 'bold,italic')
Hi('markdownStrike', 'grey50', 'none', 'strikethrough')
Link('markdownBoldDelimiter', 'markdownHeadingDelimiter')
Link('markdownItalicDelimiter', 'markdownHeadingDelimiter')
Link('markdownBoldItalicDelimiter', 'markdownHeadingDelimiter')
Link('markdownStrikeDelimiter', 'markdownHeadingDelimiter')

# Green is used nowhere else in prose, so code never reads as a heading,
# link or list marker. Fenced blocks tagged in g:markdown_fenced_languages
# get their own language's syntax and only share the fence delimiters.
Hi('markdownCode', 'green', 'none')
Link('markdownCodeBlock', 'markdownCode')
Link('markdownCodeDelimiter', 'markdownHeadingDelimiter')

# Link text is what the reader sees, so it gets the accent; the URL is
# plumbing and stays plain. Reference ids and footnotes share the URL teal.
Hi('markdownLinkText', 'violet', 'none', 'underline')
Hi('markdownUrl', 'teal', 'none')
Link('markdownAutomaticLink', 'markdownUrl')
Hi('markdownUrlTitle', 'grey80', 'none', 'italic')
Link('markdownId', 'markdownUrl')
Link('markdownIdDeclaration', 'markdownUrl')
Link('markdownFootnote', 'markdownUrl')
Link('markdownFootnoteDefinition', 'markdownUrl')
Link('markdownLinkTextDelimiter', 'markdownHeadingDelimiter')
Link('markdownLinkDelimiter', 'markdownHeadingDelimiter')
Link('markdownIdDelimiter', 'markdownHeadingDelimiter')
Link('markdownUrlDelimiter', 'markdownHeadingDelimiter')
Link('markdownUrlTitleDelimiter', 'markdownHeadingDelimiter')

# The syntax matches only the '>' marker, not the quoted text
Hi('markdownBlockquote', 'grey50', 'none', 'bold')
Hi('markdownListMarker', 'blue', 'none', 'bold')
Link('markdownOrderedListMarker', 'markdownListMarker')
Hi('markdownRule', 'grey40', 'none', 'bold')
Link('markdownEscape', 'SpecialChar')
# markdownError flags every intra-word '_' (snake_case, file_names), which
# CommonMark treats as literal text; unset, it paints them red.
Hi('markdownError', 'none', 'none')

# HTML, including inline HTML in markdown. Tag punctuation is dimmed like
# the markdown markup; tag names and attributes keep their generic colors.
Hi('htmlTag', 'grey40', 'none')
Link('htmlEndTag', 'htmlTag')
Link('htmlSpecialChar', 'SpecialChar')

# YAML
Hi('yamlBlockMappingKey', 'blue', 'none')
Link('yamlFlowMappingKey', 'yamlBlockMappingKey')
Link('yamlBlockCollectionItemStart', 'yamlBlockMappingKey')
Hi('yamlKeyValueDelimiter', 'grey40', 'none')
Link('yamlFlowIndicator', 'yamlKeyValueDelimiter')
Link('yamlFlowStringDelimiter', 'yamlKeyValueDelimiter')
Link('yamlMappingKeyStart', 'yamlKeyValueDelimiter')
Link('yamlBlockScalarHeader', 'yamlKeyValueDelimiter')
Hi('yamlFlowString', 'grey80', 'none', 'italic')
Hi('yamlDocumentStart', 'grey40', 'none', 'bold')
Link('yamlDocumentEnd', 'yamlDocumentStart')
Hi('yamlBool', 'copper', 'none', 'bold')
Link('yamlNull', 'yamlBool')
Hi('yamlAnchor', 'teal', 'none')
Link('yamlNodeTag', 'yamlAnchor')
Hi('yamlAlias', 'teal', 'none', 'italic')
Hi('yamlBlockMappingMerge', 'blue', 'none', 'bold')
Link('yamlFlowMappingMerge', 'yamlBlockMappingMerge')

########################################################################
#                              :terminal                               #
########################################################################
# ANSI 0-15 for :terminal windows, from the same palette. 0 is 'surface'
# rather than pure black so black-on-default text stays visible.
g:terminal_ansi_colors = [
    'surface', 'red', 'green', 'amber', 'blue', 'lavender', 'teal', 'grey80',
    'grey40', 'red_bright', 'green_bright', 'amber_bright', 'blue_bright',
    'lavender_bright', 'teal_bright', 'white',
]->mapnew((_, name) => p[name][0])
