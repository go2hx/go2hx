package main

func main() {
	nilPtrToArray := func() *[2]byte {
		println("Some Activity")
		return nil
	}
	ptr := nilPtrToArray()
	if ptr != nil {
		panic("pointer array is not nil")
	}
	l := len(*ptr)
	if l != 2 {
		println(l)
		panic("len(*ptr) invalid value")
	}
}
