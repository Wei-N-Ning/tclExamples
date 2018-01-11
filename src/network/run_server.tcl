;# client example:

#~ import socket
#~ s = socket.socket()
#~ s.connect(('127.0.0.1', 18018))
#~ s.sendall('cmd_doom')
#~ s.sendall('cmd_doom2')


package require Tk

proc cmd_doom {} {
    puts "doom!!!"
}

proc cmd_doom2 {} {
    puts "Doom 2 >>><<<"
}

proc on_connect {newsock clientAddress clientPort} {
    fconfigure $newsock -blocking 0
    fileevent  $newsock readable [list handleInput $newsock]
}

proc handleInput {f} {
    if {[eof $f]} {
        fileevent $f readable {}
        close     $f
        return
    }
    set line [read $f]
    puts "+ received: $line"
    catch {uplevel #0 $line} msg
    if {"$msg" != ""} {
        puts "failed to execute command: $line"
        puts "details: $msg"
    }
}

socket -server on_connect 18018
