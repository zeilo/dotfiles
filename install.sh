#!/bin/bash
# Install .dotfiles

# -- Import from other scripts -------------------------------------------------

source 'scripts/helpers.sh'



# -- OSX- or Linux-Specific Setup ----------------------------------------------

if system_is_OSX; then
  source 'osx/osx.sh'
elif system_is_linux; then
  source 'ubuntu/ubuntu.sh'
fi



# -- GIT -----------------------------------------------------------------------

ln -sf $HOME/dotfiles/git/gitignore_global $HOME/.gitignore_global
echo_item "Linked global .gitignore" "green"
echo ""