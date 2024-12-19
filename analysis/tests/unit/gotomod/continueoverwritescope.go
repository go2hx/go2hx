package main

func main() {
    var j_74 int
    var b_30 bool
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            b_30 = true
            _ = 0
            gotoNext = 41
        case 41:
            if b_30 {
                gotoNext = 47
            } else {
                gotoNext = 401
            }
        case 47:
            println("start")
            j_74 = 0
            gotoNext = 70
        case 70:
            if j_74 < 10 {
                gotoNext = 94
            } else {
                gotoNext = 122
            }
        case 94:
            println("j:", j_74)
            j_74++
            gotoNext = 70
        case 122:
            if !b_30 {
                gotoNext = 128
            } else {
                gotoNext = 190
            }
        case 128:
            panic("already set to false, invalid controlFlow")
            gotoNext = 190
        case 190:
            println("start here?")
            b_30 = true
            gotoNext = 226
        case 226:
            switch {
            case true:
                gotoNext = 237
            default:
                gotoNext = 401
            }
        case 237:
            println("b set false")
            if !b_30 {
                gotoNext = 283
            } else {
                gotoNext = 348
            }
        case 283:
            panic("already set to false, invalid controlFlow")
            gotoNext = 348
        case 348:
            b_30 = false
            println("continue")
            _ = 0
            gotoNext = 41
        case 401:
            gotoNext = 411
        case 411:
            println("end")
            gotoNext = -1
        }
    }
}
