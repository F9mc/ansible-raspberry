shopt -s checkwinsize

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[92;1m\]\w\[\e[0m\]${C_MAGENTA3}\$(parse_git_branch)${NO_FORMAT} $ "