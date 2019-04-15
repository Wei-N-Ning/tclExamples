#!/usr/bin/env expect

# how to spawn the subject process
spawn echo "there is"
# prints before spawning the subject process
puts "there is a cow"

expect {
    "there is" {
        puts "succeeded"
    }
    "no spoon" {
        puts "failed"
    }
}

# send() allows you to semd something to the console
# must include the newline (cartrige) character
send "there is a cow sent from send()\r"

interact
# interacting to echo process starts here
# ...
