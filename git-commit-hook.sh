#!/bin/bash

#only execute this if this is master
branchname=$(git symbolic-ref --short HEAD)

if [[ $branchname = "master" ]]; then
  git rebase master arch
  git checkout master
fi
