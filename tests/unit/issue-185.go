package main

import "fmt"

func funcA() { fmt.Println("Function A") }

func main() {
	f1 := funcA
	f2 := funcA

	p1 := &f1
	p2 := &f2

	println("Comparing p1 and p2:", func() string {
		if p1 == p2 {
			panic("Same function address (points to funcA)")
		}
		return "Different function address"
	}())

	var i1 interface{} = p1
	var i2 interface{} = p2

	println("Comparing i1 and i2:", func() string {
		if i1 == i2 {
			panic("Same function pointer (both point to funcA)")
		}
		return "Different function pointer"
	}())
}
