
# Cajo Theme
# Bubble gum/cotton candy for easy dark mode reading.
#

#CAJO_BRACKET_COLOR="%{$fg[red]%}"
CAJO_BRACKET_COLOR="%F{81}"
CAJO_TIME_COLOR="%F{75}"
CAJO_RVM_COLOR="%{$fg[magenta]%}"
CAJO_USER_COLOR="%${38}${5}:${13}%"
CAJO_DIR_COLOR="%{$fg[cyan]%}"
CAJO_GIT_BRANCH_COLOR="%{$fg[green]%}"
CAJO_GIT_CLEAN_COLOR="%{$fg[green]%}"
CAJO_GIT_DIRTY_COLOR="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$CAJO_BRACKET_COLOR:$CAJO_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $CAJO_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $CAJO_GIT_DIRTY_COLOR✗"

# Our elements:
CAJO_TIME_="$CAJO_BRACKET_COLOR"["$CAJO_TIME_COLOR%T$CAJO_BRACKET_COLOR"]"%{$reset_color%}"
ZSH_THEME_RUBY_PROMPT_PREFIX="$CAJO_BRACKET_COLOR"["$CAJO_RVM_COLOR"
ZSH_THEME_RUBY_PROMPT_SUFFIX="$CAJO_BRACKET_COLOR"]"%{$reset_color%}"
CAJO_HOSTNAME_='%m'
CAJO_USERNAME_='%n'
CAJO_SIGNATURE_=["%{$fg[cyan]%}"$CAJO_USERNAME_%{$reset_color%}@"%{$fg[magenta]%}"$CAJO_HOSTNAME_%{$reset_color%}$CAJO_DIR_"]"
CAJO_RVM_='$(ruby_prompt_info)'
CAJO_DIR_="$CAJO_DIR_COLOR%~\$(git_prompt_info)"
CAJO_PROMPT="$CAJO_BRACKET_COLOR> "

# Put it all together!
PROMPT="$CAJO_TIME_$CAJO_RVM_$CAJO_SIGNATURE_$CAJO_PROMPT%{$reset_color%}"
