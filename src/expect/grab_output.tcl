#!/usr/bin/env expect

# source
# https://wiki.tcl-lang.org/page/Expect+Examples
package require Expect

spawn bash

exp_send "ls -l\n"

set accum {}
expect {
    -regexp {..*} {
        set accum "${accum}$expect_out(0,string)" 
        exp_continue
    }
}

puts $accum
