#!/bin/bash


if (( $+commands[brew] )); then
  eval "$($(which brew) shellenv)"
fi
