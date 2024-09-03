package main

func main() {
	var (
		intMap    = make(map[int]int)
		intMapPtr = &intMap
	)
	_ = intMapPtr
}
