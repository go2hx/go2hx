package main

func main() {
    var foo_46 bool
    var m_38 int
    var n_30 int
    var j_153 int
    var OuterLoopBreak bool = false
    var i_106 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            n_30 = 2
            m_38 = 2
            foo_46 = true
            gotoNext = 90
        case 90:
            i_106 = 0
            OuterLoopBreak = false
            gotoNext = 102
        case 102:
            if !OuterLoopBreak && (i_106 < n_30) {
                gotoNext = 125
            } else {
                gotoNext = 304
            }
        case 121:
            i_106++
            gotoNext = 102
        case 125:
            println("I: ", i_106)
            j_153 = 0
            gotoNext = 149
        case 149:
            if j_153 < m_38 {
                gotoNext = 172
            } else {
                gotoNext = 121
            }
        case 168:
            j_153++
            gotoNext = 149
        case 172:
            gotoNext = 177
        case 177:
            switch foo_46 {
            case true:
                gotoNext = 193
            case false:
                gotoNext = 244
            default:
                gotoNext = 168
            }
        case 193:
            println(foo_46)
            OuterLoopBreak = true
            gotoNext = 102
        case 244:
            println(foo_46)
            gotoNext = 90
        case 304:
            gotoNext = -1
        }
    }
}
