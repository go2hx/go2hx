package main

import "strings"

func main() {
	f(0)
	f(0.0)
	f("hi")
}

func f(a any) {
	switch a := a.(type) {
	case string:
		println(len(strings.Split(a, "")))
	case int:
		println(a + 10)
	case float64:
		println("floatt64")
	}
	goto JUMP
JUMP:
}
