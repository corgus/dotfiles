## Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
#
for file in ~/.bash/{aliases,functions,path,prompt}.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# GOOGLE
export GOOGLE_APPLICATION_CREDENTIALS="/Users/corey/dev/spotsaga/rails/config/service_accounts/ssaga_storage_service_account.json"

# EDITOR
export EDITOR="subl"
export VISUAL="subl"

## NVM
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# PYTHON
# pyenv: from https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


## Tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;


