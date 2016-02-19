#!/bin/bash -e

repos=${1:?"Git repos not provided."} 
if [[ `git -C $repos status --porcelain` ]]; then
  git -C $repos add .
  git -C $repos commit -m "$(whoami) on $(basename $(hostname) .local) at $(date)"
  git -C $repos push origin master
fi

