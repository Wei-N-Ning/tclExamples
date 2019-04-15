#!/usr/bin/env expect

# the arguments following sudo are interpreted as a single 
# string if not quoted individually
spawn sudo "echo" "there is a"

#
expect "assword"
send "Levelup7/12!\r"

interact
