# enable antigen
DISABLE_AUTO_UPDATE=true
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source ~/.dotfiles/zsh_plugins.sh

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=100000

# Enable extended globbing
setopt extendedglob
setopt no_nomatch

# Init rbenv, nodenv and pyenv
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"
export PATH=".git/safe/../../node_modules/.bin:$PATH"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# pyenv
export PATH="~/.pyenv/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/camilo/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
