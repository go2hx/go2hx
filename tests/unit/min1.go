package main

import (
	"fmt"
	"math"
	"slices"
)

func main() {
	fs := []float64{1.0, 999.9, 3.14, -400.4, -5.14}
	if slices.Min(fs) != -400.4 {
		panic(fmt.Sprintf("0 got min %v, want -400.4", slices.Min(fs)))
	}
	if slices.Max(fs) != 999.9 {
		panic(fmt.Sprintf("1 got max %v, want 999.9", slices.Max(fs)))
	}

	// No matter which element of fs is replaced with a NaN, both Min and Max
	// should propagate the NaN to their output.
	for i := 0; i < len(fs); i++ {
		testfs := slices.Clone(fs)
		testfs[i] = math.NaN()
		fmt.Println("i:", testfs)

		fmin := slices.Min(testfs)
		if !math.IsNaN(fmin) {
			panic(fmt.Sprintf("2 got min %v, want NaN", fmin))
		}

		fmax := slices.Max(testfs)
		if !math.IsNaN(fmax) {
			panic(fmt.Sprintf("3 got max %v, want NaN", fmax))
		}
	}
}
