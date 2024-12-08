cd ~


export ZSH="/home/zardo/.oh-my-zsh"
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}


plugins=(git ssh-agent)


export RPS1="%{$reset_color%}"
export PATH="$HOME/bin:$PATH"


### Zinit installation & Zinit plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light denysdovhan/spaceship-prompt
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions


### Theming
LS_COLORS=$LS_COLORS:'ow=01;34:' ; export LS_COLORS
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW="always"
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "


# NVM package export
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


setopt autocd
unsetopt PROMPT_SP