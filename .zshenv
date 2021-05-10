# Set history options
export PATH=/home/tjaart/.local/bin:$PATH

# Java env vars
export JAVA_HOME=/usr/lib/jvm/default
# fix sway issue:
export _JAVA_AWT_WM_NONREPARENTING=1

source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh
[[ -r ./.ruby-version ]] && chruby $(cat ./.ruby-version)
