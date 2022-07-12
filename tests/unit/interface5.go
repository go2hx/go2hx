package main

func main() {
	y := x{20}
	y.t()
	if y.int != 10 {
		panic("wrong value")
	}
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
