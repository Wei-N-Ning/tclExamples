
;# implements operator(0) interface
;# does nothing 
proc nullOp {} {
}

;# implements operator(0) interface
;# print the version string to the std output device
proc printVersion {} {
    puts "v1.01"
}

proc run {{function nullOp}} {
    $function
}

proc runVariadic {args} {
    puts $args
}

run  ;# calls nullOp
run printVersion
runVariadic
runVariadic 1 2 
runVariadic {"1" "2"} {1 2}
