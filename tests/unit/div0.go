package main

func main() {
	x := int8(-128)
	y := int8(-1)
	if x/y != -128 {
		panic("incorrect value")
	}
}
