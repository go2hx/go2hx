package main

func main() {
	a := &x{}
	a.test()
}

type x struct {
	int
}

type z int

type l *int

func (y *x) test() {
	*y = x{10}
}

func (y *z) test() {
	*y = 10
}
