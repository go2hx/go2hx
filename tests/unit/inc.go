package main

func main() {
	x := new(int)
	*x = 10
	(*x)++
	if *x != 11 {
		panic("invalid value")
	}
}
