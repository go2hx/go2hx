package main

import (
	_ "fmt"
)


type T struct {
	int
}

func f() *T {
	return &T{1}
}

func main() {
	x := f()
	y := f()
	if x == y {
		panic("not allocating & composite literals")
	}
}
