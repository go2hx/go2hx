package main

import (
	"fmt"

	"github.com/go2hx/go4hx/rnd/data"
)
func main() {
	data.Test()
	var i data.Example = 0
	fmt.Println(i)

	fmt.Println("ex:",data.Ex)

	s := data.Struct{}
	fmt.Println("s:",s)

	data.Test()
}