package main

func main() {
	var z X[int] = 10
	z.test()
	if z != 20 {
		panic("not set")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}
