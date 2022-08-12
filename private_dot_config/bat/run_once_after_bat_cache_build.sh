#!/bin/bash

# syntaxes/Fennel.sublime-syntax hash: {{ include "Fennel.sublime-syntax" | sha256sum }}
# syntaxes/Bats.sublime-syntax hash: {{ include "Bats.sublime-syntax" | sha256sum }}
# themes/Everblush.tmTheme hash: {{ include "themes/Everblush.tmTheme" | sha256sum }}
bat cache --build
