# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export ANDROID_SDK_ROOT=/home/caspar/Android/Sdk
PATH=$PATH:/opt/bin
PATH=$PATH:/opt/sonar-scanner-4.8.0.2856-linux/bin
PATH=$PATH:/opt/flutter/bin
LD_LIBRARY_PATH=/opt/openMotif-i386/usr/X11R6/lib/:$LD_LIBRARY_PATH

export EDITOR=nvim

alias rm="rm -I"
alias config="/usr/bin/git --git-dir=/home/caspar/.cfg/ --work-tree=/home/caspar"
alias :q="exit"

source /usr/share/nvm/init-nvm.sh
