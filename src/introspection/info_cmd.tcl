
proc printIfExists {v} {
    upvar $v vRef
    if {[info exists vRef]} {
        puts $vRef
    }
}


proc run {} {
    set a "thereisacow"
    printIfExists a
    
}

run
