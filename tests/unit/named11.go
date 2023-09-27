package main

type int float32

func main() {
	var x int = 10.3
	switch any(x).(type) {
	case float32:
		panic("wrong type")
	default:

	}
}
