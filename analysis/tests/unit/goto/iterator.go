package main

func main() {
	s := false
loop:
	for range []int{0, 1, 2} {
		if s {
			break
		}
		s = true
		continue loop
	}
}
