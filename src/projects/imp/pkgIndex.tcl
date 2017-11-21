
package provide wtImp 1.0


namespace eval ::_wtImpl:: {
    
    proc subFromState {i} {
        incr ::wtImp::state -$i
    }
    
}


namespace eval ::wtImp:: {
    
    variable state 44
    
    proc GetState {} {
        return $::wtImp::state
    }
    
    proc AddToState {i} {
        incr ::wtImp::state $i
    }
    
    proc ResetState {} {
        set ::wtImp::state 0
    }
    
}

