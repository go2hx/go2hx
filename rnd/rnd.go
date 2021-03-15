package main

import "fmt"

func main() {
	a1 := "the same value"
	p1 := &a1
	p3 := &a1
	a2 := "the same value"
	p2 := &a2
	fmt.Println(p1 == p2) // false in Go, true in go2hx
	fmt.Println(p1 == p3)
}