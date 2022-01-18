vim.cmd [[
try
	" The configuration options should be placed before `colorscheme sonokai`.
	" Available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
	let g:sonokai_style = 'default'
	let g:sonokai_enable_italic = 1
	let g:sonokai_diagnostic_text_highlight = 1
	let g:sonokai_diagnostic_line_highlight = 1
	let g:sonokai_transparent_background = 1
	let g:sonokai_menu_selection_background = 'green'
	let g:sonokai_better_performance = 1

	colorscheme sonokai
catch /^Vim\%((\a\+)\)\=:E185/
	colorscheme default
	set background=dark
endtry
]]
