package main

import (
	"fmt"
)

func main() {
	d := data{}
    fmt.Println(d)
}

type data struct {
    data2
    int
    x int
    y int
    Z int
}

type data2 struct {
    a int
    b int
    C int
}
