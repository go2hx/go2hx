package main

import (
	"fmt"
)
var a = []int{1,2,3}
var b interface{} = a
func main() {
	

	fmt.Println(b)
}