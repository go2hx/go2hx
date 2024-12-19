package main

import "strings"

func main() {
    f(0)
    f(0.0)
    f("hi")
}
func f(a any) {
    var a_206 float64
    var a_173 int
    var a_125 string
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            _ = 0
            gotoNext = 90
        case 90:
            switch a := a.(type) {
            case string:
                a_125 = a
                gotoNext = 114
            case int:
                a_173 = a
                gotoNext = 165
            case float64:
                a_206 = a
                gotoNext = 194
            default:
                gotoNext = 231
            }
        case 114:
            println(len(strings.Split(a_125, "")))
            _ = a_125
            gotoNext = 231
        case 165:
            println(a_173 + 10)
            _ = a_173
            gotoNext = 231
        case 194:
            println(a_206 + 1.2)
            _ = a_206
            gotoNext = 231
        case 231:
            gotoNext = 241
        case 241:
            gotoNext = -1
        }
    }
}
