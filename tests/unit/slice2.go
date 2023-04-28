package main

import "fmt"

func main() {
	value := []int{0, 1, 2}
	j := &value
	l := test(j)
	if j != l {
		panic("wrong value")
	}
	fmt.Printf("%10q\n", "⌘")
}

func test(j *[]int) *[]int {
	v := j
	*j = (*v)[0:1]
	return j
}
