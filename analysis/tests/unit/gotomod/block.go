package main

func main() {
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            {
                gotoNext = 30
            }
        case 30:
            println("0")
            if true {
                gotoNext = 57
            } else {
                gotoNext = 81
            }
        case 57:
            println("1")
            gotoNext = 81
        case 81:
            println("2")
            gotoNext = 98
        case 98:
            gotoNext = 108
        case 108:
            gotoNext = -1
        }
    }
}
