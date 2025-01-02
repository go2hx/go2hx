package main

import (
	"os"
)

func main() {
	defer func() {
		r := recover()
		if r != "new issue" {
			println("panic from defer not caught")
			os.Exit(1)
		}
	}()
	defer func() {
		r := recover()
		if r == "new issue" {
			println("defer rerun after current defer panic")
			os.Exit(1)
		}
		if r == nil {
			panic("new issue")
		}
	}()
}
