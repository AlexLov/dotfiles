(require-macros :hibiscus.packer)

(packer-setup {:autoremove true
							 :auto_reload_compiled true
							 :git {:clone_timeout 300}})

(packer
	;; core packages
	(use! :lewis6991/impatient.nvim)
	(use! :udayvir-singh/tangerine.nvim)
	; macroses
	(use! :udayvir-singh/hibiscus.nvim
				:requires ["udayvir-singh/tangerine.nvim"])
	(use! :datwaft/themis.nvim
				:requires ["udayvir-singh/tangerine.nvim"])

	;; testing
	(use! :tweekmonster/startuptime.vim
				:cmd :St)

	;; Colorscheme
	;(use! :Everblush/everblush.nvim
	;(use! :AlexLov/everblush.nvim
	;			:branch "transparent-background"
	;			:config #(require :color.everblush))

	(use! :catppuccin/nvim
				:as "catppuccin"
				:run ":CatppuccinCompile"
				:config #(require :color.catppuccin))

	;; Tree-sitter
	(use! :nvim-treesitter/nvim-treesitter
				:run ":TSUpdate"  ; post-install hook
				:config #(require :pack.treesitter))

	;; UI
	;(use! :kyazdani42/nvim-web-devicons)

)

;; vim: ts=2 noet
