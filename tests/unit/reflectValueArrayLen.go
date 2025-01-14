package main

import (
	"reflect"
)

func main() {
	x := [...]string{"hello", "world"}
	if reflect.ValueOf(x).Type().String() != "[2]string" {
		panic("wrong value")
	}
}
