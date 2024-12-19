package main

func main() {
    sliceFunc()
    mapFunc()
}
func sliceFunc() {
    var a_111 []int
    var i_303 int
    var v_268 int
    var i_229 int
    var b_211 []int
    var v_176 int
    var i_137 int
    var i_173 int
    var v_350 int
    var i_265 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            a_111 = []int{1, 2, 3}
            if 0 < len(a_111) {
                gotoNext = 165
            } else {
                gotoNext = 169
            }
        case 150:
            println(i_137)
            i_137++
            gotoNext = 166
        case 165:
            i_137 = 0
            gotoNext = 166
        case 166:
            if i_137 < len(a_111) {
                gotoNext = 150
            } else {
                gotoNext = 169
            }
        case 169:
            if 0 < len(a_111) {
                gotoNext = 207
            } else {
                gotoNext = 211
            }
        case 189:
            v_176 = a_111[i_173]
            println(i_173, v_176)
            i_173++
            gotoNext = 208
        case 207:
            i_173, v_176 = 0, a_111[0]
            gotoNext = 208
        case 208:
            if i_173 < len(a_111) {
                gotoNext = 189
            } else {
                gotoNext = 211
            }
        case 211:
            b_211 = []int{}
            if 0 < len(b_211) {
                gotoNext = 257
            } else {
                gotoNext = 261
            }
        case 242:
            println(i_229)
            i_229++
            gotoNext = 258
        case 257:
            i_229 = 0
            gotoNext = 258
        case 258:
            if i_229 < len(b_211) {
                gotoNext = 242
            } else {
                gotoNext = 261
            }
        case 261:
            if 0 < len(b_211) {
                gotoNext = 299
            } else {
                gotoNext = 303
            }
        case 281:
            v_268 = b_211[i_265]
            println(i_265, v_268)
            i_265++
            gotoNext = 300
        case 299:
            i_265, v_268 = 0, b_211[0]
            gotoNext = 300
        case 300:
            if i_265 < len(b_211) {
                gotoNext = 281
            } else {
                gotoNext = 303
            }
        case 303:
            i_303 = 0
            if 0 < len(a_111) {
                gotoNext = 342
            } else {
                gotoNext = 346
            }
        case 327:
            println(i_303)
            i_303++
            gotoNext = 343
        case 342:
            i_303 = 0
            gotoNext = 343
        case 343:
            if i_303 < len(a_111) {
                gotoNext = 327
            } else {
                gotoNext = 346
            }
        case 346:
            if 0 < len(a_111) {
                gotoNext = 394
            } else {
                gotoNext = 399
            }
        case 376:
            v_350 = a_111[i_303]
            println(i_303, v_350)
            i_303++
            gotoNext = 395
        case 394:
            i_303 = 0
            gotoNext = 395
        case 395:
            if i_303 < len(a_111) {
                gotoNext = 376
            } else {
                gotoNext = 399
            }
        case 399:
            gotoNext = 409
        case 409:
            gotoNext = -1
        }
    }
}
func mapFunc() {
    var i_686 int = 0
    var k_657 string
    var k_527 string
    var i_606 int = 0
    var total_582 int
    var keys_523 []string = []string{}
    var i_781 int = 0
    var v_763 int
    var k_598 string
    var i_532 int = 0
    var totalK_510 int
    var keys_770 []string = []string{}
    var keys_678 []string = []string{}
    var v_601 int
    var keys_594 []string = []string{}
    var a_436 map[string]int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            a_436 = map[string]int{"one": 1, "two": 2, "three": 3}
            _ = a_436
            totalK_510 = 0
            keys_523 = []string{}
            for key := range a_436 {
                keys_523 = append(keys_523, key)
            }
            if 0 < len(a_436) {
                gotoNext = 561
            } else {
                gotoNext = 565
            }
        case 540:
            k_527 = keys_523[i_532]
            totalK_510 += len(k_527)
            i_532++
            gotoNext = 562
        case 561:
            i_532 = 0
            gotoNext = 562
        case 562:
            if i_532 < len(keys_523) {
                gotoNext = 540
            } else {
                gotoNext = 565
            }
        case 565:
            println(totalK_510)
            total_582 = 0
            keys_594 = []string{}
            for key := range a_436 {
                keys_594 = append(keys_594, key)
            }
            if 0 < len(a_436) {
                gotoNext = 637
            } else {
                gotoNext = 641
            }
        case 614:
            v_601 = a_436[keys_594[i_606]]
            k_598 = keys_594[i_606]
            _ = k_598
            total_582 += v_601
            i_606++
            gotoNext = 638
        case 637:
            i_606 = 0
            gotoNext = 638
        case 638:
            if i_606 < len(keys_594) {
                gotoNext = 614
            } else {
                gotoNext = 641
            }
        case 641:
            println(total_582)
            k_657 = ""
            totalK_510 = 0
            keys_678 = []string{}
            for key := range a_436 {
                keys_678 = append(keys_678, key)
            }
            if 0 < len(a_436) {
                gotoNext = 715
            } else {
                gotoNext = 719
            }
        case 694:
            k_657 = keys_678[i_686]
            totalK_510 += len(k_657)
            i_686++
            gotoNext = 716
        case 715:
            i_686 = 0
            gotoNext = 716
        case 716:
            if i_686 < len(keys_678) {
                gotoNext = 694
            } else {
                gotoNext = 719
            }
        case 719:
            println(totalK_510)
            totalK_510 = 0
            total_582 = 0
            keys_770 = []string{}
            for key := range a_436 {
                keys_770 = append(keys_770, key)
            }
            if 0 < len(a_436) {
                gotoNext = 823
            } else {
                gotoNext = 827
            }
        case 789:
            v_763 = a_436[keys_770[i_781]]
            k_657 = keys_770[i_781]
            totalK_510 += len(k_657)
            total_582 += v_763
            i_781++
            gotoNext = 824
        case 823:
            i_781 = 0
            gotoNext = 824
        case 824:
            if i_781 < len(keys_770) {
                gotoNext = 789
            } else {
                gotoNext = 827
            }
        case 827:
            println(total_582)
            println(totalK_510)
            gotoNext = 870
        case 870:
            gotoNext = -1
        }
    }
}
