package main

import (
	"fmt"
)

func main() {
	var g func() int
	q := 0
	for range [2]int{} {
		q++
		g = func() int {
			return q // test that we capture by ref here
			// q++ must on a different decldepth than q declaration
		}
	}
	if g() != 2 {
		panic("g() != 2")
	}
	fmt.Println("end!")
}