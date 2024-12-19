package main

func main() {
    var i_49 int
    var v_52 rune
    var values_45 = []rune{}
    var keys_45 = []int{}
    var i_57 int
    var s_30 string
    gotoNext := 0
    _ = gotoNext == 0
    for gotoNext != -1 {
        switch gotoNext {
        case 0:
            s_30 = "楷书"
            keys_45 = []int{}
            values_45 = []rune{}
            for key, value := range s_30 {
                keys_45 = append(keys_45, key)
                values_45 = append(values_45, value)
            }
            if 0 < len(keys_45) {
                gotoNext = 83
            } else {
                gotoNext = 87
            }
        case 65:
            v_52 = values_45[i_57]
            i_49 = keys_45[i_57]
            println(i_49, v_52)
            i_57++
            gotoNext = 84
        case 83:
            i_57 = 0
            gotoNext = 84
        case 84:
            if i_57 < len(keys_45) {
                gotoNext = 65
            } else {
                gotoNext = 87
            }
        case 87:
            gotoNext = 97
        case 97:
            gotoNext = -1
        }
    }
}
