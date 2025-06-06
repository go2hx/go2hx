package main

func main() {
	x := load([]int{10})
	println(x)
}

func load[T any](x []T) T {
	return *new(T)
}
