#!/bin/bash
#
# kubectl
# minikube
# k9s
#
# installs kubectl and minikube
ret=0

# Check for kubectl
if test ! "$(which kubectl)"; then
    if test "$(which brew)"; then
        echo "Installing kubectl for you."
        brew install kubectl && ret=$?
    else
        echo "brew is not installed - skipping installation of kubectl"
    fi
fi


# Check for minikube
if test ! "$(which minikube)"; then
    if test "$(which brew)"; then
        echo "Installing minikube for you."
        brew install minikube && ret=$?
    else
        echo "brew is not installed - skipping installation of minikube"
    fi
fi

# Check for k9s
if test ! "$(which k9s)"; then
    if test "$(which brew)"; then
        echo "Installing k9s for you."
        brew install k9s && ret=$?
    else
        echo "brew is not installed - skipping installation of k9s"
    fi
fi


exit $ret
