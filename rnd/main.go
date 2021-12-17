package main

import (
	"fmt"
	"math"

	"github.com/go2hx/go4hx/rnd/lib"
)

func main() {
	input := -2.7688005719200159e-01
	output := math.Ceil(input)
	expected := math.Copysign(0, -1)
	fmt.Println(output, expected)
	lib.Float64bits(output)
	lib.Float64bits(expected)
	fmt.Println(alike(output, expected))
}

func Signbit(x float64) bool {
	fmt.Println("float64bits:", math.Float64bits(x))
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
