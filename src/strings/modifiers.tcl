
proc changeCases {} {
    set productName "bodyMotion"
    set pNameLower [string tolower $productName]
    set pNameUpper [string toupper $productName]
    puts [list $productName $pNameLower $pNameUpper]
}


proc trimString {} {
    set code "

def publish(version):

    ph = ProductHandler.getFromHyref(version.hyref)
    "
    puts [string trim $code]
    puts [string trim "/doom/e1/m1/" "/"]
}


proc run {} {
    changeCases
    trimString
}


run

