
proc zipped {} {
    ;# it prints:
    ;# bodyMotion 1
    ;# elementMotion 2
    ;#  3
    ;#  4
    ;#  5
    ;# this is different than Python's zip() function, which respects
    ;# the length of the shortest list
    set productTypes [list "bodyMotion" "elementMotion"]
    set actionTypes [list 1 2 3 4 5]
    foreach pType $productTypes ac $actionTypes {
        ;# puts "$pType $ac"
    }
}


proc appendToList {} {
    set productTypes [list "bodyMotion" "elementMotion"]
    lappend productTypes "fxMotion" "bulletRig"
    foreach pType $productTypes {
        ;# puts $pType
    }
}


proc insertToList {} {
    ;# be attention to the fact that:
    ;# lappend modifies a list, hence taking the name of the list obj;
    ;# linsert produces a list, hence taking THE VALUE OF the list obj; 
    set productNames {"imp" "archville" "lostsoul"}
    puts [linsert $productNames 1 "hellknight"]
}


proc replaceElementsInList {} {
    set actions {"add" "create" "insert" "delete"}
    puts [lreplace $actions 1 3 "ac.create" "ac.insert" "ac.delete"]
}


proc setElements {} {
    set actions {"add" "create" "insert" "delete"}
    lset actions 2 "ac.insert"
    puts $actions
}


proc run {} {
    zipped
    
    appendToList
    insertToList
    replaceElementsInList
    setElements
}


run
