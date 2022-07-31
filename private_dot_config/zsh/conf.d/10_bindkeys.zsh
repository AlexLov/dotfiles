# To see the key combo you want to use just do:
# cat > /dev/null
# And press it
#

bindkey -v   # Default to standard vi bindings, regardless of EDITOR string
#bindkey -e   # Default to standard emacs bindings, regardless of EDITOR string

# Unbind Esc in vi insert mode, so it won't switch to vi cmd mode
bindkey -r viins "\e"

# Switch to vi command mode
bindkey '^G' vi-cmd-mode				# [Ctrl-g]
bindkey '^]' vi-cmd-mode				# [Ctrl-]]

# Same as enter, needed in -s bindings
bindkey '^J' accept-line				# [Ctrl-j]

# modifying text
bindkey "^K" kill-whole-line			# [ctrl-k]
bindkey '^?' backward-delete-char		# [Backspace] - delete backward
bindkey '^H' backward-delete-char		# [backspace]
bindkey '^W' backward-kill-word			# [ctrl-w]
bindkey '^[[3;2~' delete-word			# [Shift-Delete] - forward delete word

bindkey "\e." insert-last-word			# [Esc-.] - insert last word from previous command

# Movement
bindkey "^[[1;5D" backward-word			# [Ctrl-left arrow]
bindkey "^[[1;5C" forward-word			# [Ctrl-right arrow]
bindkey "^A" beginning-of-line			# [Ctrl-a]
bindkey "^E" end-of-line				# [Ctrl-e]
bindkey "^Y" yank						# [Ctrl-y] - paste

# Incremental search in insert mode
bindkey "^F" history-incremental-search-forward
bindkey "^R" history-incremental-search-backward

# Incremental search in vi command mode
bindkey -M vicmd '?' vi-history-search-backward
bindkey -M vicmd '/' vi-history-search-forward

# Beginning search with arrow keys and j/k
bindkey "^[[A" up-line-or-search		# [Up arrow]
bindkey "^[[B" down-line-or-search		# [Down arrow]
bindkey -M vicmd "k" up-line-or-search
bindkey -M vicmd "j" down-line-or-search

# Beginning search in insert mode, redundant with the up/down arrows above
# but a little easier to press.
bindkey "^P" history-search-backward	# [Ctrl-p]
bindkey "^N" history-search-forward		# [Ctrl-n]

# Magic space
bindkey ' ' magic-space					# [Space] - do history expansion

# Some fast commands
bindkey -s "\el" 'ls -l\n'				# [Esc-l] - run command: ls -l
bindkey -s '\ef' 'fg\n'					# [Esc-j] - run command: fg
bindkey -s '\ed' 'date\n'				# [Esc-d] - run command: date
has f && bindkey -s '\en' 'f\n'							# [Esc-f] - run filemanager if alias 'f' exists
has git && bindkey -s '\eg' 'git status\n'	# [Esc-g] - run command: git status
has hg && bindkey -s '\eh' 'hg status\n'	# [Esc-h] - run command: hg status

# Try to utilize terminfo if available w/ fallback
if [[ "${terminfo[kdch1]}" != "" ]]; then
	bindkey "${terminfo[kdch1]}" delete-char	# [Delete] - delete forward
else
	bindkey "^[[3~" delete-char					# [Delete]
fi

if [[ "${terminfo[kcbt]}" != "" ]]; then
	bindkey "${terminfo[kcbt]}" reverse-menu-complete		# [Shift-Tab] - move through completion menu backwards
else
	bindkey "^[[Z" reverse-menu-complete					# [Shift-Tab]
fi

if [[ "${terminfo[khome]}" != "" ]]; then
	bindkey "${terminfo[khome]}" beginning-of-line			# [Home] - Go to beginning of line
else
	bindkey "^[[H" beginning-of-line						# [Home]
fi
if [[ "${terminfo[kend]}" != "" ]]; then
	bindkey "${terminfo[kend]}"  end-of-line				# [End] - Go to end of line
else
	bindkey "^[[F" end-of-line								# [End]
fi
