(import-macros {: set!} :hibiscus.vim)
(local {: setup} (require :nvim-treesitter.configs))

(tset (require :nvim-treesitter.install) :prefer_git true)
(setup {:ensure_installed "all"
				:auto_install true
				:ignore_install ["phpdoc"]
				:highlight {:enable true}
				:indent {:enable true}
				:incremental_selection {
					:enable true
					:keymaps {
						:init_selection "gnn"
						:node_incremental "grn"
						:scope_incremental "grc"
						:node_decremental "grm"}}})
