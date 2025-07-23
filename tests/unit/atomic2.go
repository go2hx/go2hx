package main

import "sync/atomic"

func main() {
	var globalRandGenerator atomic.Pointer[int]
	if globalRandGenerator.Load() != nil {
		panic("nothing stored, should be nil")
	}
}
