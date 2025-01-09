#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

sudo nixos-rebuild switch -I nixos-config=$SCRIPTPATH/configs/configuration.nix