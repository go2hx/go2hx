package main

import (
    "unicode"
    "unicode/utf8"
)

var EqualFoldTests = []struct {
    s, t string
    out  bool
}{{"abc", "abc", true}, {"ABcd", "ABcd", true}, {"123abc", "123ABC", true}, {"αβδ", "ΑΒΔ", true}, {"abc", "xyz", false}, {"abc", "XYZ", false}, {"abcdefghijk", "abcdefghijX", false}, {"abcdefghijk", "abcdefghij\u212A", true}, {"abcdefghijK", "abcdefghij\u212A", true}, {"abcdefghijkz", "abcdefghij\u212Ay", false}, {"abcdefghijKz", "abcdefghij\u212Ay", false}}

func main() {
    for i, tt := range EqualFoldTests {
        if i != 3 {
            continue
        }
        println("i:", i)
        if out := EqualFold(tt.s, tt.t); out != tt.out {
            println("out:", out)
            println("tt.out:", tt.out)
            panic("not equal")
        }
        if out := EqualFold(tt.t, tt.s); out != tt.out {
            println("out:", out)
            println("tt.out:", tt.out)
            panic("not equal")
        }
    }
}
func EqualFold(s, t string) bool {
    var tr_982 byte
    var sr_969 byte
    var r_2385 rune
    var sr_1421 rune
    var values_1414 = []rune{}
    var keys_1414 = []int{}
    var i_1427 int
    var i_921 int
    var size_1726 int
    var r_1723 rune
    var tr_1619 rune
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            i_921 = 0
            _ = 0
            gotoNext = 929
        case 929:
            if i_921 < len(s) && i_921 < len(t) {
                gotoNext = 965
            } else {
                gotoNext = 1354
            }
        case 965:
            sr_969 = s[i_921]
            tr_982 = t[i_921]
            if sr_969|tr_982 >= utf8.RuneSelf {
                gotoNext = 1021
            } else {
                gotoNext = 1065
            }
        case 1021:
            gotoNext = 1379
        case 1065:
            if tr_982 == sr_969 {
                gotoNext = 1077
            } else {
                gotoNext = 1142
            }
        case 1077:
            i_921++
            gotoNext = 929
        case 1142:
            if tr_982 < sr_969 {
                gotoNext = 1153
            } else {
                gotoNext = 1228
            }
        case 1153:
            tr_982, sr_969 = sr_969, tr_982
            gotoNext = 1228
        case 1228:
            if 'A' <= sr_969 && sr_969 <= 'Z' && tr_982 == sr_969+'a'-'A' {
                gotoNext = 1274
            } else {
                gotoNext = 1294
            }
        case 1274:
            i_921++
            gotoNext = 929
        case 1294:
            return false
            i_921++
            gotoNext = 929
        case 1354:
            return len(s) == len(t)
            gotoNext = 1379
        case 1379:
            s = s[i_921:]
            t = t[i_921:]
            keys_1414 = []int{}
            values_1414 = []rune{}
            for key, value := range s {
                keys_1414 = append(keys_1414, key)
                values_1414 = append(values_1414, value)
            }
            if 0 < len(keys_1414) {
                gotoNext = 2569
            } else {
                gotoNext = 2643
            }
        case 1435:
            sr_1421 = values_1414[i_1427]
            _ = keys_1414[i_1427]
            println("start")
            if len(t) == 0 {
                gotoNext = 1523
            } else {
                gotoNext = 1615
            }
        case 1523:
            println("return 0")
            return false
            gotoNext = 1615
        case 1615:
            println("t[0]:", t[0])
            if t[0] < utf8.RuneSelf {
                gotoNext = 1678
            } else {
                gotoNext = 1718
            }
        case 1678:
            tr_1619, t = rune(t[0]), t[1:]
            gotoNext = 1888
        case 1718:
            gotoNext = 1718
            r_1723, size_1726 = utf8.DecodeRuneInString(t)
            println("size:", size_1726)
            tr_1619, t = r_1723, t[size_1726:]
            _ = 0
            gotoNext = 1888
        case 1888:
            if tr_1619 == sr_1421 {
                gotoNext = 1900
            } else {
                gotoNext = 1989
            }
        case 1900:
            println("easy case")
            i_1427++
            gotoNext = 2570
        case 1989:
            if tr_1619 < sr_1421 {
                gotoNext = 2000
            } else {
                gotoNext = 2054
            }
        case 2000:
            tr_1619, sr_1421 = sr_1421, tr_1619
            gotoNext = 2054
        case 2054:
            if tr_1619 < utf8.RuneSelf {
                gotoNext = 2076
            } else {
                gotoNext = 2385
            }
        case 2076:
            if 'A' <= sr_1421 && sr_1421 <= 'Z' && tr_1619 == sr_1421+'a'-'A' {
                gotoNext = 2176
            } else {
                gotoNext = 2232
            }
        case 2176:
            println("return ASCII only")
            i_1427++
            gotoNext = 2570
        case 2232:
            println("return 1")
            return false
            gotoNext = 2385
        case 2385:
            r_2385 = unicode.SimpleFold(sr_1421)
            _ = 0
            gotoNext = 2415
        case 2415:
            if r_2385 != sr_1421 && r_2385 < tr_1619 {
                gotoNext = 2437
            } else {
                gotoNext = 2474
            }
        case 2437:
            r_2385 = unicode.SimpleFold(r_2385)
            gotoNext = 2415
        case 2474:
            if r_2385 == tr_1619 {
                gotoNext = 2485
            } else {
                gotoNext = 2534
            }
        case 2485:
            println("continue equal")
            i_1427++
            gotoNext = 2570
        case 2534:
            println("return 2")
            return false
            i_1427++
            gotoNext = 2570
        case 2569:
            i_1427 = 0
            gotoNext = 2570
        case 2570:
            if i_1427 < len(keys_1414) {
                gotoNext = 1435
            } else {
                gotoNext = 2643
            }
        case 2643:
            println("end:", len(t))
            return len(t) == 0
            gotoNext = -1
        }
    }
    panic("unreachable goto control flow")
}
