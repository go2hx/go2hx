package main

import "reflect"

func main() {
	type I1 interface{}
	type T struct {
		x int
	}
	type P *T
	p := P(nil)
	var i1 I1 = p

	m0 := make(map[interface{}]int)
	println(reflect.TypeOf(i1).Kind().String())
	m0[i1] = 42
	m0[17] = 42 // this should work: 17 is assignment-compatible with interface{}
}
