d () {
	if [[ -n $1 ]]
	then
		dirs "$@"
	else
		dirs -v | head -n 10
	fi
}

cdp () {

  TEMP_PWD=`pwd`
  while ! [ -d .git ]; do
  cd ..
  done
  OLDPWD=$TEMP_PWD

}
# End of cdp function

newton (){
  echo "my name is newton irungu"
}
# end newton function 
