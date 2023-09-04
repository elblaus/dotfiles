# WEB SERVER
alias serve="python3 -m http.server 8000"

# QUICK JUMP TO TEXT FILES
alias todo="vim ~/Dropbox/txt/todo.md"
alias books="vim ~/Dropbox/txt/reading.txt"
alias food="vim ~/Dropbox/txt/food-suggestions.txt"
alias linux="vim ~/Dropbox/linux/linux.txt"

# NOTES
alias note="~/Dropbox/linux/shell-scripts/note.sh"
notes() {
    nvim $(find ~/Dropbox/txt/notebook/*.md | fzf --preview="cat {}")
}
