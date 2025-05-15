#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='vim'
alias g='git status'
PS1='[\u@\h \W]\$ '

xmodmap $HOME/my_dot_files/xmodmap

eval `dircolors ~/.dir_colors`

export PATH="$HOME/my_dot_files/tools:$PATH"

disassemble() {
  gdb --batch --eval-command="disassemble $1" --args ./vmlinux > ./$1.dump
}
