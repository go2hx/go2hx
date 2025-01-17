package main

import "github.com/go2hx/go4hx/tests/unit/lib"

func main() {
	if len(lib.Slice) != 1 {
		panic("wrong Slice len")
	}
	if lib.Slice[0] != 1 {
		panic("setVarInSlice not triggered")
	}
}
