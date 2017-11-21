
;# similar to Python's dict constructor:
;# dict((k, v) for k, v in someiterator)
;# 
;# it respects the length of the shorter list 
proc createDict {keys values} {
    foreach k $keys v $values {
        if {"$k" == "" | "$v" == ""} {
            continue
        }
        dict set d $k $v
    }
    return $d
}

;# similar to Python's pretty-print
;# returns a string
proc sprintDict {d} {
    set s [format "dict with %d members:\n" [dict size $d]]
    dict for {key value} $d {
        set s "$s$key: $value\n"
    }
    return $s
}
