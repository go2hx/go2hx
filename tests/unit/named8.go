package main

type x struct {
	y
}

type y interface {
	Method(y bool) bool
}

type z int

func (z) Method(y bool) bool {
	return y
}

func main() {
	z := x{z(10)}
	var y y = z
	if !y.Method(true) {
		panic("incorrect value")
	}
}
