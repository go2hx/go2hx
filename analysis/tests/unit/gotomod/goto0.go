package main

func main() {
    var y_33 func() int
    var x_30 func() int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            x_30, y_33 = func() int {
                return 0
            }, func() int {
                return 1
            }
            x_30, y_33 = func() int {
                return 2
            }, func() int {
                return 3
            }
            gotoNext = 168
        case 168:
            println(x_30(), y_33())
            gotoNext = -1
        }
    }
}
