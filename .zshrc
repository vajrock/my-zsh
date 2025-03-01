# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
export KWIN_TRIPLE_BUFFER=1
export LC_ALL=en_GB.UTF-8

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host user dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vcs battery time)
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito'

# ZPlug

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# Theme
zplug romkatv/powerlevel10k, as:theme

# Aliases
zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"

# Plugins
zplug "plugins/archlinux",         from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize",          from:oh-my-zsh
zplug "lib/completion",            from:oh-my-zsh
zplug "lib/history",               from:oh-my-zsh
zplug "lib/key-bindings",          from:oh-my-zsh
zplug "lib/termsupport",           from:oh-my-zsh
zplug "lib/directories",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "zdharma/fast-syntax-highlighting" # Работает намного быстрее предыдущего плагина и подсвечивает лучше
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use" # Сообщает о том, что для команды существует алиас

#vajrock
#zplug "plugins/dirhistory",			from:oh-my-zsh 
#zplug "plugins/docker",				from:oh-my-zsh 
#zplug "plugins/docker-compose",		from:oh-my-zsh 
#zplug "plugins/golang",				from:oh-my-zsh 
#zplug "plugins/timer",				from:oh-my-zsh 


zplug check || zplug install
zplug load

alias ls="ls --color"
alias l="lsd --date '+%d.%m.%Y %H:%M' -lah"

#
# Neofetch
#
alias ff="fastfetch"
alias k="uname -rs"
alias g="gnome-shell --version"
alias f="lsb_release -sd"
alias video="inxi -G | grep mesa"
alias age="stat / | grep Birth:"
alias ram="sudo dmidecode -t memory | grep Speed"
alias pc="inxi -Ixxx"
alias net="inxi -Nxxx"
#
# DNF
#
alias up="epm update && epm full-upgrade -y && flatpak update --noninteractive -y"
alias cc="sudo apt-get clean && sudo apt-get autoclean && sudo apt-get check && flatpak uninstall --unused -y && sudo journalctl --vacuum-time=1weeks"
alias c="clear"
#
# Flatpak
#
alias fli="flatpak install --noninteractive -y flathub"
alias flr="flatpak remove --noninteractive -y"
alias fr="flatpak repair"
alias fl="flatpak list"

export PATH=~/.cargo/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR=micro

export PATH=~/go/bin:~/goworkdir/bin:~/bin:$PATH


