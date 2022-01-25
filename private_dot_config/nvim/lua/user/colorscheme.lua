-- Configs for sonokai colorscheme
-- the configuration options should be placed before `colorscheme sonokai`.
-- available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
vim.g.sonokai_style = 'default'
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_diagnostic_text_highlight = 1
vim.g.sonokai_diagnostic_line_highlight = 1
vim.g.sonokai_transparent_background = 1
vim.g.sonokai_menu_selection_background = 'green'
vim.g.sonokai_better_performance = 1
vim.g.sonokai_spell_foreground = 'colored'

-- Configs for doom colorscheme
vim.g.doom_contrast = true
vim.g.doom_borders = true
vim.g.doom_disable_background = true
vim.g.doom_cursorline_transparent = true
vim.g.doom_italic = true

-- Load sonokai colorscheme
--vim.cmd [[ colorscheme sonokai ]]

-- Load doom colorscheme
require('doom').set()
