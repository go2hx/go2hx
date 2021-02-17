package main

import (
	"fmt"
)

func main() {
	d := data{0,10,20,data2{0,0,0},10}
    d.test()
    fmt.Println(d)
}

type data struct {
    x int
    y int
    Z int
    data2
    int
}

type data2 struct {
    a int
    b int
    C int
}

func (d *data) test() {
    d.x = 300
}