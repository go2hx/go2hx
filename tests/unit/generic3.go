package main

func main() {
	if test() != 0.0 || test2() != "" {
		panic("error")
	}
}

func test[t float64]() (s t) {
	return
}

func test2[int string]() (s string) {
	return
}
