package main

func main() {
	var x [4]int = [4]int{}
	if x != [4]int{} {
		panic("PANIC!") // Trigger panic if array is not all zeroes
	}
}
