package main

func main() {
    println(unmarshalPath())
}

type Token struct{}

func (Token) Token() (any, error) {
    return 0, nil
}
func unmarshalPath() (consumed bool, err error) {
    var parents_228 []int
    var recurse_184 bool
    var err_1492 error
    var err_1397 error
    var d_1110 Token
    var j_338 int
    var consumed2_1386 bool
    var t_1229 int
    var i_265 int
    var fields_202 []int
    var t_1570 string
    var err_1129 error
    var tokType_1120 any
    var finfo_287 bool
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            _ = t_1229
            gotoNext = 1613
            recurse_184 = false
            fields_202 = []int{0, 1, 2}
            parents_228 = []int{1, 0, 3}
            gotoNext = 254
        case 254:
            if 0 < len(fields_202) {
                gotoNext = 841
            } else {
                gotoNext = 845
            }
        case 265:
            i_265++
            gotoNext = 842
        case 283:
            finfo_287 = i_265 == 1
            if finfo_287 {
                gotoNext = 314
            } else {
                gotoNext = 334
            }
        case 314:
            i_265++
            gotoNext = 842
        case 334:
            if 0 < len(parents_228[:len(parents_228)-1]) {
                gotoNext = 435
            } else {
                gotoNext = 265
            }
        case 338:
            j_338++
            gotoNext = 436
        case 374:
            if parents_228[j_338] != fields_202[j_338+1] {
                gotoNext = 408
            } else {
                gotoNext = 338
            }
        case 408:
            i_265++
            gotoNext = 842
        case 435:
            j_338 = 0
            gotoNext = 436
        case 436:
            if j_338 < len(parents_228[:len(parents_228)-1]) {
                gotoNext = 374
            } else {
                gotoNext = 265
            }
        case 841:
            i_265 = 0
            gotoNext = 842
        case 842:
            if i_265 < len(fields_202) {
                gotoNext = 283
            } else {
                gotoNext = 845
            }
        case 845:
            if !recurse_184 {
                gotoNext = 857
            } else {
                gotoNext = 1098
            }
        case 857:
            return false, nil
            gotoNext = 1098
        case 1098:
            _ = 0
            gotoNext = 1098
            if true {
                gotoNext = 1102
            } else {
                gotoNext = 1613
            }
        case 1102:
            tokType_1120, err_1129 = d_1110.Token()
            if err_1129 != nil {
                gotoNext = 1162
            } else {
                gotoNext = 1190
            }
        case 1162:
            return true, err_1129
            gotoNext = 1190
        case 1190:
            _ = 0
            gotoNext = 1190
            switch t := tokType_1120.(type) {
            case int:
                t_1229 = t
                gotoNext = 1221
            case string:
                t_1570 = t
                gotoNext = 1559
            default:
                gotoNext = 1613
            }
            gotoNext = 1098
        case 1221:
            consumed2_1386, err_1397 = true, error(nil)
            if err_1397 != nil {
                gotoNext = 1438
            } else {
                gotoNext = 1469
            }
        case 1438:
            return true, err_1397
            gotoNext = 1469
        case 1469:
            if !consumed2_1386 {
                gotoNext = 1483
            } else {
                gotoNext = 0
            }
        case 1483:
            if err_1492 = error(nil); err_1492 != nil {
                gotoNext = 1522
            } else {
                gotoNext = 0
            }
        case 1522:
            return true, err_1492
            gotoNext = 0
        case 1559:
            println(t_1570)
            return true, nil
            _ = t_1570
            gotoNext = 1613
        case 1613:
            gotoNext = -1
        }
    }
    panic("unreachable goto control flow")
}
