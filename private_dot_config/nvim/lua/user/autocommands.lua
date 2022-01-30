vim.cmd [[
	augroup _general_settings
		autocmd!
		autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
		autocmd BufWinEnter * :set formatoptions-=r
	augroup end

	augroup _help
		autocmd!
		autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
		autocmd FileType qf,help,man,lspinfo set colorcolumn=""
		autocmd FileType qf set nobuflisted
	augroup end

	augroup _git
		autocmd!
		autocmd FileType gitcommit setlocal wrap
		autocmd FileType gitcommit setlocal spell
	augroup end

	augroup _markdown
		autocmd!
		autocmd FileType markdown setlocal wrap
		autocmd FileType markdown setlocal spell
		autocmd FileType markdown setlocal expandtab
	augroup end

	augroup _auto_resize
		autocmd!
		autocmd VimResized * tabdo wincmd =
	augroup end

	augroup _yaml
		autocmd!
		autocmd BufNewFile,BufRead *.yaml.template set filetype=yaml
		autocmd FileType yaml setlocal expandtab
	augroup end

	augroup _groovy
		autocmd!
		autocmd FileType groovy setlocal expandtab
	augroup end

	augroup _python
		autocmd!
		autocmd FileType python setlocal expandtab
	augroup end

	" Apply changes in config stored in chezmoi on save
	autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"

	autocmd FileType NvimTree autocmd BufWinEnter,BufLeave <buffer> NvimTreeRefresh
]]

-- augroup _alpha
--	 autocmd!
--	 autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
-- augroup end

-- Autoformat
-- augroup _lsp
--	 autocmd!
--	 autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
