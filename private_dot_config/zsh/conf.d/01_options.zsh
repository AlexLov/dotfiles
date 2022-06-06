setopt no_check_jobs	# Don't warn about running processes when exiting
## changing directory
setopt auto_cd			# if only directory path is entered, cd there.
## completion
setopt no_list_beep
setopt list_packed
## globbing
setopt mark_dirs
setopt no_match
setopt numeric_glob_sort		# Sort filenames numerically when it makes sense
setopt extended_glob			# Extended globbing. Allows using regular expressions with *
setopt no_case_glob			# Case insensitive globbing
## history
setopt append_history		# Immediately append history instead of overwriting
setopt inc_append_history	# save commands are added to the history immediately, otherwise only when shell exits.
setopt extended_history 
setopt no_hist_beep 
setopt hist_fcntl_lock
setopt hist_ignore_all_dups	# If a new command is a duplicate, remove the older one
setopt hist_ignore_space	# Don't save commands that start with space
setopt hist_lex_words
setopt hist_no_functions
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt share_history
## input/output
setopt correct
setopt rc_expan_dparam		# Array expension with parameters
setopt no_flow_control		# disable freezing terminal with Ctrl-S
setopt interactive_comments
setopt path_dirs
setopt rm_star_silent
## zle
setopt no_beep		# No beep
setopt vi
