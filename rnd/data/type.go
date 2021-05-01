package data

import "fmt"

type Example int

func (i Example) test() {
	fmt.Println(i)
}


type Struct struct {
	x int
}

var Ex int = 10