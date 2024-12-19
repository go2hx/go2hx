package main

func f(j int) {
    var loopBreak bool = false
    var i_210 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 199
        case 199:
            i_210 = 0
            loopBreak = false
            gotoNext = 206
        case 206:
            if !loopBreak && (i_210 < 4) {
                gotoNext = 229
            } else {
                gotoNext = 285
            }
        case 229:
            if i_210 == 1 {
                gotoNext = 243
            } else {
                gotoNext = 268
            }
        case 243:
            i_210++
            gotoNext = 206
        case 268:
            println(j, i_210)
            i_210++
            gotoNext = 206
        case 285:
            gotoNext = -1
        }
    }
}
func main() {
    var loopBreak bool = false
    var j_313 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 302
        case 302:
            j_313 = 0
            loopBreak = false
            gotoNext = 309
        case 309:
            if !loopBreak && (j_313 < 5) {
                gotoNext = 332
            } else {
                gotoNext = 376
            }
        case 328:
            j_313++
            gotoNext = 309
        case 332:
            f(j_313)
            if j_313 == 3 {
                gotoNext = 353
            } else {
                gotoNext = 328
            }
        case 353:
            loopBreak = true
            gotoNext = 309
        case 376:
            gotoNext = -1
        }
    }
}
