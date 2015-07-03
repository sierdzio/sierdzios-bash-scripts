#!/bin/sh
if [ "${1}" = "-h" ] || [ "${1}" = "--help" ]; then
  echo "Usage: a"
  echo "Synonym to git commit or svn commit -m (message) ."
  echo
  echo "Requires git or svn."
else
  if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then
    git commit
    exit
  fi
  
  if svn info . > /dev/null 2>&1 ; then
    svn commit -m ${1} .
    exit
  fi
  
  echo "Neither git not SVN repository was found"
fi