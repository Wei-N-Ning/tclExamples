#!/usr/bin/env tclsh

# source 
# https://stackoverflow.com/questions/9200108/get-the-version-of-tcl-from-the-command-line

proc show_tclsh_version {} {
    upvar tcl_version tcl_version
    puts $tcl_version
}

puts $tcl_version
show_tclsh_version
