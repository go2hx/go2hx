package main

import "fmt"

func main() {
	var ar [4]int
	for i := 0; i < 4; i++ { // change to 5 to fail
		ar[i] = i
	}
	//ar[-1] = 42 // will not compile in go

	sl := make([]int, 5)
	for i := 0; i < 5; i++ { // change to 6 to fail
		sl[i] = i
	}
	//sl[-1]=42 // will not compile in go

	sl2 := sl[1:3]
	for i := 0; i < 2; i++ { // change to 3 to fail
		sl2[i] = sl2[i] + 10
	}
	//sl2[-1]=42 // will not compile in go

	fmt.Println(ar, sl, sl2)
}