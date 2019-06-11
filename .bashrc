source ~/.aliases
source ~/.git-prompt.sh

eval $(dircolors -b)
export LS_COLORS="$LS_COLORS:*.txt=00;36:*.patch=00;36:*.csv=00;36"

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1

# PS1='\[\e[1;34m\]\h \[\e[0;37m\]\w \[\e[0;32m\]\$\[\e[0m\] '
PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\h \[\e[0;37m\]\w\[\e[0m\]" " \[\e[0;32m\]\\\$\[\e[0m\] " "[%s]"'

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
