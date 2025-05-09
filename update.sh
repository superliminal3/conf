#!/bin/bash

cp -r $HOME/.config/nvim	home/.config/ &&
cp -r $HOME/.config/mpv		home/.config/ &&
cp -r $HOME/.config/tmux	home/.config/ &&

cp $HOME/.xinitrc		home/.xinitrc &&
cp $HOME/.bashrc		home/.bashrc &&
cp $HOME/.bash_profile	home/.bash_profile &&

cp -r /etc/portage/patches/x11-terms/st		root/etc/portage/patches/x11-terms/ &&
cp -r /etc/portage/patches/x11-wm/dwm		root/etc/portage/patches/x11-wm/ &&

cp -r /etc/portage/savedconfig/x11-wm		root/etc/portage/savedconfig/x11-wm &&
cp -r /etc/portage/savedconfig/x11-terms	root/etc/portage/savedconfig/x11-terms &&
cp -r /etc/portage/savedconfig/x11-misc		root/etc/portage/savedconfig/x11-misc &&

cp -r /etc/portage/repos.conf				root/etc/portage/repos.conf &&
cp -r /etc/profile.d/o.sh					root/etc/profile.d/o.sh &&

cp /var/lib/portage/world					root/var/lib/portage/world &&

cp /etc/portage/make.conf					root/etc/portage/make.conf &&
cp /etc/portage/package.accept_keywords		root/etc/portage/package.accept_keywords &&
cp /etc/portage/package.use					root/etc/portage/package.use
