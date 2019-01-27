set termguicolors
set background=dark
let g:colors_name = "inkpotim_neovim"

"Search
hi Search       guifg=#303030    guibg=#cd8b60   guisp=#cd8b60  gui=bold
hi IncSearch    guifg=#303030    guibg=#cd8b60   guisp=#cd8b6   gui=bold

"Msg
hi ErrorMsg     guifg=#ffffff    guibg=#ce4e4e   guisp=#ce4e4e  gui=bold
hi ModeMsg      guifg=#7e7eae    guibg=NONE      guisp=NONE     gui=NONE
hi MoreMsg      guifg=#7e7eae    guibg=NONE      guisp=NONE     gui=NONE
hi WarningMsg   guifg=#ffffff    guibg=#ce8e4e   guisp=#ce8e4e  gui=bold

"Cursor
hi Cursor       guifg=#404040   guibg=#8b8bff    guisp=#8b8bff gui=NONE
hi CursorColumn guifg=NONE      guibg=#191970    guisp=NONE    gui=NONE
hi CursorLine   guifg=NONE      guibg=#191970    guisp=NONE    gui=NONE

"Coding
hi Conditional     guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Debug           guifg=#c080d0     guibg=NONE      guisp=NONE      gui=NONE
hi Define          guifg=#409090     guibg=NONE      guisp=NONE      gui=NONE
hi DefinedName     guifg=#b878e3     guibg=NONE      guisp=NONE      gui=NONE
hi Delimiter       guifg=#c080d0     guibg=NONE      guisp=NONE      gui=NONE
hi Directory       guifg=#00ff8b     guibg=NONE      guisp=NONE      gui=NONE
hi EnumerationName guifg=#9ccfe8     guibg=NONE      guisp=NONE      gui=NONE
hi Exception       guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Function        guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Identifier      guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Include         guifg=#409090     guibg=NONE      guisp=NONE      gui=NONE
hi Keyword         guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Label           guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Macro           guifg=#409090     guibg=NONE      guisp=NONE      gui=NONE
hi Special         guifg=#c080d0     guibg=NONE      guisp=NONE      gui=NONE
hi SpecialComment  guifg=#c080d0     guibg=NONE      guisp=NONE      gui=NONE
hi Statement       guifg=#808bed     guibg=NONE      guisp=NONE      gui=NONE
hi StorageClass    guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Structure       guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Tag             guifg=#c080d0     guibg=NONE      guisp=NONE      gui=NONE
hi Todo            guifg=#303030     guibg=#d0a060   guisp=#d0a060   gui=NONE
hi Typedef         guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE
hi Union           guifg=#ff8bff     guibg=NONE      guisp=NONE      gui=NONE

"Error
hi Error           guifg=#ffffff     guibg=#ce4e4e   guisp=#6e2e2e   gui=NONE
hi Warning         guifg=#ffffff     guibg=#ce8e4e   guisp=#6e2e2e   gui=NONE

"Types
hi Boolean           guifg=#808bed   guibg=NONE      guisp=NONE      gui=NONE
hi Character         guifg=#ffcd8b   guibg=NONE      guisp=NONE      gui=NONE
hi Comment           guifg=#cd8b00   guibg=NONE      guisp=NONE      gui=NONE
hi Constant          guifg=#aa8c11   guibg=NONE      guisp=NONE      gui=NONE
hi EnumerationValue  guifg=#6c7fcc   guibg=NONE      guisp=NONE      gui=NONE
hi Float             guifg=#eb2121   guibg=NONE      guisp=NONE      gui=NONE
hi Number            guifg=#f0ad6d   guibg=NONE      guisp=NONE      gui=NONE
hi Operator          guifg=#ff4eff   guibg=NONE      guisp=NONE      gui=NONE
hi SpecialChar       guifg=#c080d0   guibg=#404040   guisp=#404040   gui=NONE
hi String            guifg=#ffcd8b   guibg=#404040   guisp=#404040   gui=NONE
hi Type              guifg=#ff8bff   guibg=NONE      guisp=NONE      gui=NONE

"C
hi cformat           guifg=#a040d0    guibg=#404040   guisp=#404040      gui=NONE
hi cspecialcharacter guifg=#c080d0    guibg=#404040   guisp=#404040      gui=NONE
hi cursorim          guifg=#404040    guibg=#8b8bff   guisp=#8b8bff      gui=NONE

"Diff
hi DiffAdd      guifg=#ffffcd    guibg=#306d30   guisp=#306d30   gui=NONE
hi DiffChange   guifg=#ffffcd    guibg=#306b8f   guisp=#306b8f   gui=NONE
hi DiffDelete   guifg=#ffffcd    guibg=#6d3030   guisp=#6d3030   gui=NONE
hi DiffText     guifg=#ffffcd    guibg=#4a2a4a   guisp=#4a2a4a   gui=NONE

"Spell
"hi SpellRare    -- no settings --
hi SpellCap      guifg=#ffa500   guibg=NONE     guisp=#ffa500  gui=bold,undercurl
hi SpellLocal    guifg=#8888ff   guibg=NONE     guisp=#8888ff  gui=bold,undercurl
hi SpellBad      guifg=#ff0000   guibg=NONE     guisp=#ff0000  gui=bold,undercurl

"Doxygen
hi doxygenbrief                guifg=#fdab60    guibg=NONE     guisp=NONE    gui=NONE
hi doxygencomment              guifg=#ad7b20    guibg=NONE     guisp=NONE    gui=NONE
hi doxygenparam                guifg=#fdd090    guibg=NONE     guisp=NONE    gui=NONE
hi doxygenprev                 guifg=#fdd090    guibg=NONE     guisp=NONE    gui=NONE
hi doxygensmallspecial         guifg=#fdd090    guibg=NONE     guisp=NONE    gui=NONE
hi doxygenspecial              guifg=#fdd090    guibg=NONE     guisp=NONE    gui=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b    guibg=NONE     guisp=NONE    gui=NONE
hi doxygenspecialonelinedesc   guifg=#ad600b    guibg=NONE     guisp=NONE    gui=NONE

"NeoVim
hi FoldColumn       guifg=#8b8bcd    guibg=#2e2e2e   guisp=#2e2e2e      gui=NONE
hi Folded           guifg=#cfcfcd    guibg=#4b208f   guisp=#4b208f      gui=NONE
hi LineNr           guifg=#8b8bcd    guibg=#2e2e2e   guisp=#2e2e2e      gui=NONE
hi MatchParen       guifg=#404040    guibg=#8fff8b   guisp=#8fff8b      gui=bold
hi NonText          guifg=#8b8bcd    guibg=NONE      guisp=NONE         gui=NONE
hi Normal           guifg=#cfbfad    guibg=#1e1e27   guisp=#1e1e27      gui=NONE
hi Conceal          guifg=#cfbfad    guibg=#1e1e27   guisp=#1e1e27      gui=NONE
hi PreCondit        guifg=#409090    guibg=NONE      guisp=NONE         gui=NONE
hi PreProc          guifg=#409090    guibg=NONE      guisp=NONE         gui=NONE
hi Question         guifg=#ffcd00    guibg=NONE      guisp=NONE         gui=NONE
hi Repeat           guifg=#ff8bff    guibg=NONE      guisp=NONE         gui=NONE
hi SpecialKey       guifg=#ab60ed    guibg=NONE      guisp=NONE         gui=NONE
hi StatusLine       guifg=#b9b9b9    guibg=#3e3e5e   guisp=#3e3e5e      gui=NONE
hi StatusLineNC     guifg=#b9b9b9    guibg=#3e3e5e   guisp=#3e3e5e      gui=NONE
hi Title            guifg=#af4f4b    guibg=NONE      guisp=NONE         gui=NONE
hi Underlined       guifg=#df9f2d    guibg=NONE      guisp=NONE         gui=NONE
hi VertSplit        guifg=#b9b9b9    guibg=#3e3e5e   guisp=#3e3e5e      gui=NONE
hi Visual           guifg=#eeeeee    guibg=#4e4e8f   guisp=#4e4e8f      gui=NONE
hi WildMenu         guifg=#eeeeee    guibg=#6e6eaf   guisp=#6e6eaf      gui=NONE
hi lcursor          guifg=#404040    guibg=#8fff8b   guisp=#8fff8b      gui=NONE
hi taglisttagname   guifg=#808bed    guibg=NONE      guisp=NONE         gui=NONE

"User
hi user1     guifg=#00ff8b   guibg=#3e3e5e   guisp=#3e3e5e   gui=NONE
hi user2     guifg=#7070a0   guibg=#3e3e5e   guisp=#3e3e5e   gui=NONE

"DontUsePERL
hi perlspecialmatch     guifg=#c080d0    guibg=#404040   guisp=#404040   gui=NONE
hi perlspecialstring    guifg=#c080d0    guibg=#404040   guisp=#404040   gui=NONE

"PMenu
hi PMenu         guifg=#eeeeee   guibg=#4e4e8f   guisp=#4e4e8f   gui=NONE
hi PMenuSbar     guifg=#eeeeee   guibg=#6e6eaf   guisp=#6e6eaf   gui=NONE
hi PMenuSel      guifg=#eeeeee   guibg=#2e2e3f   guisp=#2e2e3f   gui=NONE
hi PMenuThumb    guifg=#eeeeee   guibg=#6e6eaf   guisp=#6e6eaf   gui=NONE

"MBE
hi mbechanged           guifg=#eeeeee    guibg=#2e2e3f   guisp=#2e2e3f   gui=NONE
hi mbenormal            guifg=#cfbfad    guibg=#2e2e3f   guisp=#2e2e3f   gui=NONE
hi mbevisiblechanged    guifg=#eeeeee    guibg=#4e4e8f   guisp=#4e4e8f   gui=NONE
hi mbevisiblenormal     guifg=#cfcfcd    guibg=#4e4e8f   guisp=#4e4e8f   gui=NONE

"Tab
"hi TabLineSel  -- no settings --
"hi TabLineFill -- no settings --
"hi TabLine     -- no settings --

"Undifined
"hi SignColumn          -- no settings --
"hi CTagsMember         -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore              -- no settings --
"hi CTagsImport         -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi VisualNOS           -- no settings --
"hi LocalVariable       -- no settings --
"hi CTagsClass          -- no settings --
