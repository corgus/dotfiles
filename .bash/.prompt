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

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

function git_info() {
    # check if we're in a git repo
    git rev-parse --is-inside-work-tree &>/dev/null || return

    # check for what branch we're on
    branch=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

    # check if it's dirty (via github.com/sindresorhus/pure)
    dirty=$(git diff --quiet --ignore-submodules HEAD &>/dev/null; [ $? -eq 1 ]&& echo -e "*")

    echo $branch$dirty
}

#user@host
PS1="\n\e[0;34;40m\u@\h "
#~/path/to/here
PS1+="\e[0;36;40m\w "
#git branch
PS1+="\e[1;2;36;40m\$git_branch\$git_dirty "
#date
PS1+="\e[1;34;40m\D{%F %T}\n"
#prompt
PS1+="⚡\e[0m  "


# PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export PS1;
