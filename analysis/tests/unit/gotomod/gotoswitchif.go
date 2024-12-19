package main

func main() {
    var hit_30 bool
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            hit_30 = false
            gotoNext = 44
        case 44:
            switch {
            case true:
                gotoNext = 54
            default:
                gotoNext = 121
            }
        case 54:
            if true {
                gotoNext = 75
            } else {
                gotoNext = 106
            }
        case 75:
            _ = 0
            gotoNext = 106
        case 106:
            hit_30 = true
            gotoNext = 121
        case 121:
            gotoNext = 131
        case 131:
            if !hit_30 {
                gotoNext = 146
            } else {
                gotoNext = 179
            }
        case 146:
            panic("didn't reach hit")
            gotoNext = 179
        case 179:
            gotoNext = -1
        }
    }
}
