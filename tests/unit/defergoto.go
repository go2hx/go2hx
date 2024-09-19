package main

import (
	"os"
	"time"
)

var b = false

func main() {
	go func() {
		<-time.After(time.Second * 2)
		println("timeout")
		os.Exit(1)
	}()
	f()
	if !b {
		panic("defer not triggered")
	}
}

func f() {
	defer func() {
		b = true
	}()
	goto JUMP
	panic("did not jump")
JUMP:
}
