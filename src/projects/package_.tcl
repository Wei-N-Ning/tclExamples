
package require wtImp


proc run {} {
    puts [::wtImp::GetState]
    ::wtImp::AddToState 10
    puts [::wtImp::GetState]
    ::wtImp::ResetState
    puts [::wtImp::GetState]
}


run
