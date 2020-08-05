if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
export NODE_PATH="/usr/local/Cellar/node/0.12.0_1/lib/node_modules"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/corey/dev/google-cloud-sdk/path.bash.inc' ]; then . '/Users/corey/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/corey/dev/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/corey/dev/google-cloud-sdk/completion.bash.inc'; fi
