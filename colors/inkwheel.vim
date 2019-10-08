hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
set termguicolors
let g:colors_name="inkwheel"
let g:Bcg='none'

hi ALEErrorSign       guifg=#ff0000   guibg=#2e2e2e   guisp=none      gui=bold
hi ALEStyleErrorSign  guifg=#409090   guibg=#2e2e2e   guisp=none      gui=bold
hi ALEWarningSign     guifg=#ffa500   guibg=#2e2e2e   guisp=none      gui=bold
hi Boolean            guifg=#00aaff   guibg=none      guisp=none      gui=none
hi Character          guifg=#ffcd8b   guibg=none      guisp=none      gui=none
hi ColorColumn        guifg=none      guibg=none      guisp=none      gui=none
hi Comment            guifg=#cd8b00   guibg=none      guisp=none      gui=none
hi CommentEmail       guifg=#70a0ff   guibg=none      guisp=none      gui=underline,italic
hi CommentURL         guifg=#70a0ff   guibg=none      guisp=none      gui=underline
hi Conceal            guifg=#cfbfad   guibg=none      guisp=none      gui=none
hi Conditional        guifg=#70a0ff   guibg=none      guisp=none      gui=none
hi Constant           guifg=#999900   guibg=none      guisp=none      gui=none
hi Cursor             guifg=#404040   guibg=#8b8bff   guisp=none      gui=none
hi CursorColumn       guifg=none      guibg=#191970   guisp=none      gui=none
hi CursorIM           guifg=none      guibg=none      guisp=none      gui=none
hi CursorLine         guifg=none      guibg=#191970   guisp=none      gui=none
hi CursorLineNR       guifg=#ffa500   guibg=none      guisp=none      gui=bold
hi Debug              guifg=#c080d0   guibg=none      guisp=none      gui=none
hi Define             guifg=#60a080   guibg=none      guisp=none      gui=none
hi DefinedName        guifg=#b878e3   guibg=none      guisp=none      gui=none
hi Delimiter          guifg=#a020d0   guibg=none      guisp=none      gui=none
hi DiffAdd            guifg=#306d30   guibg=#00ff00   guisp=none      gui=bold
hi DiffChange         guifg=#306d30   guibg=#ffa500   guisp=none      gui=bold
hi DiffDelete         guifg=#306d30   guibg=#ff0000   guisp=none      gui=bold
hi DiffText           guifg=#306d30   guibg=#ffffcd   guisp=none      gui=bold
hi Directory          guifg=#00ff8b   guibg=none      guisp=none      gui=none
hi EndOfBuffer        guifg=#000000   guibg=none      guisp=none      gui=bold
hi EnumerationName    guifg=#9ccfe8   guibg=none      guisp=none      gui=none
hi EnumerationValue   guifg=#6c7fcc   guibg=none      guisp=none      gui=none
hi Error              guifg=#ffffff   guibg=#fe6e6e   guisp=none      gui=bold
hi ErrorMsg           guifg=#ffffff   guibg=#ce4e4e   guisp=none      gui=bold
hi Exception          guifg=#ff0b00   guibg=none      guisp=none      gui=none
hi Float              guifg=#eb2121   guibg=none      guisp=none      gui=none
hi FoldColumn         guifg=#8b8bcd   guibg=#2e2e2e   guisp=none      gui=none
hi Folded             guifg=#cfcfcd   guibg=#4b208f   guisp=none      gui=none
hi Function           guifg=#ee00ee   guibg=none      guisp=none      gui=none
hi GitGutterAdd       guifg=#009900   guibg=#2e2e2e   guisp=none      gui=bold
hi GitGutterChange    guifg=#bbbb00   guibg=#2e2e2e   guisp=none      gui=bold
hi GitGutterDelete    guifg=#ff2222   guibg=#2e2e2e   guisp=none      gui=bold
hi Identifier         guifg=#ff1d80   guibg=none      guisp=none      gui=none
hi Ignore             guifg=#000000   guibg=none      guisp=none      gui=none
hi IncSearch          guifg=#303030   guibg=#cd8b60   guisp=none      gui=none
hi Include            guifg=#409091   guibg=none      guisp=none      gui=none
hi Keyword            guifg=#00eeee   guibg=none      guisp=none      gui=none
hi Label              guifg=#8fff8b   guibg=none      guisp=none      gui=none
hi LineNr             guifg=#8b8bcd   guibg=#2e2e2e   guisp=#2e2e2e   gui=none
hi Macro              guifg=#4c7fdd   guibg=none      guisp=none      gui=none
hi MatchParen         guifg=#404040   guibg=#8fff8b   guisp=none      gui=bold
hi ModeMsg            guifg=#7e7eae   guibg=none      guisp=none      gui=none
hi MoreMsg            guifg=#7e7eae   guibg=none      guisp=none      gui=none
hi NonText            guifg=#8b8bcd   guibg=none      guisp=none      gui=none
hi Normal             guifg=#cfbfad   guibg=none      guisp=#1e1e27   gui=none
hi Number             guifg=#f0ad6d   guibg=none      guisp=none      gui=none
hi Operator           guifg=#4080a0   guibg=none      guisp=none      gui=none
hi Pmenu              guifg=#eeeeee   guibg=#4e4e8f   guisp=none      gui=none
hi PmenuSbar          guifg=#eeeeee   guibg=#6e6eaf   guisp=none      gui=none
hi PmenuSel           guifg=#eeeeee   guibg=#2e2e3f   guisp=none      gui=none
hi PmenuThumb         guifg=#eeeeee   guibg=#6e6eaf   guisp=none      gui=none
hi PreCondit          guifg=#409090   guibg=none      guisp=none      gui=none
hi PreProc            guifg=#60d080   guibg=none      guisp=none      gui=none
hi Question           guifg=#ffcd00   guibg=none      guisp=none      gui=none
hi Repeat             guifg=#ee8800   guibg=none      guisp=none      gui=none
hi Search             guifg=#303030   guibg=#cd8b60   guisp=none      gui=bold
hi SignColumn         guifg=#eeeeee   guibg=none      guisp=none      gui=bold
hi Special            guifg=#c080d0   guibg=none      guisp=none      gui=none
hi SpecialChar        guifg=#d080d0   guibg=none      guisp=none      gui=none
hi SpecialComment     guifg=#f080d0   guibg=none      guisp=none      gui=none
hi SpecialKey         guifg=#ab60ed   guibg=none      guisp=none      gui=none
hi SpellBad           guifg=#ff0000   guibg=none      guisp=#ff0000   gui=bold,undercurl
hi SpellCap           guifg=#ffa500   guibg=none      guisp=#ffa500   gui=bold,undercurl
hi SpellLocal         guifg=#9988ff   guibg=none      guisp=#9988ff   gui=bold,undercurl
hi SpellRare          guifg=#409090   guibg=none      guisp=#409090   gui=bold,undercurl
hi Statement          guifg=#4488ff   guibg=none      guisp=none      gui=none
hi StatusLine         guifg=#b9b9b9   guibg=#3e3e5e   guisp=none      gui=bold
hi StatusLineNC       guifg=#b9b9b9   guibg=#3e3e5e   guisp=none      gui=none
hi StorageClass       guifg=#aaaa00   guibg=none      guisp=none      gui=none
hi String             guifg=#ffbb11   guibg=none      guisp=none      gui=none
hi String             guifg=#ffbb11   guibg=none      guisp=none      gui=none
hi StringDelimiter    guifg=#ffcc11   guibg=none      guisp=none      gui=none
hi Structure          guifg=#aa88ff   guibg=none      guisp=none      gui=none
hi TabLine            guifg=none      guibg=none      guisp=none      gui=none
hi TabLineFill        guifg=none      guibg=none      guisp=none      gui=none
hi TabLineSel         guifg=none      guibg=none      guisp=none      gui=none
hi Tag                guifg=#c080d0   guibg=none      guisp=none      gui=none
hi Title              guifg=#ffffff   guibg=none      guisp=none      gui=bold
hi Todo               guifg=#d0a060   guibg=#303030   guisp=none      gui=bold
hi Type               guifg=#2baa2b   guibg=none      guisp=none      gui=none
hi Typedef            guifg=#ff8bff   guibg=none      guisp=none      gui=none
hi Underlined         guifg=#df9f2d   guibg=none      guisp=none      gui=none
hi Union              guifg=#ab2ace   guibg=none      guisp=none      gui=none
hi VertSplit          guifg=#2e2e2e   guibg=#2e2e2e   guisp=none      gui=none
hi Visual             guifg=#eeee88   guibg=#4e4e8f   guisp=none      gui=none
hi VisualNOS          guifg=#eeee88   guibg=#4e4e8f   guisp=none      gui=none
hi Warning            guifg=#ffffff   guibg=#ce8e4e   guisp=none      gui=bold
hi WarningMsg         guifg=#ffffff   guibg=#ce8e4e   guisp=none      gui=bold
hi WildMenu           guifg=#eeeeee   guibg=#6e6eaf   guisp=none      gui=none
fu! BcgMap()
    if g:Bcg==?'none'
        let g:Bcg='#1e1e27'
    else
        let g:Bcg='none'
    endif
    exe 'hi Normal guibg='.g:Bcg
endfu
nmap <M-!> :call BcgMap()<cr>
