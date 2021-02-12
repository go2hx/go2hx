package main

import (
	"fmt"
	_ "fmt"
)


type T struct {
	int
}

func f() *T {
	return &T{1}
}

func main() {
	var (
		five = 5
		four = 4
		six = "hi"
	)
	fmt.Println("four:",four,"five:",five)
}
