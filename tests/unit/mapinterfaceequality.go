package main

import "runtime"

func main() {
	var a interface{} = map[int]int{1: 0, 2: 0, 3: 0}
	var b interface{} = map[int]int{1: 0, 2: 0, 3: 0}
	defer func() {
		e := recover().(runtime.Error)
		const want = "runtime error: comparing uncomparable type map[int]int"
		if errValue := e.Error(); errValue != want {
			panic("error value mismatch got: " + errValue + " want: " + want)
		}
	}()
	println(a == b) // This should panic in Go as map comparison is illegal
	panic("interface map equality supposed to throw runtime panic")
}
