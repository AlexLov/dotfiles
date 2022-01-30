local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.cmd [[highlight IndentBlanklineContextChar guifg=#C678DD gui=nocombine]]

indent_blankline.setup {
	enabled	= true,
	space_char_blankline = " ",
	show_end_of_line = true,
	show_current_context = true,
	show_current_context_start = true,
	strict_tabs = true,
	filetype_exclude = {
		"lspinfo",
		"packer",
		"checkhealth",
		"help",
		"man",
		"",
	},
	buftype_exclude = {'terminal'},
}
