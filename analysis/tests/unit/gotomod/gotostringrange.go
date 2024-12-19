package main

func r(j int) {
    var keys_206 = []int{}
    var i_218 int
    var i_210 int
    var c_213 rune
    var values_206 = []rune{}
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 199
        case 199:
            keys_206 = []int{}
            values_206 = []rune{}
            for key, value := range "goclang" {
                keys_206 = append(keys_206, key)
                values_206 = append(values_206, value)
            }
            if 0 < len(keys_206) {
                gotoNext = 292
            } else {
                gotoNext = 295
            }
        case 234:
            c_213 = values_206[i_218]
            i_210 = keys_206[i_218]
            if i_210 == 2 {
                gotoNext = 248
            } else {
                gotoNext = 273
            }
        case 248:
            i_218++
            gotoNext = 293
        case 273:
            println(string(c_213))
            i_218++
            gotoNext = 293
        case 292:
            i_218 = 0
            gotoNext = 293
        case 293:
            if i_218 < len(keys_206) {
                gotoNext = 234
            } else {
                gotoNext = 295
            }
        case 295:
            gotoNext = -1
        }
    }
}
func main() {
    var loopBreak bool = false
    var j_323 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            gotoNext = 312
        case 312:
            j_323 = 0
            loopBreak = false
            gotoNext = 319
        case 319:
            if !loopBreak && (j_323 < 4) {
                gotoNext = 342
            } else {
                gotoNext = 386
            }
        case 338:
            j_323++
            gotoNext = 319
        case 342:
            r(j_323)
            if j_323 == 0 {
                gotoNext = 363
            } else {
                gotoNext = 338
            }
        case 363:
            loopBreak = true
            gotoNext = 319
        case 386:
            gotoNext = -1
        }
    }
}
