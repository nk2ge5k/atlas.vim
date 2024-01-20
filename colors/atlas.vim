set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
if !exists("termguicolors")
  set termguicolors
endif
let g:colors_name="atlas"


let Italic = ""
if exists('g:atlas_italic')
  let Italic = "italic"
endif
let g:atlas_italic = get(g:, 'atlas_italic', 0)

let Bold = ""
if exists('g:atlas_bold')
  let Bold = "bold"
endif

let g:atlas_bold = get(g:, 'atlas_bold', 0)


" ==========================
" Color Variables
" ==========================
let s:Black     = {'gui': '#212121', 'cterm256': '235'}
let s:Black2    = {'gui': '#262626', 'cterm256': '235'}
let s:Black3    = {'gui': '#363636', 'cterm256': '230'}
let s:Gray      = {'gui': '#D0D0D0', 'cterm256': '215'}
let s:Gray1     = {'gui': '#323232', 'cterm256': '236'}
let s:Gray2     = {'gui': '#494949', 'cterm256': '239'}
let s:Gray3     = {'gui': '#6B6B6B', 'cterm256': '242'}
let s:Gray4     = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:Steel     = {'gui': '#D0D0D0', 'cterm256': '252'}
let s:Blue      = {'gui': '#699B9B', 'cterm256': '109'}
let s:Green     = {'gui': '#569F7A', 'cterm256': '72'}
let s:Gold      = {'gui': '#8E700B', 'cterm256': '136'}
let s:Yellow    = {'gui': '#FFC24B', 'cterm256': '203'}
let s:Red       = {'gui': '#821A1A', 'cterm256': '1'}
let s:Red2      = {'gui': '#FF0000', 'cterm256': '196'}
let s:none      = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Spell
call <sid>hi('SpellBad', s:Red2, s:none, 'underline')
call <sid>hi('SpellCap', s:Yellow, s:none, 'none')
call <sid>hi('SpellLocal', s:Red, s:none, 'none')

" Diff
call <sid>hi('DiffAdd', s:Green, s:none, 'none')
call <sid>hi('DiffChange', s:Gold, s:none, 'none')
call <sid>hi('DiffDelete', s:Red2, s:none, 'none')
call <sid>hi('DiffText', s:Steel, s:none, 'none')

" Fugitive
call <sid>hi('FugitiveblameHash', s:Gray, s:none, 'none')
call <sid>hi('FugitiveblameUncommitted', s:Gray, s:none, 'none')
call <sid>hi('FugitiveblameTime', s:Gray, s:none, 'none')
call <sid>hi('FugitiveblameNotCommittedYet', s:Gray, s:none, 'none')

call <sid>hi('diffAdded', s:Green, s:none, 'none')
call <sid>hi('diffChanged', s:Gold, s:none, 'none')
call <sid>hi('diffRemoved', s:Red2, s:none, 'none')
call <sid>hi('diffSubname', s:Steel, s:none, 'none')

call <sid>hi('gitcommitBranch', s:Gray, s:none, 'none')
call <sid>hi('gitcommitDiscardedType', s:Gray, s:none, 'none')
call <sid>hi('gitcommitSelectedType', s:Gray, s:none, 'none')
call <sid>hi('gitcommitHeader', s:Gray, s:none, 'none')
call <sid>hi('gitcommitUntrackedFile', s:Gray, s:none, 'none')
call <sid>hi('gitcommitDiscardedFile', s:Gray, s:none, 'none')
call <sid>hi('gitcommitSelectedFile', s:Gray, s:none, 'none')

" General
call <sid>hi('Normal', s:Gray, s:none, 'none')
call <sid>hi('Type', s:Gray, s:none, 'none')
call <sid>hi('Constant', s:Gray, s:none, 'none')
call <sid>hi('Function', s:Gray, s:none, 'bold')
call <sid>hi('Special', s:Gray, s:none, 'none')
call <sid>hi('String', s:Gray, s:none, 'none')
call <sid>hi('Character', s:Gray, s:none, 'none')
call <sid>hi('Boolean', s:Gray, s:none, 'none')
call <sid>hi('Number', s:Gray, s:none, 'none')
call <sid>hi('Float', s:Gray, s:none, 'none')
call <sid>hi('Identifier', s:Gray, s:none, 'none')
call <sid>hi('Statement', s:Gray, s:none, 'none')
call <sid>hi('Conditional', s:Gray, s:none, 'none')
call <sid>hi('Operator', s:Gray, s:none, 'none')
call <sid>hi('Exception', s:Gray, s:none, 'none')
call <sid>hi('MatchParen', s:Red2, s:none, 'none')
call <sid>hi('Comment', s:Gray4, s:none, 'none')
call <sid>hi('PreProc', s:Gray, s:none, 'none')
call <sid>hi('NonText', s:Gray3, s:none, 'none')
call <sid>hi('WinSeparator', s:none, s:none, 'none')

" Highlights
call <sid>hi('Error', s:Red2, s:none, 'none')
call <sid>hi('Todo', s:Yellow, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')

" Search
call <sid>hi('IncSearch', s:Black, s:Blue, 'none')
call <sid>hi('Search', s:Black, s:Blue, 'none')
call <sid>hi('Substitute', s:Yellow, s:none, 'none')

" Pmenu
call <sid>hi('PMenu', s:none, s:Black3, 'none')
call <sid>hi('PMenuSel', s:none, s:Gray2, 'none')

" Line/Column highlight
call <sid>hi('ColorColumn', s:none, s:Gray1, 'none')
call <sid>hi('CursorColumn', s:none, s:Gray1, 'none')
call <sid>hi('CursorLine', s:none, s:Gray1, 'none')
call <sid>hi('CursorLineNr', s:none, s:Gray1, 'none')
call <sid>hi('LineNr', s:Gray3, s:none, 'none')

" Separators
call <sid>hi('VertSplit', s:none, s:Gray2, 'none')
call <sid>hi('StatusLine', s:none, s:Gray2, 'none')
call <sid>hi('StatusLineNC', s:Gray4, s:Gray2, 'none')

" Visual
call <sid>hi('Visual', s:none, s:Gray2, 'none')
call <sid>hi('VisualNOS', s:none, s:Gray2, 'none')

" Tabline
call <sid>hi('TabLine', s:none, s:Gray2, 'none')
call <sid>hi('TabLineFill', s:none, s:Gray1, 'none')
call <sid>hi('TabLineSel', s:Gray, s:none, 'none')

call <sid>hi('Title', s:Gray, s:none, 'none')
call <sid>hi('Directory', s:Blue, s:none, 'none')

" YAML
call <sid>hi('yamlFlowString', s:Red, s:none, 'none')
call <sid>hi('yamlFlowStringDelimiter', s:Red, s:none, 'none')
call <sid>hi('yamlKeyValueDelimiter ', s:Red, s:none, 'none')

hi ErrorMsg guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi Folded guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi SignColumn guifg=#999999 ctermfg=246 guibg=#212121 ctermbg=235 gui=NONE cterm=NONE
hi Question guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#adadad ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#212121 ctermfg=235 guibg=#c0c0c0 ctermbg=185 gui=Bold cterm=Bold

hi helpHyperTextEntry guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpNote guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi javaScriptOperator guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBraces guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptNull guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi jsonEscape guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#c0c0c0 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#c0c0c0 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi markdownH1 guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingRule guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingDelimiter guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownListMarker guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkTextDelimiter guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#c0c0c0 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownAutomaticLink guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle guifg=#c0c0c0 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=#c0c0c0 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#c0c0c0 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownEscape guifg=#c1c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownError guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi plug2 guifg=#c0c0c0 ctermfg=186 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugH2 guifg=#c0c0c0 ctermfg=81 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi plugBracket guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNumber guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDash guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugStar guifg=#c0c0c0 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugMessage guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugName guifg=#c0c0c0 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugUpdate guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugEdge guifg=#c0c0c0 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugSha guifg=#c0c0c0 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNotLoaded guifg=#c0c0c0 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi vimCommentString guifg=#c0c0c0 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#c0c0c0 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimError guifg=#c0c0c0 ctermfg=255 guibg=#c0c0c0 ctermbg=203 gui=NONE cterm=NONE

hi xmlNamespace guifg=#c0c0c0 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttribPunct guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=#c0c0c0 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

