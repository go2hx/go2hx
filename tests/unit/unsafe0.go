package main

import (
	"unsafe"
)

func main() {
	buf := "hello world"
	if *(*string)(unsafe.Pointer(&buf)) != buf {
		panic("wrong value")
	}
}