package main

import "reflect"

type http2goAwayFlowError struct{}

type http2goAwayFlowError2 struct{ c int }

func main() {
	var x struct{}
	var y struct{ c int }
	ts := reflect.TypeOf(x).String()
	if ts != "struct {}" {
		println(ts)
		panic("wrong type")
	}
	ts2 := reflect.TypeOf(y).String()
	if ts2 != "struct { c int }" {
		println(ts2)
		panic("wrong type2")
	}
	_ = x
}
