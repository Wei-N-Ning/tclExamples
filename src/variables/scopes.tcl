
;# to simulate instance-method and instance-attributes
proc localState {} {
    ;# to define local state that acts like instance attributes
    set foo 1001
    set bar 2002
    
    ;# to modify the local state, similar to a modifier or setter
    proc _ {} {
        upvar bar barRef
        
        ;# temporary variable that does not affect the local state
        set foo 1
        incr barRef 500
    };_
    
    ;# to access the local state, similar to a getter
    proc _ {} {
        upvar foo fooRef
        if {$fooRef > 1000} {
            puts "good foo"
        }
    };_
}


proc findPublishAction {productType o_actionId} {
    upvar $o_actionId o_actionIdRef
    switch $productType {
        "bodyMotion" {
            set o_actionIdRef 1
            return true
        }
        "fxMotion" {
            set o_actionIdRef 5
            return true
        }
        "default" {
            set o_actionIdRef 100
            return false
        }
    }
}

proc run {} {
    localState
    
    set actionId -1
    if {[findPublishAction "bodyMotion" actionId]} {
        puts $actionId
    }
    if {[findPublishAction "fxMotion" actionId]} {
        puts $actionId
    }
}

run
