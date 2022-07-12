package main

import (
	"reflect"
)

func main() {
	x := 1.4i + 10
	if reflect.TypeOf(x).Kind() != reflect.Complex128 {
		panic("wrong result")
	}
	if real(x) != 10 {
		panic("wrong result")
	}
	if imag(x) != 1.4 {
		panic("wrong result")
	}
	if x != 1.4i+10 {
		panic("wrong result")
	}
}
