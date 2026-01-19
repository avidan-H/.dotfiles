#!/bin/bash
#
# pipx
# pdm
# uv
#
# installs pipx, pdm, and uv
# Note: Python runtime versions are managed by mise

# Check for pipx
if test ! "$(which pipx)"; then
    if test "$(which brew)"; then
        echo "Installing pipx for you."
        brew install pipx
        pipx ensurepath
    else
        echo "brew is not installed - skipping installation of pipx"
    fi
fi


# Check for pdm
if test ! "$(which pdm)"; then
    if test "$(which brew)"; then
        echo "Installing pdm for you"
        brew install pdm
    else
        echo "brew is not installed - skipping installation of pdm"
    fi
fi


# check for uv
if test ! "$(which uv)"; then
    if test "$(which brew)"; then
        echo "Installing uv for you"
        brew install uv
    else
        echo "brew is not installed - skipping installation of uv"
    fi
fi


exit 0
