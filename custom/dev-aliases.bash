#alias fb_dev="mosh -6 fb-dev -- tmux a"
#alias fb_code="mosh -6 fb-code -- tmux a"
function fb_dev {
  session=fb-code
  if [[ "$#" -eq "1" ]]
  then
    if [[ "$1" == "sessions" ]]
    then
      ssh fb-dev "tmux list-session"
      return
    else
      session="$1"
    fi
  fi
  mosh -6 fb-dev -- tmux new-session -A -s $session
}

alias fb_irc="fb_dev irc"

function atn_shell {
  session=wtf
  if [[ "$#" -eq "1" ]]
  then
    if [[ "$1" == "sessions" ]]
    then
      ssh fb-dev "tmux list-session"
      return
    else
      session="$1"
    fi
  fi
  mosh -6 shellserver001.atn2.facebook.com -- tmux new-session -A -s $session
}

function fb_dev_temp {
  session=fb-code
  if [[ "$#" -eq "1" ]]
  then
    if [[ "$1" == "sessions" ]]
    then
      ssh fb-dev-2 "tmux list-session"
      return
    else
      session="$1"
    fi
  fi
  mosh -6 fb-dev-2 -- tmux new-session -A -s $session
}
