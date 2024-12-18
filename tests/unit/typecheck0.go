package main

import (
	"reflect"
)

func main() {
	var a [2]int
	var b [2]any

	typeA := reflect.TypeOf(a)
	typeB := reflect.TypeOf(b)

	println("Type of a:", typeA.String()) // Output: Type of a: [2]int
	println("Type of b:", typeB.String()) // Output: Type of b: [2]any

	if typeA == typeB {
		panic("a and b have identical types.")
	} else {
		println("a and b do not have types")
	}
}
