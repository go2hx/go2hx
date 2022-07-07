package main

func main() {
	s, l := test[string, uint64](true)
	switch interface{}(s).(type) {
	case string:

	default:
		panic("error")
	}
	switch interface{}(l).(type) {
	case uint64:

	default:
		panic("error")
	}
}

func test[t float64 | string, k int32 | uint64](i bool) (s t, l k) {
	return
}
