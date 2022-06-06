if [ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
		# Use history substring search
		source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
		# bind UP and DOWN arrow keys to history substring search
		zmodload zsh/terminfo
		bindkey "$terminfo[kcuu1]" history-substring-search-up
		bindkey "$terminfo[kcud1]" history-substring-search-down
		bindkey '^[[A' history-substring-search-up
		bindkey '^[[B' history-substring-search-down
fi


