package main

func main() {
	var x X[int] = 10
	var z y = &x
	z.test()
	a := z.(*X[int])
	if *a != 20 {
		panic("wrong value")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}

type y interface {
	test()
}
