package main

import "sync/atomic"

func main() {
	var s *struct{}
	var ptr = atomic.Pointer[struct{}]{}
	println(ptr.CompareAndSwap(nil, s))
}
