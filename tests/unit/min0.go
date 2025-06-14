package main

import (
	"math"
)

func main() {
	if !math.IsNaN(min(-400.4, math.NaN())) {
		panic("not NaN value")
	}
	if !math.IsNaN(min(math.NaN(), -400.4)) {
		panic("not NaN value")
	}
}
