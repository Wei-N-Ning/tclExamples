

proc stringLength {} {
    set group "/doom/shots/e1/m1"
    puts [string length $group]
}


proc subString {} {
    set group "/doom/shots/e1/m1"
    puts [string range $group 3 10]
    puts [string index $group 3]
}


proc run {} {
    stringLength
    subString
}


run

