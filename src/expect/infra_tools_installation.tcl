#!/usr/bin/env expect -f

# install infra-tools HEAD version using homebrew commands
spawn bash

exp_send "brew uninstall infra-tools\n"
expect

exp_send "brew update\n"
expect 

exp_send "brew install infra-tools --HEAD\n"
expect
