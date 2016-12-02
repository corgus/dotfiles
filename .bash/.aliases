
# Reload
alias reload=". ~/.bash_profile"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Elasticsearch
alias es="elasticsearch"
alias esi="curl -XGET 'http://localhost:9200/_cat/indices?v'"
alias esn="curl -XGET 'http://localhost:9200/_nodes/process?pretty'"
alias esh="curl -XGET 'http://localhost:9200/_cluster/health?pretty'"
alias es_stop="curl -XPOST http://localhost:9200/_shutdown"

# Sublime
# alias subl="open -a 'Sublime Text'"

# Rails
alias rs="rails server -p 3001"
alias rc="rails c"
alias tailrails="tail -f -n 1000 log/development.log | grep -i 'processing\|rendered\|parameters'"
alias rake="bin/rake"
