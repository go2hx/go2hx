package main

import (
	"fmt"
	"math/bits"
	"runtime"
)

const (
	divZeroErrorStr  = "runtime error: integer divide by zero"
	overflowErrorStr = "runtime error: integer overflow"
)

func main() {
	runBits()
	runInternal()
}

func runBits() {
	defer func() {
		if err := recover(); err == nil {
			println("Div should have panicked when y<=hi")
		} else if e, ok := err.(runtime.Error); !ok || e.Error() != overflowErrorStr {
			fmt.Printf("Div expected panic: %q, got: %q ", overflowError, e)
			panic("issue0")
		}
	}()

	q, r := bits.Div(1, 0, 1)
	_, _ = q, r
}

func runInternal() {
	defer func() {
		if err := recover(); err == nil {
			println("Div should have panicked when y<=hi")
		} else if e, ok := err.(runtime.Error); !ok || e.Error() != overflowErrorStr {
			fmt.Printf("Div expected panic: %q, got: %q ", overflowError, e)
			panic("issue1")
		}
	}()
	panic(overflowError)
}

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}

var overflowError = error(errorString("integer overflow"))

var divideError = error(errorString("integer divide by zero"))
