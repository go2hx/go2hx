package main

func main() {
	var s []int
	for i, j := range s {
		_, _ = i, j
	}
	var m map[string]int
	for i, j := range m {
		_, _ = i, j
	}
}
