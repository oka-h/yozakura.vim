" ------------------------------------------------------------------------------
" yozakura.vim
" ------------------------------------------------------------------------------

scriptencoding utf-8

highlight clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'yozakura'
set background=dark


" Color palette for cterm.
let s:black_cterm     = '0 '
let s:red_cterm       = '173 '
let s:green_cterm     = '106 '
let s:yellow_cterm    = '226 '
let s:blue_cterm      = '75 '
let s:magenta_cterm   = '218 '
let s:cyan_cterm      = '86 '
let s:lightgray_cterm = '242 '
let s:darkgray_cterm  = '238 '
let s:white_cterm     = '254 '

" Color paletter for GUI.
let s:black_gui       = '#000000 '
let s:red_gui         = '#D7875F '
let s:green_gui       = '#87AF00 '
let s:yellow_gui      = '#FFFF00 '
let s:blue_gui        = '#5FAFFF '
let s:magenta_gui     = '#FFAFD7 '
let s:cyan_gui        = '#5FFFD7 '
let s:lightgray_gui   = '#6C6C6C '
let s:darkgray_gui    = '#444444 '
let s:white_gui       = '#E4E4E4 '

" Blue only for background of status line.
let s:status_cterm    = '27 '
let s:status_gui      = '#005FFF '


" Color of foreground.
let s:black_fg     = 'ctermfg=' . s:black_cterm     . 'guifg=' . s:black_gui
let s:red_fg       = 'ctermfg=' . s:red_cterm       . 'guifg=' . s:red_gui
let s:green_fg     = 'ctermfg=' . s:green_cterm     . 'guifg=' . s:green_gui
let s:yellow_fg    = 'ctermfg=' . s:yellow_cterm    . 'guifg=' . s:yellow_gui
let s:blue_fg      = 'ctermfg=' . s:blue_cterm      . 'guifg=' . s:blue_gui
let s:magenta_fg   = 'ctermfg=' . s:magenta_cterm   . 'guifg=' . s:magenta_gui
let s:cyan_fg      = 'ctermfg=' . s:cyan_cterm      . 'guifg=' . s:cyan_gui
let s:lightgray_fg = 'ctermfg=' . s:lightgray_cterm . 'guifg=' . s:lightgray_gui
let s:darkgray_fg  = 'ctermfg=' . s:darkgray_cterm  . 'guifg=' . s:darkgray_gui
let s:white_fg     = 'ctermfg=' . s:white_cterm     . 'guifg=' . s:white_gui
let s:none_fg      = 'ctermfg=NONE '                . 'guifg=NONE '

" Color of background.
let s:black_bg     = 'ctermbg=' . s:black_cterm     . 'guibg=' . s:black_gui
let s:red_bg       = 'ctermbg=' . s:red_cterm       . 'guibg=' . s:red_gui
let s:green_bg     = 'ctermbg=' . s:green_cterm     . 'guibg=' . s:green_gui
let s:yellow_bg    = 'ctermbg=' . s:yellow_cterm    . 'guibg=' . s:yellow_gui
let s:blue_bg      = 'ctermbg=' . s:blue_cterm      . 'guibg=' . s:blue_gui
let s:magenta_bg   = 'ctermbg=' . s:magenta_cterm   . 'guibg=' . s:magenta_gui
let s:cyan_bg      = 'ctermbg=' . s:cyan_cterm      . 'guibg=' . s:cyan_gui
let s:lightgray_bg = 'ctermbg=' . s:lightgray_cterm . 'guibg=' . s:lightgray_gui
let s:darkgray_bg  = 'ctermbg=' . s:darkgray_cterm  . 'guibg=' . s:darkgray_gui
let s:white_bg     = 'ctermbg=' . s:white_cterm     . 'guibg=' . s:white_gui
let s:status_bg    = 'ctermbg=' . s:status_cterm    . 'guibg=' . s:status_gui
let s:none_bg      = 'ctermbg=NONE '                . 'guibg=NONE '

" Color of undercurl for GUI.
let s:none_sp = 'guisp=NONE '

" Other settings.
let s:bold      = 'cterm=bold      gui=bold '
let s:underline = 'cterm=underline gui=underline '
let s:none      = 'cterm=NONE      gui=NONE '


" Syntax highlight.
execute 'highlight Comment '      . s:lightgray_fg
execute 'highlight Constant '     . s:magenta_fg
execute 'highlight Identifier '   . s:cyan_fg                       . s:bold
execute 'highlight Function '     . s:blue_fg
execute 'highlight Statement '    . s:blue_fg                       . s:bold
execute 'highlight Operator '     . s:white_fg                      . s:bold
execute 'highlight PreProc '      . s:green_fg
execute 'highlight Type '         . s:cyan_fg                       . s:none
execute 'highlight Special '      . s:red_fg
execute 'highlight Delimiter '    . s:white_fg
execute 'highlight Underlined '   . s:magenta_fg                    . s:underline
execute 'highlight Ignore '       . s:black_fg
execute 'highlight Error '        . s:yellow_fg    . s:none_bg      . s:bold
execute 'highlight Todo '         . s:black_fg     . s:yellow_bg    . s:bold

" Other highlight groups.
execute 'highlight ColorColumn '                   . s:darkgray_bg
execute 'highlight Conceal '      . s:blue_fg      . s:bold
execute 'highlight Cursor '       . s:black_fg     . s:white_bg
execute 'highlight CursorColumn '                  . s:darkgray_bg
execute 'highlight CursorLine '                    . s:darkgray_bg  . s:none
execute 'highlight Directory '    . s:magenta_fg
execute 'highlight DiffAdd '      . s:white_fg     . s:blue_bg      . s:bold
execute 'highlight DiffChange '   . s:black_fg     . s:magenta_bg   . s:bold
execute 'highlight DiffDelete '   . s:white_fg     . s:red_bg       . s:bold
execute 'highlight DiffText '     . s:black_fg     . s:yellow_bg    . s:bold
execute 'highlight EndOfBuffer '  . s:lightgray_fg
execute 'highlight ErrorMsg '     . s:black_fg     . s:yellow_bg    . s:bold
execute 'highlight VertSplit '    . s:black_fg     . s:lightgray_bg . s:none
execute 'highlight Folded '       . s:cyan_fg      . s:lightgray_bg
execute 'highlight FoldColumn '   . s:white_fg     . s:none_bg
execute 'highlight SignColumn '   . s:yellow_fg    . s:none_bg
execute 'highlight IncSearch '    . s:black_fg     . s:yellow_bg    . s:bold
execute 'highlight LineNr '       . s:lightgray_fg
execute 'highlight CursorLineNr ' . s:lightgray_fg                  . s:none
execute 'highlight MatchParen '   . s:black_fg     . s:yellow_bg
execute 'highlight ModeMsg '      . s:white_fg                      . s:bold
execute 'highlight MoreMsg '      . s:cyan_fg                       . s:none
execute 'highlight NonText '      . s:lightgray_fg                  . s:none
execute 'highlight Normal '       . s:white_fg     . s:black_bg
execute 'highlight Pmenu '        . s:black_fg     . s:lightgray_bg
execute 'highlight PmenuSel '     . s:black_fg     . s:yellow_bg
execute 'highlight PmenuSbar '                     . s:white_bg
execute 'highlight PmenuThumb '                    . s:darkgray_bg
execute 'highlight Question '     . s:cyan_fg                       . s:bold
execute 'highlight Search '       . s:black_fg     . s:yellow_bg    . s:bold
execute 'highlight SpecialKey '   . s:magenta_fg
execute 'highlight SpellBad '     . s:black_fg     . s:yellow_bg    . s:bold . s:none_sp
execute 'highlight StatusLine '   . s:white_fg     . s:status_bg    . s:bold
execute 'highlight StatusLineNC ' . s:blue_fg      . s:darkgray_bg  . s:bold
execute 'highlight TabLine '      . s:white_fg     . s:darkgray_bg  . s:none
execute 'highlight TabLineFill '                   . s:white_bg     . s:none
execute 'highlight TabLineSel '   . s:white_fg     . s:black_bg     . s:bold
execute 'highlight Title '        . s:blue_fg                       . s:bold
execute 'highlight Visual '       . s:white_fg     . s:lightgray_bg . s:bold
execute 'highlight WarningMsg '   . s:yellow_fg                     . s:bold
execute 'highlight WildMenu '     . s:black_fg     . s:yellow_bg    . s:bold

if !has('gui_running') && &t_Co < 256 
    execute 'highlight ColorColumn '  . s:white_fg
    execute 'highlight CursorColumn ' . s:white_fg
    execute 'highlight CursorLine '   . s:none_bg . s:underline
    execute 'highlight CursorLineNr ' . s:none_bg . s:underline
endif

highlight link SpellCap   SpellBad
highlight link SpellLocal SpellBad
highlight link SpellRare  SpellBad
highlight link VisualNOS  Visual

