# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias mntrpi="/home/choudhry/repos/dev/qt-tools/scripts/mountRPi.sh"

_get_ssh_args() {
  ssh_args=(-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no)
}

_verify() {
  local cmd="$1"
  echo "$cmd"
  read "REPLY?Are you sure?"
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
      $cmd
  fi
}

pi-copy-id() {
  _get_ssh_args
  sshpass -p "pi-top" ssh-copy-id $ssh_args pi@10.1.1.2
}

pi-ssh() {
  pi-copy-id 10.1.1.2

  _get_ssh_args
  ssh $ssh_args pi@10.1.1.2
}

pi-scp-here() {
  remote_path="$1"
  local_path="$2"

  pi-copy-id 10.1.1.2

  _get_ssh_args
  if [[ -d $remote_path ]]; then
    ssh_args+=('-r')
  fi

  cmd="scp $ssh_args pi@10.1.1.2:$remote_path $local_path"
  _verify "$cmd"
}

pi-scp-there() {
  local_path="$1"
  remote_path="$2"

  pi-copy-id 10.1.1.2

  _get_ssh_args
  if [[ -d $local_path ]]; then
    ssh_args+=('-r')
  fi

  cmd="scp $ssh_args $local_path pi@10.1.1.2:$remote_path"
  _verify "$cmd"
}


alias py="python -B"

alias bat="bat --paging=never"
alias cat="bat"
alias gc="gitmoji -c"