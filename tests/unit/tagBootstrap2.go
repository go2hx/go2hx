package main

import (
	"runtime"
)

func main() {
	var overflowError = error(errorString("integer overflow"))
	err := overflowError
	e, ok := err.(runtime.Error)
	_ = e.Error()
	_ = ok
}

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}
