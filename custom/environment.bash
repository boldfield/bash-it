# Basics
export EDITOR=vim
export PAGER=less

export USER_TMP=/tmp/$USER-tmp

if [[ ! -d $USER_TMP ]]
then
  mkdir $USER_TMP
fi

if [[ ! -h $HOME/tmp ]]
then
    ln -s $USER_TMP $HOME/tmp
fi

export PATH=$HOME/bin:$PATH
if [[ -h $HOME/bin/terraform ]]
then
    export PATH=$HOME/bin/terraform:$PATH
fi

alias hack='cd /Users/boldfield/Documents/notes/hacktober/2017'
