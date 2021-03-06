package main

import "fmt"

var ar3[3][2]int

type data struct {
	ar4 [1][2]int
}

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

	var ar2 [2][4]int

	fmt.Println(ar2)
	fmt.Println(ar3)
	d := data{}
	fmt.Println(d.ar4)
}