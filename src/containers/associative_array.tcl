;# ================
;# worth reading this part again!
;# ================

global arySharedState


proc print {a} {
    upvar $a aRef
    foreach key [array names aRef] {
        puts [format "%s: %s" $key "$aRef($key)"]
    }
} 


proc createMapExample {} {
    set actionByProduct("bodyMotion") "acid"
    set actionByProduct("fxMotion") "ad"
    print actionByProduct
}


proc initializeState {} {
    global arySharedState
    set arySharedState("action") "publish"
    set arySharedState("productTypes") {"bodyMoton" "fxMotion" "card"}
}


proc setState {} {
    global arySharedState
    set productTypes arySharedState("productTypes")
    lappend $productTypes "elementMotion"
}


proc getState {} {
    global arySharedState
    print arySharedState
}


proc run {} {
    createMapExample
    
    initializeState
    getState
    setState
    getState
}


run
