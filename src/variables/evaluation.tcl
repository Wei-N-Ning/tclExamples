
proc run {} {
    puts [set foo "bar"]
    puts $foo
    puts "\O777"  ;# print numeric characters
    puts "\u64"
    
    puts {$foo $bar}  ;# prints: $foo $bar
    puts {"$foo" "$bar"}  ;# prints: "$foo" "$bar"
    
    set cmd "set"
    puts [$cmd num 10]
    puts {[set num 11]}  ;# prints: [set num 11]
    puts "[set num 11]"  ;# prints: 11
}

run
