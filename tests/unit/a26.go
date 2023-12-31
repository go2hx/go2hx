package main

func main() {
	a := [3]int{1, 2, 3}
	b := [3]int{1, 2, 3}
	if a != b {
		panic("invalid result")
	}
}
