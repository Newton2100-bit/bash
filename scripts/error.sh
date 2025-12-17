#!/usr/bin/env -S bash 
#This is a sample script for viweing descriptions of errors as per the c language


function error() {
  errorno=$?

  if [[ -n $1 ]]; then
    errorno=$1
  fi

  ~/.my_scripts/scripts/error.exe $errorno
}

