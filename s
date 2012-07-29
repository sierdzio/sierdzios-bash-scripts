#!/bin/sh
if [ "${1}" = "-h" ] || [ "${1}" = "--help" ]; then
  echo "Usage: a"
  echo "Synonym to git status."
  echo
  echo "Requires git."
else
  git status
fi