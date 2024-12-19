package main

func main() {
    var i_30 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            i_30 = -1
            _ = 0
            gotoNext = 39
        case 39:
            if true {
                gotoNext = 48
            } else {
                gotoNext = 223
            }
        case 48:
            i_30++
            gotoNext = 58
        case 58:
            switch i_30 {
            case 0:
                gotoNext = 71
            case 1:
                gotoNext = 116
            case 2:
                gotoNext = 161
            case 3:
                gotoNext = 180
            default:
                gotoNext = 204
            }
        case 71:
            println("continue")
            _ = 0
            gotoNext = 39
        case 116:
            println("continue")
            _ = 0
            gotoNext = 39
        case 161:
            gotoNext = 204
        case 180:
            return
            gotoNext = 204
        case 204:
            println("end")
            gotoNext = 39
        case 223:
            gotoNext = 233
        case 233:
            gotoNext = -1
        }
    }
}
