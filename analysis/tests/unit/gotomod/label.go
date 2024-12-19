package main

func main() {
    var i_224 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            i_224 = 0
            if false {
                gotoNext = 241
            } else {
                gotoNext = 263
            }
        case 241:
            gotoNext = 417
        case 263:
            if false {
                gotoNext = 272
            } else {
                gotoNext = 294
            }
        case 272:
            gotoNext = 417
        case 294:
            if false {
                gotoNext = 303
            } else {
                gotoNext = 325
            }
        case 303:
            gotoNext = 417
        case 325:
            gotoNext = 417
        case 362:
            i_224 = i_224 + 1
            if i_224 < 100 {
                gotoNext = 391
            } else {
                gotoNext = 409
            }
        case 391:
            gotoNext = 362
        case 409:
            return
            gotoNext = 417
        case 417:
            gotoNext = 362
        }
    }
}
