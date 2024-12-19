package main

func main() {
    var j_121 int
    var OuterLoopBreak bool = false
    var i_74 int
    var foo_46 bool
    var m_38 int
    var n_30 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            n_30 = 2
            m_38 = 2
            foo_46 = true
            gotoNext = 58
        case 58:
            i_74 = 0
            OuterLoopBreak = false
            gotoNext = 70
        case 70:
            if !OuterLoopBreak && (i_74 < n_30) {
                gotoNext = 93
            } else {
                gotoNext = 253
            }
        case 89:
            i_74++
            gotoNext = 70
        case 93:
            println("I: ", i_74)
            j_121 = 0
            gotoNext = 117
        case 117:
            if j_121 < m_38 {
                gotoNext = 140
            } else {
                gotoNext = 89
            }
        case 136:
            j_121++
            gotoNext = 117
        case 140:
            gotoNext = 145
        case 145:
            switch foo_46 {
            case true:
                gotoNext = 161
            case false:
                gotoNext = 212
            default:
                gotoNext = 136
            }
        case 161:
            println(foo_46)
            OuterLoopBreak = true
            gotoNext = 70
        case 212:
            println(foo_46)
            gotoNext = 136
        case 253:
            gotoNext = -1
        }
    }
}
