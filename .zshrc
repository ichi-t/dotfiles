# Created by newuser for 5.4.2
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"
export DISPLAY=:0.0
# emacs --eval "(setq server-name \"main\")" --daemon
# exec emacsclient --alternate-editor="" -c "$@"
export ALTERNATE_EDITOR=emacs EDITOR=emacsclient VISUAL=emacsclient
tmux
alias t='tw --timelin && tw --stream'
export PATH=$HOME/.nodebrew/current/bin:$PATH
alias emacs='emacs -nw'
