package main

import "fmt"

func main() {
	test()
}

func test() {
	{
		x := S{"foo", fmt.Sprintf("%d", 10), "bar"}
		fmt.Println(x)
	}
}

type S struct {
	X string
	Y string
	Z string
}