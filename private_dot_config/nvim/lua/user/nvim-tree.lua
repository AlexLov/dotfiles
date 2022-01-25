-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_window_picker_chars = "TSRANEIOGMPLDHFUCVWYXKZQ1234567890"
vim.g.nvim_tree_window_picker_exclude = {
	filetype = {
		"help",
		"qf",
		"man",
	}
}
vim.g.nvim_tree_special_files = {
	["Cargo.toml"] = true,
	Makefile = true,
	["README.md"] = true,
	["readme.md"] = true,
}

vim.g.nvim_tree_icons = {
	default = "",
	symlink = "",
	git = {
		unstaged = "",
		staged = "S",
		unmerged = "",
		renamed = "➜",
		deleted = "",
		untracked = "U",
		ignored = "◌",
	},
	folder = {
		default = "",
		open = "",
		empty = "",
		empty_open = "",
		symlink = "",
	},
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
	return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = true,
	ignore_ft_on_setup = {
		"startify",
		"dashboard",
		"alpha",
	},
	auto_close = true,
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = true,
	update_to_buf_dir = {
		enable = true,
		auto_open = true,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {'help'},
	},
	system_open = {
		cmd = nil,
		args = {},
	},
	filters = {
		dotfiles = false,
		custom = {},
		exclude = {},  -- always show
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 400,
	},
	view = {
		width = 25,
		height = 30,
		hide_root_folder = false,
		side = "left",
		auto_resize = true,
		number = false,
		relativenumber = false,
		signcolumn = "auto",
		mappings = {
			custom_only = false,
			list = {
				{ key = { "l", "<CR>", "o" }, action = "edit" },
				{ key = "h", action = "close_node" },
				{ key = "v", action = "vsplit" },
			},
		--local default_mappings = {
		--	{ key = {"<CR>", "o", "<2-LeftMouse>"},	action = "edit" },
		--	{ key = {"O"},													action = "edit_no_picker" },
		--	{ key = {"<2-RightMouse>", "<C-]>"},		action = "cd" },
		--	{ key = "<C-v>",												action = "vsplit" },
		--	{ key = "<C-x>",												action = "split" },
		--	{ key = "<C-t>",												action = "tabnew" },
		--	{ key = "<",														action = "prev_sibling" },
		--	{ key = ">",														action = "next_sibling" },
		--	{ key = "P",														action = "parent_node" },
		--	{ key = "<BS>",													action = "close_node" },
		--	{ key = "<Tab>",												action = "preview" },
		--	{ key = "K",														action = "first_sibling" },
		--	{ key = "J",														action = "last_sibling" },
		--	{ key = "I",														action = "toggle_ignored" },
		--	{ key = "H",														action = "toggle_dotfiles" },
		--	{ key = "R",														action = "refresh" },
		--	{ key = "a",														action = "create" },
		--	{ key = "d",														action = "remove" },
		--	{ key = "D",														action = "trash" },
		--	{ key = "r",														action = "rename" },
		--	{ key = "<C-r>",												action = "full_rename" },
		--	{ key = "x",														action = "cut" },
		--	{ key = "c",														action = "copy" },
		--	{ key = "p",														action = "paste" },
		--	{ key = "y",														action = "copy_name" },
		--	{ key = "Y",														action = "copy_path" },
		--	{ key = "gy",														action = "copy_absolute_path" },
		--	{ key = "[c",														action = "prev_git_item" },
		--	{ key = "]c",														action = "next_git_item" },
		--	{ key = "-",														action = "dir_up" },
		--	{ key = "s",														action = "system_open" },
		--	{ key = "q",														action = "close" },
		--	{ key = "g?",														action = "toggle_help" },
		--},
		},
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	quit_on_open = 0,
	git_hl = 1,
	disable_window_picker = 0,
	root_folder_modifier = ":t",
	show_icons = {
		git = 1,
		folders = 1,
		files = 1,
		folder_arrows = 1,
		tree_width = 30,
	},
}
