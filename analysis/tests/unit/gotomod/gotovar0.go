package main

func main() {
    var y_33 int
    var x_30 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            x_30, y_33 = 0, 1
            x_30, y_33 = 10, 10
            gotoNext = 70
        case 70:
            println(x_30, y_33)
            gotoNext = -1
        }
    }
}
