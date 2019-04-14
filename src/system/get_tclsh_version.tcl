#!/usr/bin/env tclsh

# source 
# https://stackoverflow.com/questions/9200108/get-the-version-of-tcl-from-the-command-line

# see also
# https://wiki.tcl-lang.org/page/Apple+Macintosh+and+Tcl%2FTk

# MacOS X comes with Tcl installed! With Tiger you also get a good 
# selection of basic extensions, a subset of TclTkAquaBI. The 
# state-of-the-art distribution of TclTk for OS X is Daniel Steffen's 
# BI distro TclTkAquaBI. It's a breeze to install, and it comes with 
# lots of useful extensions. 

# ActiveState also distributes ActiveTcl for OS X.



proc show_tclsh_version {} {
    upvar tcl_version tcl_version
    puts $tcl_version
}

puts $tcl_version
show_tclsh_version
