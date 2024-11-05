package main

import "fmt"

type int int32

func main() {
	var local_int int = 1
	var m int = -1
	fmt.Printf("local_int before the loop: %d\n", local_int)
	m = 15 - ((int)((uint32)(m)))
	fmt.Printf("m before the first loop: %d\n", m)
	for ; m < 15; m++ {
		local_int = 0
	}
	fmt.Printf("local_int after the first loop: %d\n", local_int)
}
