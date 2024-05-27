package main

import (
	"math"
)

func main() {
	if math.Pow(-1, math.Inf(-1)) != 1 {
		panic("invalid value")
	}
	if math.Pow(-1, math.Inf(1)) != 1 {
		panic("invalid value")
	}
	if math.Pow(1, math.Inf(-1)) != 1 {
		panic("invalid value")
	}
	if math.Pow(1, math.Inf(1)) != 1 {
		panic("invalid value")
	}
	if !math.IsInf(math.Pow(0, math.Inf(-1)),1) {
		panic("invalid value")
	}
	if math.Pow(0, math.Inf(1)) != 0 {
		panic("invalid value")
	}
}
