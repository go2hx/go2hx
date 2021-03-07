package main

import "fmt"

func main() {
	sl := make([]int, 5)
	for i := 0; i < 5; i++ {
		sl[i] = i
	}

	sl2 := sl[1:3]

	ptr := &sl2[0]
	fmt.Println("*ptr should be 1=", *ptr, " sl2=", sl2) // correct 

	sl2 = sl[3:5]
	fmt.Println("*ptr should still be 1=", *ptr, " sl2=", sl2) // actually prints 3
}