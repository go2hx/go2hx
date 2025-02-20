package main

import (
	"fmt"
	"reflect"
)

func main() {
	m := myHeap{0, 1, 2}
	value := m.Pop().(int)
	println(value)
	if value != 2 {
		panic(fmt.Sprint("incorrect value", value))
	}
}

type myHeap []int

func (h *myHeap) Pop() (v any) {
	*h, v = (*h)[:len(*h)-1], (*h)[len(*h)-1]
	t := reflect.TypeOf(v).String()
	if t != "int" {
		panic("incorrect type: " + t)
	}
	return
}
