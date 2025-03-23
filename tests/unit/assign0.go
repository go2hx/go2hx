package main

func main() {
	f()[0]++
	if i != 1 {
		panic("incorrect number of calls of f")
	}
	f()[1] += 2
	if i != 2 {
		panic("incorrect number of calls of f")
	}
	if a[0] != 1 {
		panic("wrong value a[0]")
	}
	if a[1] != 3 {
		panic("wrong value a[1]")
	}
	if a[2] != 2 {
		panic("wrong value a[2]")
	}
}

var a = []int{0, 1, 2}
var i int

func f() []int {
	i++
	return a
}
