package main

func main() {
	m0 := make(map[interface{}]int)
	m0[new(T)] = 42
	m0[17] = 42
}

type T struct{}
