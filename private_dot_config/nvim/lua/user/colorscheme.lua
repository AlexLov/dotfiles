-- Configs for sonokai colorscheme
-- the configuration options should be placed before `colorscheme sonokai`.
-- available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
vim.g.sonokai_style = 'default'
vim.g.sonokai_cursor = 'purple'
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_current_word = 'grey background'
vim.g.sonokai_diagnostic_text_highlight = 1
vim.g.sonokai_diagnostic_line_highlight = 1
vim.g.sonokai_transparent_background = 1
vim.g.sonokai_menu_selection_background = 'green'
vim.g.sonokai_better_performance = 0 -- Custom colors cannot be used with this option enabled
vim.g.sonokai_spell_foreground = 'colored'

vim.cmd [[
" For details see :help sonokai-faq
function! s:sonokai_custom() abort
	let l:palette = sonokai#get_palette('default')
	call sonokai#highlight('NvimTreeOpenedFile', l:palette.green, l:palette.none, 'bold')
endfunction

augroup SonokaiCustom
	autocmd!
	autocmd ColorScheme sonokai call s:sonokai_custom()
augroup END

" Load sonokai colorscheme
colorscheme sonokai
]]

