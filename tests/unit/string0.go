package main

func main() {
	b := "[:lower:b"
	a := "[:lower:c"
	if !(b < a) {
		panic("issue")
	}
}
