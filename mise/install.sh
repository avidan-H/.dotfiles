#!/bin/bash
#
# mise - Manage multiple runtime versions with a single CLI tool
# https://mise.jdx.dev/

if ! command -v mise &> /dev/null; then
    echo "Installing mise"
    if command -v brew &> /dev/null; then
        brew install mise
    else
        curl https://mise.run | sh
    fi
else
    echo "mise already installed"
fi
