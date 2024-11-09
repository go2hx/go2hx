package main

import "runtime"

func main() {
	var a interface{} = func() {}
	var b interface{} = func() {}
	defer func() {
		e := recover().(runtime.Error)
		const want = "runtime error: comparing uncomparable type func()"
		if errValue := e.Error(); errValue != want {
			panic("error value mismatch got: " + errValue + " want: " + want)
		}
	}()
	println(a == b) // This should panic in Go as func comparison is illegal
	panic("interface func equality supposed to throw runtime panic")
}
