package main

import "reflect"

type s struct {
	x int
	y int
}

func main() {
	x := s{0, 1}
	y := &x
	value := reflect.ValueOf(y)
	value.Elem().Set(reflect.ValueOf(s{1, 1}))
	if y.x != 1 {
		panic("wrong value")
	}
	y.x = 20
	if value.Elem().Interface().(s).x != 20 {
		panic("wrong value")
	}
}
