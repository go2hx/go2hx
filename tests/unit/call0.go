package main

type MyFunc func()

type t int

func main() {
	_ = MyFunc(nil)
	_ = (MyFunc)(nil)
	_ = (t)(0)
	(j)(0)
}

func j(i int) {}
