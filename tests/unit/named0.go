package main

import "fmt"

type x complex128

func main() {
	var y x = 10
	z := -y
	fmt.Println(z)
}
