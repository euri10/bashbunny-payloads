#!/usr/bin bash


function OS() {
   OSNAME=$(uname -s)
   case $OSNAME in
  'Linux')
    OS='linux'
    LED MAGENTA SLOW
    ;;
  'Darwin')
    OS='mac'
    LED BLUE SLOW
    ;;
  *)
    OS='unknown'
    LED FAIL
  ;;
esac
}

export -f OS