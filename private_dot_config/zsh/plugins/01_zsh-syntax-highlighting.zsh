if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] ; then # Arch/Manjaro
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh ] ; then # Gentoo
	source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
fi
