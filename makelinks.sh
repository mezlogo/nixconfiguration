#!/usr/bin/env bash

sudo rm /etc/nixos/*

for f in configs/*; do
  fullpath=$(realpath $f)
  echo $fullpath
  sudo ln -s $fullpath /etc/nixos
done