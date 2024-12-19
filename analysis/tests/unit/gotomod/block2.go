package main

func main() {
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 30
        case 30:
            switch {
            case true:
                gotoNext = 40
            default:
                gotoNext = 130
            }
        case 40:
            {
                gotoNext = 53
            }
        case 53:
            println("0")
            if true {
                gotoNext = 82
            } else {
                gotoNext = 109
            }
        case 82:
            println("1")
            gotoNext = 109
        case 109:
            println("2")
            gotoNext = 130
        case 130:
            gotoNext = 140
        case 140:
            gotoNext = -1
        }
    }
}
