package main

type x complex128

func main() {
	var y x = 10
	z := -y
	if z != -10-0i {
		panic("wrong value")
	}
}
