package main

import "fmt"

func main() {
	y := x{20}
	y.t()
	fmt.Println(y.int)
}

func ca(y x) error {
	return y
}

func (y x) Error() string {
	return "h"
}

type x struct {
	int
}

func (y *x) t() {
	*y = x{10}
}
