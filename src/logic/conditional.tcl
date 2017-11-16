
;# convert a product type-name to an integer
;# if the type-name is unregistered or is an empty string, return -1  
;# productType: a string
;# return: int
proc typeToId {productType} {
    if {$productType == "elementMotion"} {
        return 1
    } elseif {$productType == "camera"} {
        return 2
    } else {
        return -1
    }
}

proc getActionId {productType} {
    switch $productType {
        "elementMotion" {
            return 12
        }
        "fxMotion" {
            return 13
        }
        "default" {
            return -1
        }
    }
}

proc run {} {
    puts [typeToId "elementMotion"]
    puts [typeToId "camera"]
    puts [typeToId "fxMotion"]
    puts [typeToId ""]
    
    puts [getActionId "elementMotion"]
    puts [getActionId "fxMotion"]
    puts [getActionId ""]
}

run
