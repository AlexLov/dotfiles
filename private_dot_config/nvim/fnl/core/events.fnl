(import-macros {: augroup!} :hibiscus.vim)

;; Auto-apply changes to files managed by chezmoi
(augroup! :chezmoi-apply
	[[:BufWritePost :FileWritePost] "~/.local/share/chezmoi/*" "! chezmoi apply --source-path '%'"])
	;[[:BufWritePost] (.. (vim.fn.expand "~/.local/share/chezmoi/") "*") "! chezmoi apply --source-path <afile>"])

;; Auto-apply changes to files managed by chezmoi
;(augroup! :packer-compile
;	[[BufWritePost] plugins.lua source <afile> | PackerCompile])
