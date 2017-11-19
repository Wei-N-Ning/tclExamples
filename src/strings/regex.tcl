
proc testRegexSearch {} {
    set r [regexp {<\w+>} "<shot> </shot>" match]
    if {$r} {
        puts $match
    }
}


proc run {} {
    testRegexSearch
}


run
