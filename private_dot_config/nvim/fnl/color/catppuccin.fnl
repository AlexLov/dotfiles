;; vim: ts=2 noet
(import-macros {: color! : g!}	:hibiscus.vim)

(let [(ok? catppuccin_module) (pcall require "catppuccin")]
	(when ok?
		(g! catppuccin_flavour "mocha") ; latte, frappe, macchiato, mocha
		(catppuccin_module.setup {
			:transparent_background true
			:compile {:enable true}
			})
		(color! catppuccin)))
