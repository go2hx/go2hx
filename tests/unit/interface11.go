package main

func main() {
	var x X
	_ = x
	transfer(x)
}

type X int

func (X) test() {}

type Y interface {
	test()
}

func transfer(Y) {

}
