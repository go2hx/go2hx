package main

func main() {
	a := x{}
	b := y(a)
	c := z(b)
	c.test()
}

type w = struct {
	x int
}

type x struct{}

func (x) test() w {
	return w{}
}

type y interface {
	test() w
}

type z interface {
	test() struct{ x int }
}
