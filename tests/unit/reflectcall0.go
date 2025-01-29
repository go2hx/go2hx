package main

import "reflect"

var count = 0

func main() {
	reflect.ValueOf(f).Call([]reflect.Value{reflect.ValueOf("hello world")})
	if count != 1 {
		panic("not called")
	}
}

func f(x string) {
	count++
	println(x)
}
