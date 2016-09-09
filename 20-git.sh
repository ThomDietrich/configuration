#!/usr/bin/env bash

#first commit, not tested
apt update && apt install -y git
 
git config --global user.name "Thomas Dietrich"
git config --global user.email Thomas.Dietrich@tu-ilmenau.de
git config --global color.ui auto
git config --global color.diff.old "red strike" # new with git 2.10
git config --global core.whitespace trailing-space,space-before-tab
git config --global diff.renames copies
git config --global diff.mnemonicprefix true
git config --global diff.compactionHeuristic true
git config --global merge.stat true
git config --global commit.gpgsign true
git config --global user.signingkey A20301F1
git config --global log.showSignature true # new with git 2.10

# git config --global --unset user.signingkey
# git config --global --edit

# Linux specific
#git config --global core.editor "vim"
# diff-highlight needs to be installed
#git config --global pager.log 'diff-highlight | less'
#git config --global pager.show 'diff-highlight | less'
#git config --global pager.diff 'diff-highlight | less'
# Also: https://github.com/so-fancy/diff-so-fancy#screenshot
 
# Windows specific
# https://jamesmckay.net/2016/02/signing-git-commits-with-gpg-on-windows
#git config --global gpg.program "c:/Program Files (x86)/GNU/GnuPG/gpg2.exe"
