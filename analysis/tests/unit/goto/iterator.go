package main

func main() {
	s := false
	println("pre-loop")
loop:
	for range []int{0, 1, 2} {
		println("pre-if")
		if s {
			println("break")
			break
		}
		s = true
		println("continue")
		continue loop
	}
	println("end")
}
