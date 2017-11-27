#!/bin/bash
# I took the utils.sh script from
# https://natelandau.com/bash-scripting-utilities/
# e_header, e_note, e_bold, seek_confirmation, is_confirmed,
# e_success, e_error and type_exists
# are all helper functions that I import from utils.sh
source $HOME/HGOP/day1/utils.sh
e_header "Setup Script"
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt"
e_note "This is a setup script for
T-542-HGOP at Reykjavík University."
# $USER and $OSTYPE are environment variables
echo "Hello," $USER
echo "You are running on," $OSTYPE
seek_confirmation "Do you want to check your setup?"
if is_confirmed; then
  e_bold "Checking for git"
  if type_exists 'git'; then
    e_success "Git found"
  else
    e_error "Could not find git"
    seek_confirmation "Install git?"
    if is_confirmed; then
      e_note "Installing git"
      # Only works for Arch Linux
      sudo pacman -S git
    else
      e_error "Aborting"
      exit 1
    fi
  fi
  e_bold "Checking for Atom"
  if type_exists 'atom'; then
    e_success "Atom found"
  else
    e_error "Could not find Atom"
    seek_confirmation "Install Atom?"
    if is_confirmed; then
      e_note "Installing Atom"
      # Only works for Arch Linux
      sudo pacman -S atom
    else
      e_error "Aborting"
      exit 1
    fi
  fi
else
  e_error "Okay then"
fi

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt"
