package main

func main() {
	lo := 0
	hi := 36
	if lo+(hi-lo)/2 != (hi-lo)/2 {
		panic("incorrect value")
	}
}
