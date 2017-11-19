
proc sortThenSearchInList {} {
    set projects {"zdoom" "doom" "doom2" "quake" "dquake" "glquake"}
    set projects [lsort $projects]
    puts $projects
    puts [lsearch $projects "*quake"]
    puts [lsearch $projects "gl*"]
    puts [lsearch $projects "?doom"]
    puts [lsearch $projects "doom?"]
}


proc slice {} {
    set projects {"zdoom" "doom" "doom2" "quake" "dquake" "glquake"}
    set p [lrange $projects 2 4]
    puts $p
}


proc run {} {
    sortThenSearchInList
    slice
}


run
