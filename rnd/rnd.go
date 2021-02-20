package main

import (
    "fmt"
)

func main() {
	i,e := test()
    _ = i
    _ = e
    fmt.Println(i,e)
}
func test() (int,error) {
    return -1, data{-1,"error"};
}

type data struct {
    int
    prob string
}

func (d *data) Error() string {
    return d.prob
}

type data2 struct {
    a int
    b int
    C int
}