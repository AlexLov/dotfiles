#!/bin/bash

# fnl/pack/treesitter.fnl hash: {{ include "fnl/pack/treesitter.fnl" | sha256sum }}
echo 'Run TSUpdate'
nvim --headless +TSUpdate	+q
