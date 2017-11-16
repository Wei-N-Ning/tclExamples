
proc simpleWhileLoop {} {
    set range 10
    set idx 0
    set sidecar 101
    while {$idx < $range} {
        puts "$idx $sidecar"
        ;# there is no += operator but an "incr" command 
        set idx [expr {$idx + 1}]
        incr sidecar
    }
}

proc simpleForLoop {from_ to_} {
    for {set idx $from_} {$idx < $to_} {incr idx} {
        puts $idx
    }
}

proc run {} {
    simpleWhileLoop
    simpleForLoop 4 7
}

run
