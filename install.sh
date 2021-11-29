#!/bin/env sh

#创建软链接
ln -s ~/.config/xinitrc ~/.xinitrc

ln -s ~/.config/zsh/zshrc ~/.zshrc
ln -s ~/.config/zsh/zshenv ~/.zshenv
ln -s ~/.config/zsh/zimrc ~/.zimrc

mkdir ~/.zim
ln -s ~/.config/zsh/zimfw.sh ~/.zim/zimfw.sh
cd ~/.zim/
zimfw.sh install


ln -s ~/.config/yarnrc ~/.yarnrc
ln -s ~/.config/xprofile ~/.xprofile
ln -s ~/.config/scripts ~/.scripts
ln -s ~/.config/npmrc ~/.npmrc
ln -s ~/.config/doom.d ~/.doom.d


