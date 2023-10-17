package main

func main() {
	var s s
	if s.m[0] != 0 {
		panic("s.m[0] != 0")
	}
}

type s struct {
	m map[int]int
}
