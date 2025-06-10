package main

func main() {
	add(10, 10, true)
}

func add[T int | string](x T, y T, double bool) T {
	if double {
		return x + y + add(x, y, false)
	} else {
		return x + y
	}
}
