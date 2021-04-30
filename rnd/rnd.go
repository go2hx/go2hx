package main

import "fmt"

func main() {
	var x NonStructT = 42
	var i interface{} = x
	fmt.Println(i)
}

type NonStructT uint8

func (nst NonStructT) String() string {
	return "NonStructT-int"
}