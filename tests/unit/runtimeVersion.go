package main

import (
	"os"
	"runtime"
)

func main() {
	b, err := os.ReadFile(".gorc")
	if err != nil {
		panic(err)
	}
	if runtime.Version() != "go"+string(b) {
		println(runtime.Version())
		println("go" + string(b))
		panic("version mismatch for runtime.Version()")
	}
}
