#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx &> /dev/null

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

alias grub-update='sudo bash -c "grub-mkconfig > /boot/grub/grub.cfg"'
alias neofetch='neofetch --gtk2 off --gtk3 off --w3m /data/Pictures/wallpaper.png'
alias cow='clear; echo -e "\e[1;3$(shuf -n 1 -i 1-6)m$(fortune -a | cowsay -n -$(shuf -n 1 -e - b d g p s t w))\e[0m\n"'

PS1='\[\e[33m\]\u \[\e[34m\]\W\[\e[0m\] » \[\e[0m\]'
PS2='» '
