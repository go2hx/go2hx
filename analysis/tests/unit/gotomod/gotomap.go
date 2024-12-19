package main

func main() {
    var key_37 int
    var keys_30 []string = []string{}
    var i_44 int = 0
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            keys_30 = []string{}
            for key := range map[string]int{"hello": 0} {
                keys_30 = append(keys_30, key)
            }
            if 0 < len(map[string]int{"hello": 0}) {
                gotoNext = 94
            } else {
                gotoNext = 98
            }
        case 77:
            key_37 = map[string]int{"hello": 0}[keys_30[i_44]]
            _ = keys_30[i_44]
            println(key_37)
            i_44++
            gotoNext = 95
        case 94:
            i_44 = 0
            gotoNext = 95
        case 95:
            if i_44 < len(keys_30) {
                gotoNext = 77
            } else {
                gotoNext = 98
            }
        case 98:
            gotoNext = 108
        case 108:
            gotoNext = -1
        }
    }
}
