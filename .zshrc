HISTFILE=$HOME/.zsh_history
SAVEHIST=1000000
HISTSIZE=1000000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY

ZPLUG_LOADFILE=$HOME/.zsh/packages.zsh
source /usr/share/zsh/scripts/zplug/init.zsh

eval $(keychain --eval --quiet --systemd --agents gpg,ssh $(ls ~/.ssh | ag id_ | grep -v \.pub$ | sed "s@\(.*\)@$HOME/.ssh/\1@" | tr '\n' ' '))

export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

if [ -f $HOME/.tnsrc ]; then
    source $HOME/.tnsrc
fi

# rehash after installing a package so that completion is available immediately in terminal
zstyle ':completion:*' rehash true

# Source my aliases
source $HOME/.zsh/aliases




# # use vim shortcuts
# bindkey -v

## source /home/tjaart/.zsh-custom/plugins/timew/timew-completion.bash

#export path_width=40

# old oh-my-zsh plugins
## plugins=(adb aws bundler cdbk chruby colored-man-pages direnv docker docker-compose fzf gem git-extras gitignore heroku gpg-agent jsontools keychain kitchen knife node npm nvm pass perl pip pyenv rake-fast rails react-native ruby rsync salesforce-cli-zsh-completion sudo taskwarrior timew tmuxinator unified-titles vagrant yarn zsh-navigation-tools)

#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/bin/waypoint waypoint

