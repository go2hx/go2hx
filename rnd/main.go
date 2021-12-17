package main

import (
	"fmt"
	"math"
)

func main() {
	input := -2.7688005719200159e-01
	output := math.Ceil(input)
	expected := math.Copysign(0, -1)
	fmt.Println(alike(output, expected))
}

func Signbit(x float64) bool {
	fmt.Println(math.Float64bits(x))
	return math.Float64bits(x)&(1<<63) != 0
}

func alike(a, b float64) bool {
	switch {
	case math.IsNaN(a) && math.IsNaN(b):
		return true
	case a == b:
		return Signbit(a) == Signbit(b)
	}
	return false
}
