package main

func main() {
	switch x() {
	case 0:
		panic("wrong value")
	case 1:
		return
	}
	panic("x call expr called to many times")
}

var i = 0

func x() int {
	i++
	return i
}
