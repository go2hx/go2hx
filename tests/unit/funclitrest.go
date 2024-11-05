package main

func main() {
	f := func(args ...int) {
		args = append(args, 3)
	}
	f(0, 1, 2)
}
