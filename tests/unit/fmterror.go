package main

import "fmt"

func main() {
	e := fmt.Errorf("unwritable").Error()
	println(e, e == "unwritable")
}
