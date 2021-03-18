package main

import "fmt"

var a = []string{"", "the same value", "the same value"}

func main() {
	p1 := &a[1]
	P1 := 0
	p3 := &a[2]
	fmt.Println(p1 == P2(&a), P2(&a) == p3,P1) // Go=false,true go2hx=false,false
}

func P2(b *[]string) *string {
	return &(*b)[2]
}