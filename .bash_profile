

# rbenv: add to `$PATH` and load with every terminal init
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Postgres.app
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

# # Rubocop
# export PATH="$PATH:/Users/corg/.rbenv/shims/rubocop"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

export NVM_DIR="/Users/corg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
