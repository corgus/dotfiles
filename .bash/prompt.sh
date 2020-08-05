# Original from: https://github.com/gf3/dotfiles
# Styling: http://misc.flogisoft.com/bash/tip_colors_and_formatting
# color_demo: http://softwarelivre.org/terceiro/blog/a-visual-cheat-sheet-for-ansi-color-codes


function bash_styles() {
  for attr in $(seq 0 2); do
    for fg in $(seq 30 37); do
      for bg in $(seq 40 47); do
        printf "\033[$attr;${bg};${fg}m$attr;$fg;$bg\033[m "
      done
      printf "\n"
    done
    printf "\n"
  done

  printf "\e[0m0-Reset  \e[0;1m1-Bold   \e[0;2m2-Dim   \e[0;4m4-Underlined\e[0m  \e[7m7-Inverted\e[0m \e[0m\n"
}

function find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch="($branch)"
  else
    git_branch=""
  fi
}

function find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty='*'
  else
    git_dirty=''
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"



#user@host
PS1="\n\e[0;34;40m\u@\h "
#~/path/to/here
PS1+="\e[0;36;40m\w "
#git branch
PS1+="\e[0;34;40m\$git_branch\$git_dirty "
#date
PS1+="\e[0;36;40m\D{%F %T}\e[0m\n"
#prompt
PS1+="⚡  "

export PS1;
