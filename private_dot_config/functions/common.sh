function has() {
  which $1 >/dev/null
}

function get_shell_name() {
  if [ -n "${ZSH_VERSION}"]; then
    echo -n "zsh"
  elif [ -n "${BASH_VERSION}" ]; then
    echo -n "bash"
  fi
}
