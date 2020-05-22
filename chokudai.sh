#!/bin/bash

confirm () {
  MSG=$1
  while :
    do  
    echo -n "${MSG} [Y/N]: "
    read ans 
    case $ans in
    [yY]) return 0 ;;
    [nN]) return 1 ;;
    esac
  done
}


if [ $1 = "set" ]; then
  confirm 'Ready?'
  if [ $? = 0 ]; then
    cp template.cpp a.cpp
    cp template.cpp b.cpp
    cp template.cpp c.cpp
    cp template.cpp d.cpp
    cp template.cpp e.cpp
    cp template.cpp f.cpp
  fi
elif [ $1 = "run" ]; then
  g++ $2.cpp -o tmp
  ./tmp
  rm tmp
elif [ $1 = "clean" ]; then
  confirm 'Ready?'
  if [ $0 = 0 ]; then
    rm a.cpp
    rm b.cpp
    rm c.cpp
    rm d.cpp
    rm e.cpp
    rm f.cpp
  fi
fi  
