package main

import "reflect"

var count = 0

func main() {
	str := "hello world"
	output := reflect.ValueOf(f).Call([]reflect.Value{reflect.ValueOf(str)})
	if len(output) != 1 {
		panic("len(output) != 1")
	}
	if output[0].Kind() != reflect.String {
		panic("output[0].Kind() != reflect.String")
	}
	if output[0].String() != str {
		panic("output[0].String() != str")
	}
	if count != 1 {
		panic("not called")
	}
}

func f(x string) string {
	count++
	println(x)
	return x
}
