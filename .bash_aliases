# Programs
alias vi="vim"

alias cls="clear"
alias rr="rm -rf"
alias shutdown="shutdown -h now"
alias restart="shutdown -r now"
alias suspend="systemctl suspend"

# Navigation
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
cdd() { cd "$@" && ls; }

