package main

func main() {
	var x *X
	y(x)
}

type X int

func (X) M() {}

type Y interface {
	M()
}

func x() (x *X) {
	return
}

func y(y Y) {}
