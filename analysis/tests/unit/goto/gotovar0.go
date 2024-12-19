package main

func main() {
	x, y := 0, 1
	x, y = 10, 10
	goto LABEL
LABEL:
	println(x, y)
}
