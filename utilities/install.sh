#!/bin/bash
#
# if not previously installed this script will install
# - act (utility for testing github actions workflows locally https://github.com/nektos/act)
# - direnv
# - fzf (command line fuzzy finder)
# - google cloud sdk (gcloud gsutil bq)


if ! $(brew list | grep -q "act"); then
    echo "Installing act"
    brew install act
fi


if ! $(brew list | grep -q "direnv"); then
    echo "Installing direnv"
    brew install direnv
fi


if ! $(brew list | grep -q "fzf"); then
    echo "Installing fzf"
    brew install fzf
fi


if ! $(brew list | grep -q "fd"); then
    echo "Installing fd"
    brew install fd
fi


default_google_cloud_sdk_root="$HOME/google-cloud-sdk"

# Check for gcloud installation 
if test ! "$(which gcloud)" && ! [[ -e "$default_google_cloud_sdk_root" ]]; then
  echo "Installing google cloud sdk for you."
  curl https://sdk.cloud.google.com > install_google_cloud_sdk.sh
  bash install_google_cloud_sdk.sh --disable-prompts
  rm install_google_cloud_sdk.sh
fi
