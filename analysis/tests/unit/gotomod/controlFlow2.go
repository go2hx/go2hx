package main

func main() {
    if f() != 0 || f2() != 1 || f3() != 2 {
        panic("invalid result")
    }
}
func f() int {
    var b_122 any
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            b_122 = "hello"
            _ = 0
            gotoNext = 139
        case 139:
            if true {
                gotoNext = 143
            } else {
                gotoNext = 211
            }
        case 143:
            _ = 0
            gotoNext = 147
        case 147:
            switch b_122.(type) {
            case int:
                gotoNext = 167
            default:
                gotoNext = 195
            }
        case 167:
            return 0
            gotoNext = 195
        case 195:
            b_122 = int(10)
            gotoNext = 139
        case 211:
            gotoNext = 221
        case 221:
            return 10
            gotoNext = -1
        }
    }
    panic("unreachable goto control flow")
}
func f2() int {
    for {
        break
    }
    return 1
}
func f3() int {
    var b_321 any
    var doubleBreak_339 bool
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            if true {
                gotoNext = 313
            } else {
                gotoNext = 707
            }
        case 313:
            b_321 = "hello"
            doubleBreak_339 = false
            _ = 0
            gotoNext = 362
        case 362:
            if true {
                gotoNext = 366
            } else {
                gotoNext = 581
            }
        case 366:
            _ = 0
            gotoNext = 399
        case 399:
            switch b_321.(type) {
            case int:
                gotoNext = 420
            default:
                gotoNext = 497
            }
        case 420:
            doubleBreak_339 = true
            gotoNext = 497
        case 497:
            if doubleBreak_339 {
                gotoNext = 512
            } else {
                gotoNext = 532
            }
        case 512:
            gotoNext = 581
        case 532:
            b_321 = int(10)
            gotoNext = 362
        case 581:
            gotoNext = 619
        case 619:
            gotoNext = 707
        case 707:
            return 2
            gotoNext = -1
        }
    }
    panic("unreachable goto control flow")
}
