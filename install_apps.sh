sudo pacman -Syu

sudo pacman -S alacritty bpytop dolphin firefox grub i3 neofetch\
	networkmanager	nitrogen papirus-icon-theme polybar\
       	python-pywal ranger rofi taskwarrior unzip\
       	xorg-server xorg-xinit

ln -sv .xinitrc ~/.xinitrc
ln -sv .taskrc ~/.taskrc
ln -sv .bashrc ~/.bashrc
ln -sv .bash_aliases ~/.bash_aliases
ln -sv ~/ArchInstall/.config/alacritty/ ~/.config/alacritty
ln -sv ~/ArchInstall/.config/i3/ ~/.config/i3
ln -sv ~/ArchInstall/.config/nitrogen/ ~/.config/nitrogen
ln -sv ~/ArchInstall/.config/picom/ ~/.config/picom
ln -sv ~/ArchInstall/.config/polybar/ ~/.config/polybar
ln -sv ~/ArchInstall/.config/ranger/ ~/.config/ranger
ln -sv ~/ArchInstall/.config/rofi/ ~/.config/rofi

