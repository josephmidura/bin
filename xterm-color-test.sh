# define terminal colors
# need to check on new macbook

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi
 
# Define a few Color's (with nonprinting escapes included
BLACK='\[\e[0;30m\]'        # Black
RED='\[\e[0;31m\]'          # Red
GREEN='\[\e[0;32m\]'        # Green
BROWN='\[\e[0;33m\]'        # Brown
BLUE='\[\e[0;34m\]'         # Blue
PURPLE='\[\e[0;35m\]'       # Purple
CYAN='\[\e[0;36m\]'         # Cyan
LGRAY='\[\e[0;37m\]'        # Light Gray

DGRAY='\[\e[1;30m\]'        # Dark Gray (Light Black)     
LRED='\[\e[1;31m\]'         # Light Red
LGREEN='\[\e[1;32m\]'       # Light Green
YELLOW='\[\e[1;33m\]'       # Yellow (Light Brown)
LBLUE='\[\e[1;34m\]'        # Light Blue 
LPURPLE='\[\e[1;35m\]'      # Light Purple
LCYAN='\[\e[1;36m\]'        # Light Cyan
WHITE='\[\e[1;37m\]'        # White (Light Light Gray)

BOLD='\[\e[1m\]'            # Bold the color
LIGHT='\[\e[1m\]'           # Lighten the color
INV='\[\e[7m\]'             # Set the background color
UND='\[\e[4m\]'             # Underline
BLINK='\[\e[5m\]'           # Text blinking
NC='\[\e[0m\]'              # No Color

# Set the PS1 prompt (with colors).
## Old style
#PS1="\[\e[1;31m\]\u \[\e[1;32m\]\d \[\e[4;32m\]\@\[\e[0;1;33m\] [\w]\n\
#\[\e[0;35m\]  hist: \[\e[1;36m\]\! \[\e[0;35m\]cmd: \[\e[1;36m\]\#\
#\[\e[1;34m\] > \$ \[\e[0m\]"
## Using variables
PS1="$NC\n$LRED\u $GREEN\d $UND\@$NC $YELLOW[\w]\n\
$PURPLE  hist: $CYAN\!$PURPLE cmd: $CYAN\# $LBLUE> \$ $NC"

# Set color scheme for ls
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"

# Set the default editor to pico.
export EDITOR=pico
 
 
# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'
 
# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
	
# nounset causes the shell to abort the current command during variable
# expansion if the variable isn't set
set -o nounset

###############NO idea what the next few lines do  ##################
if [ ]; then
export PROMPT_COMMAND='echo -en "\033[m\033[38;5;2m"$(( `sed -n "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo`/1024))"\033[38;5;22m/"$((`sed -n "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"'
export PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '
fi

# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# History Options
# ###############

# Ignore some controlling instructions
  export HISTIGNORE="[   ]*:&:bg:fg:exit"

# Whenever displaying the prompt, write the previous line to disk
  export PROMPT_COMMAND="history -a"

if [ ]; then
PS1='[\u@TEST \w]\n \#\$ \n\
\[\
\e[1mBold Text\e[m\n\
\e[4mUnderline Text\e[m\n\
\e[5mBlink Text\e[m\n\
\e[7mInverse Text\e[m\]\n\
#Should be normal text
#Foreground colors:
\[\
\e[0;30m30: Black\n\
\e[0;31m31: Red\n\
\e[0;32m32: Green\n\
\e[0;33m33: Yellow\Orange\n\
\e[0;34m34: Blue\n\
\e[0;35m35: Magenta\n\
\e[0;36m36: Cyan\n\
\e[0;37m37: Light Gray\Black\n\
\e[0;39m39: Default\n\
#Bright foreground colors:
\e[1;30m30: Dark Gray\n\
\e[1;31m31: Red\n\
\e[1;32m32: Green\n\
\e[1;33m33: Yellow\n\
\e[1;34m34: Blue\n\
\e[1;35m35: Magenta\n\
\e[1;36m36: Cyan\n\
\e[1;37m37: White\n\
\e[0;39m39: Default\n\
\e[m\]
#Background colors:
\[\e[1;37m\e[40m40: Black\e[0;49m\n\
\e[41m41: Red\e[0;49m\n\
\e[42m42: Green\e[0;49m\n\
\e[43m43: Yellow\Orange\e[0;49m\n\
\e[44m44: Blue\e[0;49m\n\
\e[45m45: Magenta\e[0;49m\n\
\e[46m46: Cyan\e[0;49m\n\
\e[47m47: Light Gray\Black\e[0;49m\n\
\e[49m49: Default\e[m\]\n'



