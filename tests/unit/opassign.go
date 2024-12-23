package main

func main() {
	op().v += 2
	if s.v != 2 || count != 1 {
		println(s.v, count)
		panic("incorrect values")
	}
}

var count = 0
var s t

type t struct{ v int }

func op() *t {
	count++
	return &s
}
