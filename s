#!/bin/sh
if [ "${1}" = "-h" ] || [ "${1}" = "--help" ]; then
  echo "Usage: a"
  echo "Synonym to git status."
  echo
  echo "Requires git."
else
  if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then
    git status
    exit
  fi
  
  if svn info . > /dev/null 2>&1 ; then
    svn status
    exit
  fi
  
  echo "Neither git not SVN repository was found"
fi