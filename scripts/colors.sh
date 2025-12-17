#!/usr/bin/env bash

function colors(){
for code in {0..255}
    do echo -ne "\e[38;5;${code}m"'\\e[38;5;'"$code"m"\e[0m\t"
  done
  printf "\n"
}
