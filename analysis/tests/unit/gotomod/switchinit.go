package main

func main() {
    var p_30 int
    var i_46 = 0
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            p_30 = 0
            if 0 < len(s) {
                gotoNext = 140
            } else {
                gotoNext = 144
            }
        case 42:
            i_46++
            gotoNext = 141
        case 54:
            gotoNext = 58
        case 58:
            switch p_30 = get(); p_30 {
            case 10:
                gotoNext = 82
            default:
                gotoNext = 107
            }
        case 82:
            println(p_30)
            gotoNext = 42
        case 107:
            println("p:", p_30)
            gotoNext = 42
        case 140:
            i_46 = 0
            gotoNext = 141
        case 141:
            if i_46 < len(s) {
                gotoNext = 54
            } else {
                gotoNext = 144
            }
        case 144:
            gotoNext = 154
        case 154:
            gotoNext = -1
        }
    }
}

var s = []int{10, 11}
var pos = 0

func get() int {
    v := s[pos]
    pos++
    return v
}
