package main

func main() {
	var (
		intMap    = make(map[int]int)
		intMapPtr = &intMap
	)
	//intMap, intMapPtr := make(map[int]int), &intMap
	_ = intMapPtr
	di := 10
	extra := 2
	extraMask := 11
	// if wrong order di+extra -> di = 10+2=12
	di, dfrac := di+extra, di+extraMask // 10 (false 12) + 11 = 21 (false 23)
	if di != 12 || dfrac != 21 {
		println(di, dfrac)
		panic("wrong values")
	}
}
