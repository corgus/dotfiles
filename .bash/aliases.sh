#!/bin/bash

###################
# Spotsaga
####################

alias al='subl ~/.bash/aliases.sh'
alias sal='source ~/.bashrc'
alias cd_ss='cd ~/dev/spotsaga'
alias cd_ss_rails='cd ~/dev/spotsaga/rails'
alias cd_ss_ng='cd ~/dev/spotsaga/angular'
alias ssh_ss='ssh deploy@159.65.96.103'

#  Rails

alias rc='rails_console'
alias rp="lsof -wni tcp:3000"
alias rs='rails_server'
alias rake='bin/rake'
alias rails_console='(cd_ss_rails; rails console)'
alias rails_server='(cd_ss_rails; bundle exec rails server -p=3000; puts "!!! restart sidekiq !!!")'
# alias rails_assets='(cd /var/www/spotsaga/code/rails; RAILS_ENV=production bundle exec rails assets:precompile)'
alias rails_cred="(cd_ss_rails; EDITOR="nano" rails credentials:edit)"
alias rails_log_path="~/dev/spotsaga/rails/log/development.log"
alias rails_log='sudo tail -f -n 1000 rails_log_path | egrep "DEBUG|INFO|WARN|ERROR|FATAL"'
alias rails_log_err='sudo tail -f -n 1000 rails_log_path | egrep "WARN|ERROR|FATAL"'

# Sidekiq
#
alias side="bundle exec sidekiq --environment development -C config/sidekiq.yml"
# alias side='sudo service sidekiq restart;' # from prod
alias side_log='sudo tail -f -n 1000 /var/log/syslog'
alias side_conf='sudo nano /lib/systemd/system/sidekiq.service'

# Redis
#
alias redis_log='sudo tail -f -n 10000 /var/log/redis/redis-server.log'
alias redis_conf='sudo nano /lib/systemd/system/redis.service'

# NPM / front-end / Angular
#
# start front-end
alias ns="(cd ~/dev/spotsaga/angular; npm start)"
# build front-end for prod
alias nb="(cd ~/dev/spotsaga/angular; npm run-script build)"
# find running process
alias np="lsof -wni tcp:8080"


# NGINX
# pid: /opt/nginx/logs/nginx.pid, log: /var/log/system.log
#
# start nginx:
alias ngx="sudo /opt/nginx/sbin/nginx -c ~/dev/spotsaga/nginx/dev/nginx-dev.conf" # -g 'pid /var/run/nginx.pid;'
# kill nginx:
alias kngx="sudo /opt/nginx/sbin/nginx -s stop"
# nginx processes:
alias ngxp="ps ax -o pid,ppid,%cpu,vsz,wchan,command|egrep '(nginx|PID)'"
alias conf_ngx="subl ~/dev/spotsaga/nginx/dev/nginx-dev.conf"
alias logs_ngx="cd /opt/nginx/logs"
alias log_ngx="tail -f -n 1000 /opt/nginx/logs/error.log"


#########################
# OTHER
#########################

# kill process
alias kp="kill -9"

# NGROK
alias ngrok="~/ngrok"

# Sublime
# alias subl="open -a 'Sublime Text'"

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
