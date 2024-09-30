package main

import (
	"fmt"
	"runtime"
)

const (
	divZeroErrorStr  = "runtime error: integer divide by zero"
	overflowErrorStr = "runtime error: integer overflow"
)

func main() {
	defer func() {
		if err := recover(); err == nil {
			println("Div should have panicked when y<=hi")
		} else if e, ok := err.(runtime.Error); !ok || e.Error() != divZeroErrorStr {
			println(e)
			fmt.Printf("Div expected panic: %q, got: %q ", overflowError, e.Error())
		}
	}()

	q, r := uint64(2), uint64(0)
	_ = q / r
	_, _ = q, r
}

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}

var overflowError = error(errorString("integer overflow"))
var divideError = error(errorString("integer divide by zero"))
