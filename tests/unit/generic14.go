package main

import "reflect"

func main() {
	Contains([]int{10})
	Contains([]float64{10.2})
}

// Contains reports whether v is present in s.

func Contains[J int | float64, S []J](s S) bool {
	println(reflect.TypeOf(s).String())
	return true
}
