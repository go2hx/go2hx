package main

import (
	"fmt"
)

func main() {
	array := []int{'\v','\xFE','\u0123','\U0010FFFF'}
	for _,i := range array {
		fmt.Println(i)
	}
}