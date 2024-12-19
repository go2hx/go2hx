package main

func main() {
    var i_30 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            i_30 = 0
            gotoNext = 38
        case 38:
            switch i_30 {
            case 0:
                gotoNext = 50
            case 1:
                gotoNext = 86
            case 2:
                gotoNext = 122
            default:
                gotoNext = 168
            }
        case 50:
            println(0)
            gotoNext = 86
        case 86:
            println(1)
            gotoNext = 122
        case 122:
            println(2)
            gotoNext = 168
        case 168:
            gotoNext = 178
        case 178:
            gotoNext = -1
        }
    }
}
