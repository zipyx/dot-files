#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Git branch display
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt display
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Terminal Manager
# alias lf="lf-ueberzug"

# Taskwarrior
alias tt='taskwarrior-tui'
export TASKRC=$HOME/.window-manager/taskwarrior-taskrc/.taskrc

# Standard editor
export VISUAL=nvim
export EDITOR=nvim

# Zellij (for terminal multiplexing)
alias zlj='zellij'
# eval "$(zellij setup --generate-auto-start bash)"

# Starship (for terminal prompt changes)
eval "$(starship init bash)"

# Zoxide (for remembering directories)
eval "$(zoxide init bash)"

# bash replacements
alias cat='bat'
alias ls='lsd'
