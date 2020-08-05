## PATH - build and load with every terminal init
#
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/sbin:$PATH"
# PostgreSQL
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
