#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew); then
  echo "  Installing Homebrew for you."

  if test $(which ruby); then
    # Install the correct homebrew for each OS type with ruby
    if test "$(uname)" = "Darwin"; then
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
  else
    echo "ruby not found"
    if test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
      echo "installing linux requirements"
      sudo apt-get install build-essential procps curl file git
    fi
    echo "trying to install Homebrew using the installer script"
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/458c3d2834f40cf00992b2fca3f08ad1cdf0bf78/install.sh)"
    eval "$($(which brew) shellenv)"
  fi

fi

exit 0
