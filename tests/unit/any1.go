package main

import (
	"reflect"
)

func main() {
	a := [2]interface{}{1: "test", 0: 2}
	s := reflect.TypeOf(a[0]).String()
	if s != "int" {
		println(s)
		panic("wrong type")
	}
}
