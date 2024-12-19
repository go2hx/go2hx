package main

func main() {
    var LABEL2Break bool = false
    var i_72 int
    var y_41 bool
    var x_30 bool
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            x_30 = true
            y_41 = false
            gotoNext = 52
        case 52:
            gotoNext = 59
        case 59:
            i_72 = 0
            LABEL2Break = false
            gotoNext = 68
        case 68:
            if !LABEL2Break && (i_72 < 10) {
                gotoNext = 92
            } else {
                gotoNext = 245
            }
        case 88:
            i_72++
            gotoNext = 68
        case 92:
            if x_30 {
                gotoNext = 101
            } else {
                gotoNext = 88
            }
        case 101:
            if y_41 {
                gotoNext = 111
            } else {
                gotoNext = 205
            }
        case 111:
            x_30 = false
            if i_72 == 2 {
                gotoNext = 141
            } else {
                gotoNext = 170
            }
        case 141:
            gotoNext = 52
        case 170:
            gotoNext = 170
            gotoNext = 59
        case 205:
            gotoNext = 205
            y_41 = true
            i_72++
            gotoNext = 68
        case 245:
            gotoNext = -1
        }
    }
}
