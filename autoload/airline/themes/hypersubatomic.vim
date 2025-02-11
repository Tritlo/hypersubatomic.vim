let g:airline#themes#hypersubatomic#palette = {}

function! airline#themes#hypersubatomic#refresh()
  let g:airline#themes#hypersubatomic#palette.accents = {
    \ 'red': [g:hypersubatomic_colorscheme_map.red.gui,
      \ g:hypersubatomic_colorscheme_map.bg.gui,
      \ g:hypersubatomic_colorscheme_map.red.cterm,
      \ g:hypersubatomic_colorscheme_map.black.cterm],
    \ }

  let s:N1 = [g:hypersubatomic_colorscheme_map.line_highlight.gui,
    \ g:hypersubatomic_colorscheme_map.cyan.gui,
    \ g:hypersubatomic_colorscheme_map.black.cterm,
    \ g:hypersubatomic_colorscheme_map.cyan.cterm, 'bold']
  let s:N2 = [g:hypersubatomic_colorscheme_map.fg.gui,
    \ g:hypersubatomic_colorscheme_map.selection.gui,
    \ g:hypersubatomic_colorscheme_map.fg.cterm,
    \ g:hypersubatomic_colorscheme_map.selection.cterm, '']
  let s:N3 = [g:hypersubatomic_colorscheme_map.fg.gui,
    \ g:hypersubatomic_colorscheme_map.line_numbers.gui,
    \ g:hypersubatomic_colorscheme_map.fg.cterm,
    \ g:hypersubatomic_colorscheme_map.selection.cterm, '']
  let g:airline#themes#hypersubatomic#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = [g:hypersubatomic_colorscheme_map.yellow.gui,
    \ g:hypersubatomic_colorscheme_map.bg.gui,
    \ g:hypersubatomic_colorscheme_map.yellow.cterm,
    \ g:hypersubatomic_colorscheme_map.black.cterm, '']
  let g:airline#themes#hypersubatomic#palette.normal_modified = {
    \ 'airline_c': [ group[0], '', group[2], '', '' ]
    \ }

  let s:I1 = [g:hypersubatomic_colorscheme_map.line_highlight.gui,
    \ g:hypersubatomic_colorscheme_map.violet.gui,
    \ g:hypersubatomic_colorscheme_map.line_highlight.cterm,
    \ g:hypersubatomic_colorscheme_map.violet.cterm, '']
  let g:airline#themes#hypersubatomic#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
  let g:airline#themes#hypersubatomic#palette.insert_modified = g:airline#themes#hypersubatomic#palette.normal_modified

  let s:R1 = [g:hypersubatomic_colorscheme_map.line_highlight.gui,
    \ g:hypersubatomic_colorscheme_map.green.gui,
    \ g:hypersubatomic_colorscheme_map.line_highlight.cterm,
    \ g:hypersubatomic_colorscheme_map.green.cterm, 'bold']
  let g:airline#themes#hypersubatomic#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
  let g:airline#themes#hypersubatomic#palette.replace_modified = g:airline#themes#hypersubatomic#palette.normal_modified

  let s:V1 = [g:hypersubatomic_colorscheme_map.line_highlight.gui,
    \ g:hypersubatomic_colorscheme_map.blue.gui,
    \ g:hypersubatomic_colorscheme_map.line_highlight.cterm,
    \ g:hypersubatomic_colorscheme_map.blue.cterm, 'bold']
  let g:airline#themes#hypersubatomic#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
  let g:airline#themes#hypersubatomic#palette.visual_modified = g:airline#themes#hypersubatomic#palette.normal_modified

  let s:IA = [g:hypersubatomic_colorscheme_map.comments.gui,
    \ g:hypersubatomic_colorscheme_map.line_highlight.gui,
    \ g:hypersubatomic_colorscheme_map.comments.cterm,
    \ g:hypersubatomic_colorscheme_map.line_highlight.cterm, 'bold']
  let g:airline#themes#hypersubatomic#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#hypersubatomic#palette.inactive_modified = g:airline#themes#hypersubatomic#palette.normal_modified

  if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#hypersubatomic#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [g:hypersubatomic_colorscheme_map.fg.gui,
        \ g:hypersubatomic_colorscheme_map.line_highlight.gui,
        \ g:hypersubatomic_colorscheme_map.fg.cterm,
        \ g:hypersubatomic_colorscheme_map.line_highlight.cterm,
        \ ''],
      \ [g:hypersubatomic_colorscheme_map.cyan.gui,
        \ g:hypersubatomic_colorscheme_map.bg.gui,
        \ g:hypersubatomic_colorscheme_map.cyan.cterm,
        \ g:hypersubatomic_colorscheme_map.black.cterm,
        \ ''],
      \ [g:hypersubatomic_colorscheme_map.bg.gui,
        \ g:hypersubatomic_colorscheme_map.cyan.gui,
        \ g:hypersubatomic_colorscheme_map.black.cterm,
        \ g:hypersubatomic_colorscheme_map.cyan.cterm, 'bold'])
  endif
endfun

call airline#themes#hypersubatomic#refresh()
