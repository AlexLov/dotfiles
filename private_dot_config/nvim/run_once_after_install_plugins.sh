#!/bin/bash

# init.vim hash: {{ include "init.vim" | sha256sum }}
nvim --headless +PlugInstall +PlugClean +qall
