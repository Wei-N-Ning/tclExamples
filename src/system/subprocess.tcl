

proc run {} {
    puts [exec ls {*}[glob "/work/*"]]
}


run 
