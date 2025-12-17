function preexecfunc() {
echo "[PRE] About to run $1";
}

function  precmdfunc()
{
  echo "[POST] Done running command.";
}

trap 'preexecfunc "$BASH_COMMAND"' DEBUG
PROMPT_COMMAND='precmdfunc'
