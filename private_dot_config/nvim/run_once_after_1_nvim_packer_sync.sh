#!/bin/bash

# fnl/pack/init.fnl hash: {{ include "fnl/pack/init.fnl" | sha256sum }}
echo 'Run PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
