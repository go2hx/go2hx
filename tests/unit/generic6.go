package main

func main() {
	x := test[int]
	if !x() {
		panic("fail")
	}
}

func test[T int | string]() bool {
	return true
}
