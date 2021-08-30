# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

function prompt_my_chruby(){
  p10k segment -s HOT -t "RUBY"
}
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS+=my_chruby
zplug 'romkatv/powerlevel10k', as:theme, depth:1

zplug 'MikeDacre/cdbk'

zplug "plugins/chruby", from:oh-my-zsh
chruby system

zplug "plugins/direnv", from:oh-my-zsh

zplug "plugins/colored-man-pages", from:oh-my-zsh

FZF_DEFAULT_OPTS='--height 50% --reverse --border'
zplug "plugins/fzf", from:oh-my-zsh

NVM_AUTOLOAD=1
NVM_LAZY=1
zplug "plugins/nvm", from:oh-my-zsh

zplug "plugins/rake-fast", from:oh-my-zsh

zplug 'jreese/zsh-titles'

zplug "zsh-users/zsh-syntax-highlighting", defer:2

VIM_MODE_VICMD_KEY='^U'
MODE_CURSOR_VIINS="bar"
MODE_CURSOR_REPLACE="underline"
MODE_CURSOR_VICMD="block"
MODE_CURSOR_SEARCH="steady underline"
zplug "softmoth/zsh-vim-mode"

zplug "plugins/yarn", from:oh-my-zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

if ! zplug check --verbose; then
    echo "Run zplug install"
fi

zplug load

