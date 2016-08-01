#!/usr/bin/env bash

PLUGINS="git common-aliases compleat colored-man-pages history-substring-search rand-quote zsh-navigation-tools"

#first commit, not tested
apt update && apt install -y zsh
 
# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussell/blinks/g' ~/.zshrc
#sed -i 's/robbyrussell/aussiegeek/g' ~/.zshrc
#sed -i 's/robbyrussell/candy/g' ~/.zshrc
#sed -i 's/robbyrussell/nanotech/g' ~/.zshrc
 
sed -i 's/(git)/($PLUGINS)/g' ~/.zshrc
 
# Autoload zmv
echo "" >> ~/.zshrc
echo -e "Load the zmv tool\nautoload -U zmv\n" >> ~/.zshrc

#http://www.quotationspage.com/random.php3
echo -e "#Just some random quotes from rand-quote\necho\nquote" >> ~/.zshrc
