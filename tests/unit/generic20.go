package main

import "reflect"

func main() {
	x := []int{10, 2}
	legal(x, 10)
}

func legal[J any](x []J, i J) {
	println(reflect.TypeOf(x[0]).String())
	println(reflect.TypeOf(x).String())
}
