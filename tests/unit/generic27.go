package main

func main() {
	f(10)
}

func f[T any](a T) {
	_ = any(a)
}
