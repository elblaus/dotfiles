# ALL HAIL THE NEW VIM
alias vim="nvim"
export VISUAL=nvim
export EDITOR=nvim

# NOTES
alias note="~/Dropbox/linux/shell-scripts/note.sh"
notes() {
    nvim $(find ~/Dropbox/txt/notebook/*.md | fzf --preview="cat {}")
}

# GIT
alias st="git status"
alias cm="git commit -m"
alias cam="git commit -am"

# PS AUX
alias pg="ps aux | grep"

# UPDATE
alias up="sudo apt update && sudo apt upgrade -y"
