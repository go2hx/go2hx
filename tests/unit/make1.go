package main

type intPairs map[struct {
	a, b int
}]int

func main() {
	d := make(intPairs, 10)
	_ = d
}
