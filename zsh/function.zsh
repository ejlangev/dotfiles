fancy-ctrl-z () {
	if [[ $#BUFFER -eq 0 ]]; then
		bg
		zle redisplay
	else
		zle push-input
	fi
}

zle -N fancy-ctrl-z
bindkey '' fancy-ctrl-z
