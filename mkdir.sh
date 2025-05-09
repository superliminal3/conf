#!/bin/bash

mkdir -p home/.config &&
mkdir home/.config/nvim &&
mkdir home/.config/mpv &&
mkdir home/.config/tmux &&

mkdir -p root/etc/portage &&
mkdir -p root/etc/portage/patches/x11-terms &&
mkdir -p root/etc/portage/patches/x11-wm &&
mkdir root/etc/portage/savedconfig &&

mkdir -p root/etc/profile.d &&
mkdir -p root/var/lib/portage
