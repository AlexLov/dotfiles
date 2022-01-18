vim.cmd [[
	augroup _general_settings
		autocmd!
		autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
		autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
		autocmd BufWinEnter * :set formatoptions-=r
		autocmd BufWritePre * :%s/\s\+$//e		" autoremove trailing space
		autocmd FileType qf set nobuflisted
	augroup end

	augroup _trailing_spaces
		autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
		match ExtraWhitespace /\s\+$/
		autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
		" Show trailing whitepace and spaces before a tab:
		autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
		autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
		autocmd InsertLeave * match ExtraWhitespace /\s\+$/
		autocmd BufWinLeave * call clearmatches()
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
