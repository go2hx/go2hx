package main

import (
	"fmt"
)

func main() {
	array := []int{'\r','\t','\\'}
	for _,i := range array {
		fmt.Println(i)
	}
}