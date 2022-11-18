#!/usr/bin/env bash

[[ -n $DEBUG ]] && set -x

CURRENT_PATH="${1:-~}"
IS_PANE_ACTIVE="${2:-0}"
WIDTH="${3:-}"

STARSHIP_CONFIG="${STARSHIP_CONFIG:-~/.config/tmux/conf/starship.toml}"

args=""
[[ -n $WIDTH ]] && args+=" -w ${WIDTH}"

# replace colors in escape siquences with tmux styling
function replace_term_colors() {
 local input_line=${1-:}
 local is_pane_active=${2-:0}
 if [[ ${is_pane_active} == 0 ]]; then
   echo $input_line | sed -E -e 's/\x1b//g' \
     -e 's/\[([0-9;]+)m/#\[\1\]/g' \
     -e 's/\[0\]/\[default\]/g' \
     -e 's/#\[1;/#\[bold,/g' \
     -e 's/#\[2;/#\[dim,/g' \
     -e 's/([[,;])3([0-7]\])/\1fg=black\]/g' \
     -e 's/([[,;])4[0-7]([];,])/\1bg=none\2/g' \
     -e 's/;([fb]g=)/,\1/g'
 else
   echo $input_line | sed -E -e 's/\x1b//g' \
     -e 's/\[([0-9;]+)m/#\[\1\]/g' \
     -e 's/\[0\]/\[default\]/g' \
     -e 's/#\[1;/#\[bold,/g' \
     -e 's/#\[2;/#\[dim,/g' \
     -e 's/([[,;])3([0-7]\])/\1fg=\2/g' \
     -e 's/([[,;])4([0-7][];,])/\1bg=\2/g' \
     -e 's/;([fb]g=)/,\1/g' \
     -e 's/=0/=black/g' \
     -e 's/=1/=red/g' \
     -e 's/=2/=green/g' \
     -e 's/=3/=yellow/g' \
     -e 's/=4/=blue/g' \
     -e 's/=5/=magenta/g' \
     -e 's/=6/=cyan/g' \
     -e 's/=7/=grey/g'
   fi
}

PROMPT=$(STARSHIP_CONFIG=${STARSHIP_CONFIG} starship prompt -p "${CURRENT_PATH}" -P "${CURRENT_PATH}" ${args})

set +x

replace_term_colors "${PROMPT}" "${IS_PANE_ACTIVE}"
