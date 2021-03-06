#!/bin/bash

# Copy files
cp -rf completion_scripts $HOME/.completion_scripts
cp -rf dotfiles/lib $HOME/.bash_lib
cp -f  dotfiles/.bash_init $HOME
cp -f  .inputrc $HOME

# Insert into bash_profile
if grep -q "source $HOME/.bash_init" "$HOME/.bash_profile"; then
  echo ".bash_init already referenced in .bash_profile, ignoring"
else
  # Add bash_init to bash_profile
  echo '' >> $HOME/.bash_profile
  echo '### DO NOT EDIT, GENERATED BY workspace/install.sh ###' >> $HOME/.bash_profile
  echo "source $HOME/.bash_init" >> $HOME/.bash_profile    
fi

source $HOME/.bash_profile

echo "Workspace installed/updated"