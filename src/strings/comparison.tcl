
proc compareEmptyStrings {} {
    puts [string compare "" ""]
    puts [string compare "" 0]
    puts [string compare "" {}]
}


proc compareSingleCharacter {} {
    puts [string compare "a" "A"]
    puts [string compare "A" " "]
    puts [string compare 0x11 0x12]
}


proc compareMultipleCharacters {} {
    puts [string compare "thereisacow" "thereisacow"]
    puts [string first "e" "thereisacow"]
    puts [string last "ab" "aabbaaabbbbabaabb"]
}


proc foreachMatch {} {
    set versions {"mesh.v1.published" "mesh.v2" "mesh.v3.published"
        "mesh.v4" "mesh.v5" "mesh.v6.published"}
    foreach version $versions {
        if {[string match "*published" $version]} {
            puts "published: $version"
        }
    }
}


proc stringLength {s} {
    return [string length $s]
}


proc run {} {
    ;# compareEmptyStrings
    ;# compareSingleCharacter
    compareMultipleCharacters
    foreachMatch
}


run
