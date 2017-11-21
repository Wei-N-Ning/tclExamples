
proc catchError {} {
    catch {
        glob "/temp/*"
    } msg
    puts "msg>>> $msg"
    puts "erorrInfo>>>\n$::errorInfo"
    
}


proc run {} {
    catchError
}


run
