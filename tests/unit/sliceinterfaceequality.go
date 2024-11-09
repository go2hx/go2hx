package main

import "runtime"

func main() {
	var a interface{} = []int{1, 2, 3}
	var b interface{} = []int{1, 2, 3}
	_ = a
	_ = b
	defer func() {
		e := recover().(runtime.Error)
		const want = "runtime error: comparing uncomparable type []int"
		if errValue := e.Error(); errValue != want {
			panic("error value mismatch got: " + errValue + " want: " + want)
		}
	}()
	println(a == b) // This should panic in Go as slice comparison is illegal
	panic("interface slice equality supposed to throw runtime panic")
}
