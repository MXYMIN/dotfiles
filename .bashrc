# Vi command-line editing
set -o vi
bind -m vi-insert "\C-l":clear-screen

PATH=$PATH:~/.local/bin

# Shortcuts
alias vi='vim'
alias vim='mvim -v'

# Tab completion
if [ -f $(brew --prefix)/etc/bash_completion  ]; then
		. $(brew --prefix)/etc/bash_completion
fi

# Environment variables
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#custom bash prompt
export PS1="\[\033[34m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[35m\]\W\[\033[m\]$ "

#git autocomplete
if [ -f ~/.git-completion.bash   ]; then
	  . ~/.git-completion.bash
fi

PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7/bin"
ANACONDAPATH="~/anaconda2/bin"
PATH="${PATH}:${HOME}/.local/bin:${PYTHONPATH}:${ANACONDAPATH}"
export PATH

