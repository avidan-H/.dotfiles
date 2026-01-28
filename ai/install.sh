#!/bin/bash
#
# if not previously installed this script will install opencode using brew


if ! $(brew list | grep -q "opencode"); then
    echo "Installing opencode"
    brew install anomalyco/tap/opencode
fi