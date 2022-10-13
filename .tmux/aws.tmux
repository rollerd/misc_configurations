#!/usr/bin/env bash

AWS_TMUX_UNAME=$(uname)
AWS_TMUX_LAST_TIME=0
PROFILENAME="None"

_aws_file_newer_than() {
  local mtime
  local file=$1
  local check_time=$2

  if [[ "$AWS_TMUX_UNAME" == "Linux" ]]; then
    mtime=$(stat -c %Y "${file}")
  elif [[ "$AWS_TMUX_UNAME" == "Darwin" ]]; then
    # Use native stat in cases where gnutils are installed
    mtime=$(/usr/bin/stat -f %m "$file")
  fi

  [[ "${mtime}" -gt "${check_time}" ]]
}

_update_time() {
  if [[ "${AWS_TMUX_SHELL}" == "bash" ]]; then
    if ((BASH_VERSINFO[0] >= 4)); then
      AWS_TMUX_LAST_TIME=$(printf '%(%s)T')
    else
      AWS_TMUX_LAST_TIME=$(date +%s)
    fi
  fi
}

_update_cache() {
    # Decide to update based on the age of ~/.awsenv file
    if _aws_file_newer_than ~/.awsenv "${AWS_TMUX_LAST_TIME}"; then
        PROFILENAME=$(cat ~/.awsenv)        
        return
    fi
}

aws_tmux() {
    _update_cache
    echo "${PROFILENAME}"
}

aws_tmux
