package main

type x struct {
	y
}

type y interface {
	Method() string
}

type z int

func (z) Method() string {
	return "z"
}

func main() {
	z := x{z(10)}
	var y y = z
	if y.Method() != "z" {
		panic("incorrect value")
	}
}
