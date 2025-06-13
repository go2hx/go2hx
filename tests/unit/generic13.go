package main

import "reflect"

func main() {
	Contains([]int{10})
	Contains([]float64{10.2})
}

// Contains reports whether v is present in s.

type T interface {
	int | float64
}

func Contains[J T, S []J](s S) bool {
	println(reflect.TypeOf(s).String())
	return true
}
