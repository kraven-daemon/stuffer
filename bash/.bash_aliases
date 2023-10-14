# depends: exa,ripgrep,bat,youtube-dl,stow

alias rbook="rustup docs --book"

# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     alias dir='dir --color=auto'
#     alias vdir='vdir --color=auto'
#     #alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias l='exa -F'
alias lt='exa -T'
alias lla='exa -al'

alias cl='clear'
alias grep='rg --color=auto'

# pretty info
alias df='df -h'
alias free='free -ht'
alias wget='wget -c'
alias lsusr='cut -d: -f1 /etc/passwd'
alias pp='echo ${PATH} | sed "s/:/\n/g"'
alias env='env | sort'

# youtube download shortcut
alias yta='youtube-dl -x --audio-quality 0'

# remove terminal formating code (cheat.sh caching)
alias decolorise='sed "s/\x1b[[0-9;]\{1,\}m//g"'

# some debian/ubuntu strange naming convention
alias bat='batcat'
alias env='env | sort | bat -p -l sh'

alias stuff="/usr/bin/git --git-dir=$STOW_DIR/.git --work-tree=$STOW_DIR"
