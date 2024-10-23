package main

func main() {
	x, y := func() int {
		return 0
	}, func() int {
		return 1
	}
	x, y = func() int {
		return 2
	}, func() int {
		return 3
	}
	goto LABEL
LABEL:
	println(x(), y())
}
