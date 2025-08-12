; This is free and unencumbered software released into the public domain.
; See LICENSE in project root for details.

; -------------------------------------------------

; Press F1 to run this macro
; Press F2 to pause this macro
; Press F3 to exit this macro

; ======== Settings ========
global digDuration := 450
global digTimes := 4

global panDuration := 25000


global walkDuration := 250 ; *modification not recommended!
; ==========================

; -------------------------------------------------

global looping := false
F1:: {
    global looping
    looping := !looping ; toggle on/off
    while (looping) {
        Loop digTimes {
                Send("{LButton down}")
                Sleep(digDuration)
                Send("{LButton up}")
                Sleep(2000)
            }
            
            Send("{w down}")
            Sleep(walkDuration)
            Send("{w up}")

            Send("{LButton}")

            Sleep(500)

            Send("{LButton down}")
            Sleep(panDuration)
            Send("{LButton up}")

            Sleep(500)

            Send("{s down}")
            Sleep(walkDuration)
            Send("{s up}")
            Sleep(100)
    }
}

F2:: { ; stop loop, continue script
    global looping
    looping := false
    MsgBox("Script paused")
}

F3:: {
    MsgBox("Exited script")
    ExitApp()
}