
proc formatDecimalIntegers {} {
    puts [format "%d %02d %08d" 2 2 2]
}


proc formatHexadecimalIntegers {} {
    puts [format "0x%x 0x%02x 0x%08x" 15 15 999]
}


proc formatOctalIntegers {} {
    puts [format "%o 0x%x 0x%x 0x%x" 0555 0555 0777 0754]
}


proc formatFloats {} {
    set _r [expr {1000.0 / 1001.0}]
    set NTSCs [list]
    foreach int {24 48 60} {
        lappend NTSCs [format "%03.07f" [expr {$int * $_r}]]
    }
    puts $NTSCs
}


proc leftAndRightJustify {} {
    puts [format "<%-8d> <%8d>" 15 15]
}


proc run {} {
    formatDecimalIntegers
    formatHexadecimalIntegers
    formatOctalIntegers
    formatFloats
    leftAndRightJustify
}


run
