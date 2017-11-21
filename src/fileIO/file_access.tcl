

proc filePath {fileName} {
    set this [file normalize [info script]]
    set dir [file dirname $this]
    set testdataDir "$dir/../../resources/testdata"
    return "$testdataDir/$fileName"
}


proc run {} {
    set ft [open [filePath "aliases"]]
    while {[gets $ft line] != -1} {
        puts $line
    }
}


run
