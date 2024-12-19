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
    for _, tt := range EqualFoldTests {
        if out := EqualFold([]byte(tt.s), []byte(tt.t)); out != tt.out {
            println("out:", out)
            println("tt.out:", tt.out)
            panic("not equal")
        }
        if out := EqualFold([]byte(tt.t), []byte(tt.s)); out != tt.out {
            println("out:", out)
            println("tt.out:", tt.out)
            panic("not equal")
        }
    }
}
func EqualFold(s, t []byte) bool {
    var r_2225 rune
    var size_1552 int
    var tr_960 byte
    var sr_947 byte
    var size_1680 int
    var r_1677 rune
    var r_1549 rune
    var tr_1470 rune
    var sr_1466 rune
    var i_899 int
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            i_899 = 0
            _ = 0
            gotoNext = 907
        case 907:
            if i_899 < len(s) && i_899 < len(t) {
                gotoNext = 943
            } else {
                gotoNext = 1332
            }
        case 943:
            sr_947 = s[i_899]
            tr_960 = t[i_899]
            if sr_947|tr_960 >= utf8.RuneSelf {
                gotoNext = 999
            } else {
                gotoNext = 1043
            }
        case 999:
            gotoNext = 1357
        case 1043:
            if tr_960 == sr_947 {
                gotoNext = 1055
            } else {
                gotoNext = 1120
            }
        case 1055:
            i_899++
            gotoNext = 907
        case 1120:
            if tr_960 < sr_947 {
                gotoNext = 1131
            } else {
                gotoNext = 1206
            }
        case 1131:
            tr_960, sr_947 = sr_947, tr_960
            gotoNext = 1206
        case 1206:
            if 'A' <= sr_947 && sr_947 <= 'Z' && tr_960 == sr_947+'a'-'A' {
                gotoNext = 1252
            } else {
                gotoNext = 1272
            }
        case 1252:
            i_899++
            gotoNext = 907
        case 1272:
            return false
            i_899++
            gotoNext = 907
        case 1332:
            return len(s) == len(t)
            gotoNext = 1357
        case 1357:
            s = s[i_899:]
            t = t[i_899:]
            _ = 0
            gotoNext = 1392
        case 1392:
            if len(s) != 0 && len(t) != 0 {
                gotoNext = 1423
            } else {
                gotoNext = 2398
            }
        case 1423:
            if s[0] < utf8.RuneSelf {
                gotoNext = 1504
            } else {
                gotoNext = 1544
            }
        case 1504:
            sr_1466, s = rune(s[0]), s[1:]
            gotoNext = 1608
        case 1544:
            gotoNext = 1544
            r_1549, size_1552 = utf8.DecodeRune(s)
            sr_1466, s = r_1549, s[size_1552:]
            _ = 0
            gotoNext = 1608
        case 1608:
            if t[0] < utf8.RuneSelf {
                gotoNext = 1632
            } else {
                gotoNext = 1672
            }
        case 1632:
            tr_1470, t = rune(t[0]), t[1:]
            gotoNext = 1808
        case 1672:
            gotoNext = 1672
            r_1677, size_1680 = utf8.DecodeRune(t)
            tr_1470, t = r_1677, t[size_1680:]
            _ = 0
            gotoNext = 1808
        case 1808:
            if tr_1470 == sr_1466 {
                gotoNext = 1820
            } else {
                gotoNext = 1885
            }
        case 1820:
            _ = 0
            gotoNext = 1392
        case 1885:
            if tr_1470 < sr_1466 {
                gotoNext = 1896
            } else {
                gotoNext = 1950
            }
        case 1896:
            tr_1470, sr_1466 = sr_1466, tr_1470
            gotoNext = 1950
        case 1950:
            if tr_1470 < utf8.RuneSelf {
                gotoNext = 1972
            } else {
                gotoNext = 2225
            }
        case 1972:
            if 'A' <= sr_1466 && sr_1466 <= 'Z' && tr_1470 == sr_1466+'a'-'A' {
                gotoNext = 2072
            } else {
                gotoNext = 2095
            }
        case 2072:
            _ = 0
            gotoNext = 1392
        case 2095:
            return false
            gotoNext = 2225
        case 2225:
            r_2225 = unicode.SimpleFold(sr_1466)
            _ = 0
            gotoNext = 2255
        case 2255:
            if r_2225 != sr_1466 && r_2225 < tr_1470 {
                gotoNext = 2277
            } else {
                gotoNext = 2314
            }
        case 2277:
            r_2225 = unicode.SimpleFold(r_2225)
            gotoNext = 2255
        case 2314:
            if r_2225 == tr_1470 {
                gotoNext = 2325
            } else {
                gotoNext = 2345
            }
        case 2325:
            _ = 0
            gotoNext = 1392
        case 2345:
            return false
            gotoNext = 1392
        case 2398:
            return len(s) == len(t)
            gotoNext = -1
        }
    }
    panic("unreachable goto control flow")
}
