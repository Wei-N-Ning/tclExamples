
proc splitString {s} {
    return [split $s]
}

proc givenEmptyString_expectEmptyReturnList {} {
    set r [splitString ""]
    puts [llength $r]  ;# prints 0
}


proc givenNonString_expectSingleElementList {} {
    set r [splitString 10001]
    puts [llength $r]  ;# prints 1
    puts [lindex $r 0]  ;# prints 10001
}


proc expectDefaultSplitToken {} {
    set r [splitString "doom 2 1993 id software"]
    puts [llength $r]  ;# prints 5
    
    ;# how to access one element in the list
    ;# how to test whether the element exists
    if {"[lindex $r 3]" != "id"} {
        puts "assert error"
    }
}


proc iterateElements {} {
    set lpath "/doom/maps/e1/m1"
    
    ;# the resulting list from the split command includes the first 
    ;# empty element, therefore the foreach statement iterates over 
    ;# in total 5 elements 
    foreach segment [split $lpath "/"] {
        if {"$segment" == ""} {
            puts "empty string; skip it"
            continue
        }
        puts $segment
    }
}


proc run {} {
    givenEmptyString_expectEmptyReturnList
    givenNonString_expectSingleElementList
    expectDefaultSplitToken
    iterateElements
}


run
