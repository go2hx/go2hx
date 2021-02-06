package main

import "fmt"

func main() {
	data := append([]int{0, 1}, make([]int, 2)...)
	fmt.Println(data)
}