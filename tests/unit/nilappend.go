package main

import "os"

type T struct{}

func main() {
	var e *T
	res := []T{}
	defer func() {
		r := recover()
		if r == nil {
			println("no panic")
			os.Exit(1)
		}
	}()
	res = append(res, *e)
}
