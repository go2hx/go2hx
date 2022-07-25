package main

type lessFunc func(i, j int) bool

func main() {
	a := []lessFunc{test}
	if !a[0](0, 1) {
		panic("wrong value")
	}
}

func test(i, j int) bool {
	return true
}
