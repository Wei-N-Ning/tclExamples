
proc run {} {
   foreach filePath [glob -nocomplain "/repository/envfile/*"] {
       puts "-----------"
       puts $filePath
       #~ puts [file dirname $filePath]
       #~ puts [file extension $filePath]
       #~ puts [file join [file dirname $filePath] "foo.tga"]
       #~ puts [file rootname $filePath]
       #~ puts [file split $filePath]
       #~ puts [file tail $filePath]
       #~ puts [file rootname [file tail $filePath]]
       puts [clock format [file atime $filePath]]
   }
}


run
