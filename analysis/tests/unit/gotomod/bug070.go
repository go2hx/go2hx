package main

import "fmt"

func main() {
    var expect_616 string
    var outerBreak bool = false
    var r_230 string
    var k_219 int
    var i_216 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 239
        case 239:
            k_219 = 0
            outerBreak = false
            gotoNext = 247
        case 247:
            if !outerBreak && (k_219 < 2) {
                gotoNext = 269
            } else {
                gotoNext = 600
            }
        case 265:
            k_219++
            gotoNext = 247
        case 269:
            r_230 += fmt.Sprintln("outer loop top k", k_219)
            if k_219 != 0 {
                gotoNext = 326
            } else {
                gotoNext = 398
            }
        case 326:
            panic("k not zero")
            gotoNext = 398
        case 398:
            i_216 = 0
            gotoNext = 398
            if i_216 < 2 {
                gotoNext = 420
            } else {
                gotoNext = 265
            }
        case 416:
            i_216++
            gotoNext = 398
        case 420:
            if i_216 != 0 {
                gotoNext = 435
            } else {
                gotoNext = 495
            }
        case 435:
            panic("i not zero")
            gotoNext = 495
        case 495:
            r_230 += fmt.Sprintln("inner loop top i", i_216)
            if true {
                gotoNext = 547
            } else {
                gotoNext = 416
            }
        case 547:
            r_230 += "do break\n"
            outerBreak = true
            gotoNext = 247
        case 600:
            r_230 += "broke\n"
            expect_616 = `outer loop top k 0
inner loop top i 0
do break
broke
`
            if r_230 != expect_616 {
                gotoNext = 698
            } else {
                gotoNext = 714
            }
        case 698:
            panic(r_230)
            gotoNext = 714
        case 714:
            gotoNext = -1
        }
    }
}
