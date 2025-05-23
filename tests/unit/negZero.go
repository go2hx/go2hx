package main

import (
	"fmt"
	"math"
)

func main() {
	if fmt.Sprint(math.Max(math.Copysign(0, -1), 0)) != "0" {
		panic("invalid value")
	}
}
