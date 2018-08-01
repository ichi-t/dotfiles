export LANG=en_US.UTF-8
export LC_ALL=$LANG

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh

zplug "modules/git", from:prezto
zplug "modules/prompt", from:prezto

zstyle ':prezto:module:prompt' theme 'nicoulaj'

zplug load

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/lib/go-1.9/bin:$PATH"
eval "$(rbenv init -)"
ssh() {
    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
        tmux rename-window "$(echo $* | cut -d . -f 1)"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi
    }
export LANG=en_US.UTF-8
export LC_ALL=$LANG
