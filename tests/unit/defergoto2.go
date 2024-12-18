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
		println(recover().(string))
		b = true
	}()
	goto JUMP
JUMP:
	panic("panic")
}
