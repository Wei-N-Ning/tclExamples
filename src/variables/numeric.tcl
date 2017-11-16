
proc run {} {
    set idx 1
    puts [expr {$idx * 100}]
    
    set idxf [expr {double($idx) * 3.14}]
    puts $idxf
    set idx_ [expr {int($idxf)}]
    puts $idx_
    
    ;# membership test
    puts [expr {"hyref" in {"hyref" "product" "version"}}]
    puts [expr {"group" in {"hyref" "product" "version"}}]
    
    puts [mag 1 0 1]
}

proc mag {x y z} {
    return [expr {sqrt($x**2 + $y**2 + $z**2)}]
}

run
